#!/usr/bin/env bash
set -euo pipefail

echo "== Present working directory =="
pwd

echo
echo "== Current user =="
whoami

echo
echo "== Memory resources available =="
free -h

echo
echo "== Disk space available =="
df -h

echo
echo "== Files in current directory =="
ls -la

echo
echo "== Contents of this script (script.sh) =="
cat "$0"
