#!/usr/bin/env bash

VER=$(grep "version" website.properties|cut -d'=' -f2)  && \
  docker build -t springhispano/website:$VER \
    -t registry.circulosiete.com/library/springhispano/website:$VER . && \
  git release $VER && \
  docker push springhispano/website:$VER && 
    docker push registry.circulosiete.com/library/springhispano/website:$VER
  echo "done"