#!/usr/bin/env bash
signal="GAMMA"
# Expected output: “Transmission: $signal”
# Problem: escaping symbols incorrectly
echo "Transmission: \$signal"
# In this case, the scape character is used to prevent the expantion. These character allows to express special characters as literals.