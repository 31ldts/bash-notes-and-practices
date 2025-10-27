#!/bin/bash
# Deployment prototype with hidden issues

# You must debug the code by executing it with bash -x deploy-sequence.sh
# If you do so, you will notice where the code is failing.
# In order to get a correct execution and to redirect the output and the errors, I have used the following: bash -x deploy-sequence.sh --release true --optimize true > ../logs/trace.log 2>&1

release=false
optimize=false

while (( $# > 1 )); do
  case $1 in
    --release) release=$2 ;;
    --optimize) optimize=$2 ;;
  esac
  shift 2
done

$release && echo "Releasing build..."
$optimize && echo "Optimizing build..."
