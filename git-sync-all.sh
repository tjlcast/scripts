#!/bin/bash

branches=$(git branch --format="%(refname:short)")

for branch in $branches; do
    git checkout $branch;
    echo "Pushing $branch to remote origin..."
    git push origin $branch
done

echo "All branches have been pushed to remote origin."

echo "And back to dev."
git checkout dev

