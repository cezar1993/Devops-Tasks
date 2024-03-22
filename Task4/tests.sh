#!/bin/bash

# 1. Run the built application
dotnet MyAwesomeApp.dll &

# 2. Wait for the application to start
sleep 10

# 3. Basics checks
response=$(curl -sSf http://localhost:80)

if [[ "$response" == *"MyAwesomeApp!"* ]]; then
    echo "Test passed: Application is running correctly."
    exit 0
else
    echo "Test failed: Application is not running correctly."
    exit 1
fi