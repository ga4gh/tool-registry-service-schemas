#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
set -u
BRANCH=$(echo "${GITHUB_REF##*/}" | awk '{print tolower($0)}')
BRANCH_PATH="preview/$BRANCH"
mv preview preview2
git config --replace-all remote.origin.fetch +refs/heads/*:refs/remotes/origin/*
git fetch --deepen=50000
git checkout gh-pages
rm -rf preview
mv preview2 preview
git status
# looks like github automatically does not make secrets available to forks https://docs.github.com/en/actions/reference/encrypted-secrets
if [[ -n "$(git status --porcelain "${BRANCH_PATH}")" ]]; then
  bash scripts/create-table-of-contents.sh
  bash scripts/remove-docs-for-deleted-branches.sh
  git add preview
  git add TableOfContents.md
  git commit -m "Docs changed for "${GITHUB_REF##*/}""
  git push git@github.com:"${GITHUB_REPOSITORY}" gh-pages
else
  echo "No changes"
fi
