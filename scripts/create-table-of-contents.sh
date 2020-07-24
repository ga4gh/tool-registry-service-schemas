#!/usr/bin/env bash
set -e
set -u
set -x
set -o pipefail
FILENAME="TableOfContents.md"
GIT_REPO="https://github.com/ga4gh/tool-registry-service-schemas.git"

function createLinks {
  SWAGGER_FILE="preview/$1/docs/web_deploy/swagger.json"
  if test -f "$SWAGGER_FILE"; then
    echo "[swagger-ui](swagger-ui?url=../$SWAGGER_FILE)"
  fi
  HTML_FILE="preview/$1/docs/html5/index.html"
  if test -f "$HTML_FILE"; then
    echo "[html5]($HTML_FILE)"
  fi
  PDF_FILE="preview/$1/docs/pdf/index.pdf"
  if test -f "$PDF_FILE"; then
    echo "[pdf]($PDF_FILE)"
  fi
  REDOC_FILE="preview/$1/docs/index.html"
  if test -f "$REDOC_FILE"; then
    echo "[ReDoc]($REDOC_FILE)"
  fi
}

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
  createLinks develop
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
		  createLinks $branch
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
		  createLinks $branch
	        } >> $FILENAME
	fi
done


