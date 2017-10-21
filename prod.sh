#!/bin/bash
if [ "${1}" = "master" ]; then
  docker-compose -p ingress down
  docker-compose -p ingress pull
  docker-compose -p ingress -f docker-compose.yml -f docker-compose.prod.yml up -d
fi
