#!/usr/bin/env bash

# This script show the current Git branch and commit of the recipe source

if [ $# -ne 1 ]
then
    echo "Usage: $0 recipe_name"
    echo "  Print the commit hash for recipe_name"
    exit 1
fi

cd cookbook
recipe_path="$(target/release/find_recipe $1)"

cd "$recipe_path"/source
git branch -v
