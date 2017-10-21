#!/bin/bash
docker-compose -p ingress down
docker-compose -p ingress pull
docker-compose -p ingress -f docker-compose.yml -f docker-compose.test.yml up