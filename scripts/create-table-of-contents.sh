#!/usr/bin/env bash
set -e
set -u
set -x
set -o pipefail

# Remove index.md if it exists
[ -e index.md ] && rm index.md

# Create the Jekyll header
{
  echo "---"
  echo "layout: page"
  echo "title: Table of Contents"
  echo "---"
  echo "### Table of Contents"
  echo "#### Latest API release from the \`master\` branch:"
  echo "[swagger-ui](preview/master/docs/web_deploy/swagger-ui)"
  echo "[html5](preview/master/docs/html5)"
  echo "[pdf](preview/matser/docs/pdf/index.pdf)"
} >> index.md

# Loop through Git branches and add links
for branch in $(git branch | cut -c 3-);
do
	if [[ $branch != 'gh-pages' && $branch != 'master' ]];
	then
		{ 
		  echo "#### Other branches:"
		  echo "$branch: "
		  echo "[swagger-ui](preview/$branch/docs/web_deploy/swagger-ui)"
		  echo "[html5](preview/$branch/docs/html5)"
		  echo "[pdf](preview/$branch/docs/pdf/index.pdf)"
	        } >> index.md
	fi
done

