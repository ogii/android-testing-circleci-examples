#!/bin/sh
adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner 2>&1 | tee results.txt
if grep -q "Starting test attempt 1" results.txt; then
    echo "FAILURE!" && exit 1
fi
