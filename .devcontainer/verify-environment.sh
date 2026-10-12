#!/usr/bin/env bash
set -euo pipefail

echo "=== UniversalEngines Codespace Verification ==="
printf 'Node: '; node --version
printf 'npm: '; npm --version
printf 'Python: '; python3 --version
printf 'Git: '; git --version
printf 'g++: '; g++ --version | head -n 1
printf 'gh: '; gh --version | head -n 1

echo
if [ -f package.json ]; then
  echo "package.json detected; dependency installation remains phase-controlled."
else
  echo "No package.json yet: correct for pre-Phase-0 repository state."
fi

echo "Codespace environment ready for UniversalEngines phase-gated implementation."
