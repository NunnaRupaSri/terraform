#!/bin/bash
echo "Hello, World" > index.html
nohup  httpd -f -p 8080 &