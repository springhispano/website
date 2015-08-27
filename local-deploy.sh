#!/usr/bin/env bash

dest='/www/springhispano.org'

while getopts ":e:" opt; do
  case $opt in
    e)
      #echo "-e was triggered, Parameter: '$OPTARG'" >&2
      dest="/www/$OPTARG.springhispano.org"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done


echo "Deploying website to $dest"

./build.sh && rsync -avzhe ssh --delete --delete-after ./public $dest