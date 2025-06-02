# Getting started

To customize this starter kit for you documentation project, follow these steps.

## 1. Make changes to `mkdocs.yaml`

`mkdocs.yaml` is the main configuration file for this repo. Start making it yours by chaning the following settings:

```yaml
site_name: mkdocs Starter Kit                               # replace with your title
repo_name: mkdocs-starter                                   # replace with your repo name
repo_url: https://github.com/michaellihs/mkdocs-starter     # replace with your repo
```

## 2. Create your first page

1. Add a new page

    Create a file inside the `docs` folder of the repository.

2. Add a file to the navigation structure

    Within the `mkdocs.yaml` (in the root of this repository) add the file in the `nav` section:

    ```yaml
    nav:
      - '🏠 Home': 'index.md'
      - '<TITLE IN NAVIGATION>': '<FILENAME>'
    ```

3. Start the mkdocs server locally

    From the root of this repository, run

    ```bash
    ./do serve
    ```

    the rendered docs are now available at [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
