#!/usr/bin/env bash
signal="BETA"
# Expected output: “Transmission: $signal”
# Problem: the variable expands unexpectedly
echo 'Transmission: $signal'
# In this case the problem are the simple quotes (strong quoting). These quotes do not allow bash to expand the arguments.
