#!/bin/sh
adb shell am instrument -w com.circleci.samples.todoapp/androidx.test.runner.AndroidJUnitRunner
