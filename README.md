# 44jfk.com

Cloudflare Pages hosts the public site from this GitHub repository. The members application lives in the private webmaster4488/digamma-members repository and the existing digamma-members Cloudflare Pages project.

## Build and publish

Cloudflare production branch is main. Use build command `sh tools/build.sh` and output directory `dist`. The build includes only public website assets. Cloudflare creates a preview for each branch and publishes main to the custom domains after a merge.

Run `sh tools/build.sh` locally, then serve dist with `python3 -m http.server 8080 --directory dist`.

## Work from notes

Open an issue using the Site task template. Once Claude authentication is configured and CLAUDE_TASKS_ENABLED is true, comment `@claude Implement this issue and prepare a pull request with verification steps.` Review the Cloudflare preview and passing checks before merging. Codex can provide a second review.

## Recovery

Use the Cloudflare Pages deployment history to roll back to a previous successful production deployment, then revert the corresponding change in GitHub. Check the homepage, visitor page and members sign-in link. The Verify public deployment workflow can be run manually from GitHub Actions.
