# Git changes action

This GitHub Action:

* Show pending changes in a Git repository: uncommited files and pending
  modifications.

  ![untracked files](/doc/status.png)

* Fail the step if there are any pending changes.

  ![modified files](/doc/diff.png)

This can be used to verify that the content of a Git repository didn't change
after a set of steps.

To use this GitHub Action:

```yaml
      - name: Check Git changes
        uses: camunda-cloud/git-changes-action@v1
```
