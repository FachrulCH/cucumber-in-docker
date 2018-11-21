#!/bin/bash
echo "=====:: Timun Docker ::====="
# Sample usage:  docker run -v "$(PWD)":/app  -e t=@login -it kryptonite
echo $t
ls
export RUBYOPT="-W0"
# bundle install
bundle exec rake timun:parallel_run
TEST_EXIT_CODE=$?
if [ $TEST_EXIT_CODE -ne 0 ]
then
  echo "=====:: Cucumber test failed!!! ::====="
  echo $TEST_EXIT_CODE
  exit 1
fi