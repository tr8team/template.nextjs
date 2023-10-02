#!/usr/bin/env bash

set -eou pipefail

bun install

bun test --coverage
