#!/bin/bash

LAST_COMMIT_TIME=$(git log -1 --format=%cd --date=iso)

HTML_FILE="index.html"  
PLACEHOLDER="Last updated Dec. 2023" 
NEW_TEXT="Last updated: $LAST_COMMIT_TIME"

sed -i.bak "s|$PLACEHOLDER|$NEW_TEXT|" "$HTML_FILE"

rm -f "${HTML_FILE}.bak"

echo "Updated last commit time in $HTML_FILE to: $NEW_TEXT"