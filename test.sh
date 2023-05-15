#!/bin/sh
test_results=$(adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner)
echo $test_results
