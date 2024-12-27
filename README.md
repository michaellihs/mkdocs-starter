# mkdocs Starter Kit

This repo provides a pre-configured [mkdocs](https://www.mkdocs.org/) for rendering documentation as code from markdown files. It comes with

- an opinionated set of plugins
- an opinionated configuration
- developer tools for linting and code checks
- a GitHub workflow to publish the rendered documentation as GitHub pages

Here cou can find the [User Documentation](https://michaellihs.github.io/mkdocs-starter).

## Prerequisites

These are the prerequisites for working with this repository:

- Python

## Getting started

1. Create a virtual Python environment to not mess up your system installation of Python

   ```bash
   python3 -m venv .venv && source ./.venv/bin/activate
   ```

2. Install Python dependencies

   ```bash
   pip install -r requirements.txt
   ```

3. Install `pre-commit`

   ```bash
   brew install pre-commit
   pre-commit install
   ```

4. Time to spin up `mkdocs`

   ```bash
   mkdocs serve
   ```

   This will start a local webserver at [http://127.0.0.1:8000/](http://127.0.0.1:8000/) that shows your documentation.
