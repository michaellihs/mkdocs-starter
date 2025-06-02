#!/usr/bin/env bash

set -euo pipefail

if [[ "$OSTYPE" == "darwin"* ]]; then
  # make sure we get a GNU sed and grep on a mac
  # system sed and grep are not compatible with some flags we need
  # install gnu grep and gnu sed via `brew install grep sed coreutils`
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$(brew --prefix grep)/libexec/gnubin:$(brew --prefix gsed)/libexec/gnubin:$PATH"
fi

mkdir -p site/assets/diagrams
for file in $(find site -name "*.html"); do
  echo "working on file: $file"

  DIAGRAM_RELATIVE_PATH=$(realpath --relative-to="$(dirname $file)" site/assets/diagrams)
  echo "relative path $DIAGRAM_RELATIVE_PATH"

  while read -r url; do
    echo "working on diagram $url"
    DIAGRAM_HASH=$(echo -n "$url" | sha256sum | cut -d ' ' -f1)
    DIAGRAM_FILE="site/assets/diagrams/$DIAGRAM_HASH.svg"
    echo "request url for local kroki rendering: $url"
    curl --silent --fail --show-error "$url" -o "$DIAGRAM_FILE" || echo "Failed to render diagram"
    sed -i "s|$url|$DIAGRAM_RELATIVE_PATH/$DIAGRAM_HASH.svg|g" $file
  done < <(grep -oP 'https?://localhost:8001/[^"]+' $file)
done
