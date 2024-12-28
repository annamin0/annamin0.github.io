#!/bin/bash

# 获取最近一次提交的时间
LAST_COMMIT_TIME=$(git log -1 --format=%cd --date=format:'%Y-%m-%d %H:%M:%S')

# 文件路径和占位符
HTML_FILE="$(dirname "$0")/index.html"
PLACEHOLDER="Last updated: .*"
NEW_TEXT="Last updated: $LAST_COMMIT_TIME"

# 检查占位符是否存在并替换
if grep -q "$PLACEHOLDER" "$HTML_FILE"; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i.bak "s|$PLACEHOLDER|$NEW_TEXT|" "$HTML_FILE"
  else
    sed -i "s|$PLACEHOLDER|$NEW_TEXT|" "$HTML_FILE"
  fi
  rm -f "${HTML_FILE}.bak"
  echo "Updated last commit time in $HTML_FILE to: $NEW_TEXT"
else
  echo "Placeholder not found in $HTML_FILE. No changes made."
fi
