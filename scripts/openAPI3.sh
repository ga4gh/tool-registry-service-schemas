#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

if ! git diff --exit-code openapi/openapi.yaml
  then
    git diff openapi/openapi.yaml
    openssl aes-256-cbc -K $encrypted_f356a5c69655_key -iv $encrypted_f356a5c69655_iv -in github_deploy_key.enc -out github_deploy_key -d
    eval "$(ssh-agent)"
    chmod 600 github_deploy_key
    ssh-add github_deploy_key
    git add openapi/openapi.yaml
    git commit -m "OpenAPI changed"
    echo "Pushing changes"
    git push git@github.com:"${TRAVIS_REPO_SLUG}" ${TRAVIS_BRANCH}
fi

