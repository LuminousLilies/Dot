#!/bin/sh

git filter-repo --use-mailmap
git push --force --tags origin HEAD:master