#!/bin/sh -l

echo "Hello $1"
time=$(python3 /python_entrypoint.py)
echo "time=$time" >> $GITHUB_OUTPUT
