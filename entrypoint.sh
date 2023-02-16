#!/bin/bash

uvicorn keep_alive:app --host 0.0.0.0 --port 8080 &

python3 ms_rewards_farmer.py --session --headless --fast --telegram "${TOKEN}" "${CHAT_ID}" ;

python3 ms_rewards_farmer.py --everyday --start-at 04:00 --session --headless --fast --telegram "${TOKEN}" "${CHAT_ID}"

