#!/bin/sh
echo "Operating on accounts-2\n"
ssh accounts-2 $@
echo "\n\n\n\n"

echo "Operating on accounts-3\n"
ssh accounts-3 $@
echo "\n\n\n\n"

echo "Operating on accounts-1.groups2.com\n"
ssh accounts-1.groups2.com $@
echo "\n\n\n\n"

echo "Operating on accounts-2.groups2.com\n"
ssh accounts-2.groups2.com $@
