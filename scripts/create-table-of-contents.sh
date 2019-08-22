#!/usr/bin/env bash
set -e
set -u
set -x
set -o pipefail
FILENAME="TableOfContents.md"
GIT_REPO="https://github.com/ga4gh/tool-registry-service-schemas.git"
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

{
  echo ""
  echo "#### Tags: "
} >> $FILENAME

# Loop through Git tags and add links
for branch in $(git tag --sort=-committerdate | cut -d "/" -f 2-);
do
		{ 
		  echo ""
		  echo "$branch: "
		  echo "[swagger-ui](preview/$branch/docs/web_deploy/swagger-ui)"
		  echo "[html5](preview/$branch/docs/html5)"
		  echo "[pdf](preview/$branch/docs/pdf/index.pdf)"
	        } >> $FILENAME
done

{
  echo ""
  echo "#### Other branches:"
} >> $FILENAME

# Loop through Git branches and add links
for branch in $(git ls-remote --heads $GIT_REPO | cut -d "/" -f 3-);
do
	if [[ $branch != 'gh-pages' && $branch != 'develop' ]];
	then
		{ 
		  echo ""
		  echo "$branch: "
		  echo "[swagger-ui](preview/$branch/docs/web_deploy/swagger-ui)"
		  echo "[html5](preview/$branch/docs/html5)"
		  echo "[pdf](preview/$branch/docs/pdf/index.pdf)"
	        } >> $FILENAME
	fi
done

