#!/bin/bash

aws eks list-clusters | ruby -rjson -e "puts JSON.parse(STDIN.read)['clusters']"
