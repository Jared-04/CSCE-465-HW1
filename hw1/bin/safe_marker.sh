#!/bin/bash

HW_DIR="/home/ubuntu/Desktop/hw1/CSCE-465-HW1/hw1"

if [[ $# != 1 ]]; then
  echo "Must supply exactly one argument"
  exit 1
elif [[ $1 != "course-marker" ]]; then
  echo "Incorrect argument supplied"
  echo "$1"
  exit 1
fi

touch "$HW_DIR/markers/marker.txt"


