#!/bin/bash
echo "Hello, World" > index.html
nohup start httpd -f -p 8080 &