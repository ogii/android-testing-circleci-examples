#!/bin/sh
test_results=$(adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner)
echo "determining exit code"
if echo "$test_results" | grep -q 'attempt'; then echo "exit 1"; else echo "exit 0"; fi

