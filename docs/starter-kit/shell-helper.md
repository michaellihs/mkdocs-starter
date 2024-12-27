# Shell Helper

This repository contains a `./do` script that follows the idea of the [Go Script](https://www.thoughtworks.com/en-de/insights/blog/praise-go-script-part-i).

It comes with a single command to start a local mkdocs server that provides a preview of the documentation:

```bash
./do serve
```

If you simply run `./do` without a task, you will get a simple documentation of the tasks in the script.

## Extend the `./do` script

It is easily possible to add your own tasks to the `./do` script - all you have to do is:

1. Create a bash function that follows the naming schema `task_YOUR_TASK_NAME`, like

    ```bash
    function task_sample_task() {
      # ...
    }
    ```

2. Above this function add a comment that follows the syntax `## TASK_NAME: <DESCRIPTION>`, like

    ```bash
    ## sample-task: ...
    ```

Mind that `task_sample_task` in the function name becomes `sample-task` in the comment (`_` turns into `-`).
