#!/bin/sh
test_results=$(adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner)
if grep -q "Starting test attempt 1" $test_results; then
    echo "FAILURE!" && exit 1
fi
