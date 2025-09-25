#!/usr/bin/env bash
set -euo pipefail

echo "== Present working directory =="
pwd

echo
echo "== Current user =="
whoami

echo
echo "== Memory resources available =="

# Try 'free -h' first, fallback to /proc/meminfo
if command -v free >/dev/null 2>&1; then
    free -h
else
    echo "free not found, showing from /proc/meminfo:"
    grep -E 'MemTotal|MemFree|MemAvailable' /proc/meminfo
fi

echo
echo "== Disk space available =="

# Try 'df -h' first, fallback to lsblk
if command -v df >/dev/null 2>&1; then
    df -h
else
    echo "df not found, showing from lsblk:"
    lsblk
fi

echo
echo "== Files in current directory =="
ls -la

echo
echo "== Contents of this script (script.sh) =="
cat "$0"
