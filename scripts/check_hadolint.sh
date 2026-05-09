#!/bin/sh
find .. -type f -name 'Dockerfile*' -exec hadolint {} +
