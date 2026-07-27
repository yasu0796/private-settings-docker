#!/bin/sh
# Run shellcheck on every shell script under the repository tree.

# exclude SC1091 for env file
find .. \( -name '.vscode' -o -name 'node_modules' \) -prune -o -type f -name '*.sh' -exec shellcheck -e SC1091 {} +
