#!/bin/bash

if [ -f /secrets/secret ]; then
  cat /secrets/secret | dat keys import
  #rm /secrets/secret
fi

dat sync
