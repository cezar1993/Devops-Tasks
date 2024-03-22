#!/bin/bash

# Run the built application
dotnet MyAwesomeApp.dll &

# Wait for the application to start 
sleep 10

# Output a message
echo "MyAwesomeApp!"