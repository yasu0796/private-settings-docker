#!/bin/sh
find .. -name '.vscode' -prune -o -type f -name 'Dockerfile*' -exec hadolint {} +
