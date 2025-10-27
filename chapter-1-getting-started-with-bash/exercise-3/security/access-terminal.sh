#!/usr/bin/env bash
# This script should interact with the operator.
# It currently does not prompt or respond.

# TODO:
# 1. Ask the user to enter their name.
# 2. Read and store that input.
# 3. Confirm identity by printing “Access granted to <name>”.

echo -n "Enter your name: "
read name
echo "Access granted to $name."
