#!/bin/bash

set -euo pipefail

script_dir="$(cd "$(dirname "${0}")"; pwd -P)"

function info() {
    date_time="$(date +%F) $(date +%T)"
    level="INFO"
    >&2 echo -e "\033[0;34m$date_time \033[0;35m[$level] \033[0;32m$1\033[0m"
}

function debug() {
    date_time="$(date +%F) $(date +%T)"
    level="DEBUG"
    >&2 echo -e "\033[0;34m$date_time \033[0;35m[$level] \033[0;32m$1\033[0m"
}

function error() {
    date_time="$(date +%F) $(date +%T)"
    level="ERROR"
    >&2 echo -e "\033[0;34m$date_time \033[0;31m[$level] \033[0;32m$1\033[0m"
}



function task_usage() {
	echo "Usage: $0"
	sed -n 's/^##//p' <"$0" | column -t -s ':' | sed -E $'s/^/\t/' | sort
}

function check_mkdocs() {
    if ! command -v mkdocs &> /dev/null
    then
        error "'mkdocs' could not be found"
        info "most likely you have to setup your local Python / mkdocs environment"
        exit 1
    fi
}

## serve: start the mkdocs server locally
function task_serve {
    # todo: check whether mkdocs comes from .venv/bin
    if ! command -v mkdocs &> /dev/null
    then
        info "Setting up Python environment..."
        python3 -m venv .venv && source ./.venv/bin/activate
        pip install -r requirements.txt
    fi
    info "Starting mkdocs..."
    check_mkdocs
    mkdocs serve
}

cmd=${1:-}
shift || true
resolved_command=$(echo "task_${cmd}" | sed 's/-/_/g')
if [[ "$(LC_ALL=C type -t "${resolved_command}")" == "function" ]]; then
	pushd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null
	${resolved_command} "$@"
else
	task_usage && exit 1
fi
