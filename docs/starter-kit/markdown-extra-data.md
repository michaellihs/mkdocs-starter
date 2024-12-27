# Markdown Extra Data

Markdown Extra Data is a Markdown extension that allows for the usage of variables in your Markdown files.

## Define Variables

Variables can be defined in yaml files that are stored in the `data` directory in the root of the repository.
This directory is configured in your `mkdocs.yaml` file:

```yaml
plugins:
  - markdownextradata:
      data: data
```

Within a `.yaml` file in the `data` directory, you can define your variables as yaml maps:

```yaml
key1: value1
key2: value2
```

## Use Variables

Variables can be used in Markdown files with the &#123;&#123; FILE.KEY  &#125;&#125;

syntax.

So if you have a file `data/vars1.yaml` and this file contains a map

```yaml
key: 'value-1'
```

you can reference this value with  &#123;&#123; vars1.key &#125;&#125;  in your markdown file.
