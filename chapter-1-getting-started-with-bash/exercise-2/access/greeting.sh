#!/usr/bin/env bash
# Prototype greeter
# Expected: prints “Hello, <operator>!”
# Current: prints nothing useful

# TODO: introduce a variable to hold the target name
# TODO: optionally accept a name as an argument
# TODO: print the greeting message

echo "Who are you?"
read name
echo "Hello, $name."