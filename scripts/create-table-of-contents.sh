#!/usr/bin/env bash
set -e
set -u
set -x
set -o pipefail
FILENAME="TableOfContents.md"
# Remove index.md if it exists
[ -e $FILENAME ] && rm $FILENAME

# Create the Jekyll header
{
  echo "---"
  echo "layout: page"
  echo "title: Table of Contents"
  echo "---"
  echo "### Table of Contents"
  echo "#### Latest V2 API release from the \`develop\` branch:"
  echo "[swagger-ui](preview/develop/docs/web_deploy/swagger-ui)"
  echo "[html5](preview/develop/docs/html5)"
  echo "[pdf](preview/develop/docs/pdf/index.pdf)"
} >> $FILENAME

# Loop through Git branches and add links
for branch in $(git branch | cut -c 3-);
do
	if [[ $branch != 'gh-pages' && $branch != 'develop' ]];
	then
		{ 
		  echo "#### Other branches:"
		  echo "$branch: "
		  echo "[swagger-ui](preview/$branch/docs/web_deploy/swagger-ui)"
		  echo "[html5](preview/$branch/docs/html5)"
		  echo "[pdf](preview/$branch/docs/pdf/index.pdf)"
	        } >> $FILENAME
	fi
done

