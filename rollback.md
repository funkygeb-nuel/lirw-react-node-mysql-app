# Rollback Strategy

## Automatic Rollback (CodeDeploy)

CodeDeploy is configured to automatically roll back to the last 
successful deployment if:
- Any deployment lifecycle hook fails
- CloudWatch alarm thresholds are breached

No manual intervention needed — AWS handles it automatically.

## Manual Rollback via Git

If a bad commit reaches production:

**Option 1 — Revert the bad commit:**
```bash
git revert HEAD
git push origin main
```
This creates a new commit that undoes the bad one and triggers 
the pipeline to redeploy the previous working state.

**Option 2 — Roll back to a specific version tag:**
```bash
git checkout v1.0.0
git checkout -b hotfix/rollback-to-v1.0.0
git push origin hotfix/rollback-to-v1.0.0
```
Then open a pull request from the hotfix branch into main.

## Manual Rollback via CodeDeploy Console

1. Go to CodeDeploy → Deployments
2. Find the last successful deployment
3. Click **Redeploy**

This redeployes the exact artifact from that successful run 
without touching the codebase.

## Prevention

- Branch protection on `main` prevents direct pushes
- All changes go through pull requests
- CodeBuild runs tests before deployment
- Staging environment validates before production