#!/bin/bash
# Deployment prototype with hidden issues

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
