#!/bin/sh

adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner | grep "INSTRUMENTATION_FAILED"
echo $?
echo "determining exit code"
echo "before results"
cat output.log
if cat test_results.txt | grep -q 'adb'; then echo "exit 1"; else echo "exit 0">

