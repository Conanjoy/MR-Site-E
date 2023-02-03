#!/bin/bash

nohup gunicorn keep_alive:app --bind 0.0.0.0:8080 > /proc/1/fd/1 2>/proc/1/fd/2 &

python3 ms_rewards_farmer.py --everyday 04:00 --headless --fast --telegram "${TOKEN}" "${CHAT_ID}"

