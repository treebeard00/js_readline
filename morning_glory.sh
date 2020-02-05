#!/bin/bash

curl -s https://api.rockfm.ro/rss-feed/emisiune/9/morning-glory-cu-razvan-exarhu | xml2json | jq '.. | .item? // empty' | \
	jq '
