#!/bin/bash

python3 ms_rewards_farmer.py --everyday --start-at 04:00 --headless --fast --telegram "${TOKEN}" "${CHAT_ID}"
apt-get --only-upgrade install google-chrome-stable