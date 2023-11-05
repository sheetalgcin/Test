#!/bin/bash

# Set and export environment variables based on conditions

echo "MY_VARIABLE is: $x"
# Run the Robot Framework tests with the chosen environment variables
robot --variable x:$x --variable y:$y -d  output --output  output_$x.xml  --xunit  res.xml  Tests/verify/*
#robot  test.robot  # Replace with the actual path to your Robot Framework tests
