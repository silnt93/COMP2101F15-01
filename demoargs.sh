#!/bin/bash
#
# this script demonstrates using positional parameters
# also known as command line options and arguments

progname=$(basename $0)
echo "The script command was $progname"
echo "There were $# arguments"
echo "The command line had '$1' as the first argument"
echo "The command line had '$2' as the second argument"
