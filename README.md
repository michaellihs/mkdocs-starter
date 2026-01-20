# mkdocs Starter Kit

This repo provides a pre-configured [mkdocs](https://www.mkdocs.org/) for rendering documentation as code from markdown files. It comes with

- an opinionated set of plugins
- an opinionated configuration
- developer tools for linting and code checks
- a GitHub workflow to publish the rendered documentation as GitHub pages

Here cou can find the [User Documentation](https://michaellihs.github.io/mkdocs-starter) of this starter kit.

## Prerequisites

These are the prerequisites for working with this repository:

- Python
- `uv`

## Getting started

1. If you don't have `uv` installed

   ```bash
   brew install uv
   ```

2. Create a virtual Python environment to not mess up your system installation of Python

   ```bash
   uv venv --python 3.13 && source .venv/bin/activate
   ```

3. Install Python dependencies

   ```bash
   uv pip install -r requirements.txt
   ```

4. Install `pre-commit`

   ```bash
   brew install pre-commit
   pre-commit install
   ```

5. Time to spin up `mkdocs`

   ```bash
   mkdocs serve
   ```

   This will start a local webserver at [http://127.0.0.1:8000/](http://127.0.0.1:8000/) that shows your documentation.

## Setting up GitHub Pages

When you see this error message in the workflow:

```text
Error: Creating Pages deployment failed
Error: HttpError: Not Found
```

then you have to go to the `Settings / Pages` of the repo, and for "Build and Deployment", select "GitHub Actions".
