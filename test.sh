#!/bin/sh
test_report=$(adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner)
exitcmd=$(if echo "$test_report" | grep -q 'attempt'; then echo "exit 1"; else echo "exit 0"; fi)
$exitcmd
