#!/usr/bin/env bash

rm -rf public && mkdir public && cp -r config public && cp -r css public && cp -r fonts public && cp -r img public && cp -r js public && cp index.html public && rsync -avzhe ssh --delete --delete-after ./public deployer@198.58.120.79:/www/springhispano.org
