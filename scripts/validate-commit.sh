#!/bin/bash

MSG=$(cat "$1")

echo "$MSG" | grep -qE "^(feat|fix|chore):" || {
  echo "❌ Invalid commit message."
  echo "Allowed format: feat:, fix:, chore:"
  exit 1
}
