#!/usr/bin/env bash
signal="BETA"
# Expected output: “Transmission: $signal”
# Problem: the variable expands unexpectedly
echo 'Transmission: $signal'
