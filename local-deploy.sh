#!/usr/bin/env bash

baseDir='/www'
env=''
#dest="$baseDir/springhispano.org"
hugoParams=''

while getopts ":b:e:p:" opt; do
  case $opt in
    b)
      baseDir=$OPTARG
      ;;
    e)
      env="$OPTARG."
      ;;
    p)
      hugoParams=$hugoParams"$OPTARG "
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

dest="$baseDir/$env""springhispano.org"

echo "Deploying website to $dest"

./build.sh  $hugoParams && rsync -avzhe ssh --delete --delete-after ./public $dest
