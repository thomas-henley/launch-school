#!/bin/bash

echo 'Hello world!'

str='Test!'
first=9
second=9

if [[ -n $str ]]
then
  echo $str is longer than zero.
fi

if [[ first -eq second ]]
then
  echo $first and $second are the same!
fi

if [[ -f ./hello_world.sh ]]
then
  echo 'File exists'
fi

echo 'Goodbye world!'