#!/bin/bash

ps aux | grep ding | awk '{print $2}' | xargs kill -9
