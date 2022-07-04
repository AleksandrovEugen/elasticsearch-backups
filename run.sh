#!/usr/bin/env bash

INDEX_NAME=$1
ES_CONNECTION_LINK=$2

current_time=$(date +"%Y-%m-%d-%H-%M")
dir_name="./backups/${current_time}"

mkdir $dir_name

NODE_TLS_REJECT_UNAUTHORIZED=0 ./node_modules/.bin/elasticdump --input=$ES_CONNECTION_LINK/$INDEX_NAME --output=$dir_name/$INDEX_NAME-index-analyzer.json --type=analyzer

NODE_TLS_REJECT_UNAUTHORIZED=0 ./node_modules/.bin/elasticdump --input=$ES_CONNECTION_LINK/$INDEX_NAME --output=$dir_name/$INDEX_NAME-index-mapping.json --type=mapping

NODE_TLS_REJECT_UNAUTHORIZED=0 ./node_modules/.bin/elasticdump --input=$ES_CONNECTION_LINK/$INDEX_NAME --output=$dir_name/$INDEX_NAME-index-data.json --type=data