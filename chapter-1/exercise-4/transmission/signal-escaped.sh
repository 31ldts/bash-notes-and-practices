#!/usr/bin/env bash
signal="GAMMA"
# Expected output: “Transmission: $signal”
# Problem: escaping symbols incorrectly
echo "Transmission: \$signal"
