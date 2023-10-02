#!/usr/bin/env bash

set -eou pipefail
bun install
pre-commit run --all
