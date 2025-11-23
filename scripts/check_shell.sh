#!/bin/sh
# Run shellcheck on every shell script under the repository tree.
find .. -type f -name '*.sh' -exec shellcheck {} +
