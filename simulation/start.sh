#!/bin/bash

kill -9 `ps -ef | grep task.py | awk '{print $2}' `
kill -9 `ps -ef | grep chrome | awk '{print $2}' `
kill -9 `ps -ef | grep firefox | awk '{print $2}' `
kill -9 `ps -ef | grep geckodriver | awk '{print $2}' `
kill -9 `ps -ef | grep mitmdump | awk '{print $2}' `
echo 3 > /proc/sys/vm/drop_caches
rm -rf /tmp/.org.chromium*
rm -rf log/*.log
rm -rf *.log
python3 task.py > /dev/null 2>&1 &
