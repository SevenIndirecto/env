#!/bin/bash
set -x

echo "Subject: Daemon Borgmatic: $1\n\n$2\n$3" | ssmtp zabkar@gmail.com
