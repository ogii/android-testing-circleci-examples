#!/bin/sh
adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner > test.txt
if cat test.txt | grep -q 'attempt'; then echo "exit 1"; else echo "exit 0"; fi
