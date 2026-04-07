#!/bin/bash
cd /c/agente

# Add any changes
git add -A

# Only commit and push if there are changes
if git diff --cached --quiet; then
    echo "No changes to push"
else
    git commit -m "Auto push $(date '+%Y-%m-%d %H:%M')"
    git push origin master
fi
