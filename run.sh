#!/bin/sh
while true
do
	ps -ef | grep cartpole.py | grep -v grep
	if [ $? -ne 0 ]; then
		echo "process end. starting process..."
		venv/bin/python cartpole.py
		sleep 20*60
	else
	  sleep 60
		echo "process running..."
	fi
done
