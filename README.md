# java-github-actions-demo

Demo of using NightVision in GitHub Actions, using a [vulnerable Java Spring application](https://github.com/vulnerable-apps/javaspringvulny/).

# Setup for our developers

1. Copy the `./github/workflows/javaspringvulny.yml` file into your repo at the same path
2. In your local environment, run `nightvision token` and copy the hash
3. In GitHub Actions Secrets, create a New Secret titled `NIGHTVISION_TOKEN` and paste the hash from Step 2

## Optional: Use this test case a different environment

If you want to use an environment other than production, you have two options:

1. GitHub Actions secrets: This will apply to the entire repository

Go to GitHub Actions Secrets, create a New Secret titled `NIGHTVISION_API_URL` and paste the URL of the environment you want to use. For example, if you want to use the staging environment, you would paste `https://api.staging.nightvision.net/api/v1`. 

2. Workflow file: This will apply to only this workflow

Above the `jobs:` line, add the following:

```yaml
env:
  NIGHTVISION_API_URL: https://api.staging.nightvision.net/api/v1
```
