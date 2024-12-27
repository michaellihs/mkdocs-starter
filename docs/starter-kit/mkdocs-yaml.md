# mkdocs.yaml

The `mkdocs.yaml` in the root of this repository is the main configuration file for mkdocs. The starter kit comes with the following
plugins and default settings:

- it uses the [material theme for mkdocs](https://squidfunk.github.io/mkdocs-material/)
- it uses the `nav` section that allows you to define the page order and navigation structure
- it uses [markdownextradata](https://github.com/rosscdh/mkdocs-markdownextradata-plugin) that allows to [configure variables](markdown-extra-data.md) in your markdown files

## Exclude Files from rendering

If you want to exclude files from rendering, you can do so via

```yaml
exclude_docs: |
  - excluded-doc.md
```
