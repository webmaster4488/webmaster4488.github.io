# 44jfk.com

Open a GitHub issue using the Site task template. After Claude is enabled, comment `@claude Implement this issue and prepare a pull request with verification steps.`

Download the public-site-preview artifact from the pull request check. Unzip it, run `python3 -m http.server 8080` in its root, and open http://localhost:8080. Ask Codex to review the pull request before merging when a second review is useful.

GitHub Pages publishes using its existing settings. Check the Pages deployment and Verify public deployment in Actions. To roll back, revert the pull request and verify the resulting Pages deployment.

Install the Claude GitHub App on this repository, set the Actions secret `ANTHROPIC_API_KEY`, and set the Actions variable `CLAUDE_TASKS_ENABLED` to `true` after merging the workflow. Enable Codex Code Review separately for reviews in GitHub.
