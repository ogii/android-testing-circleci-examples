#!/bin/sh
test_results=$(adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner)
if grep -q "INSTRUMENTATION_STATUS_CODE: -1" $test_results; then
    exit 1
fi
