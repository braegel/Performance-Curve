#!/bin/bash  
  
if [ "$(type rvm | head -1)" != "rvm is a function" ]  
then  
  source ~/.rvm/scripts/rvm || exit 1  
fi  
  
if [ "$(type rvm | head -1)" != "rvm is a function" ]  
then  
  echo "rvm not properly installed and available"  
  exit 1  
fi  
  
rvm use 1.9.2 --create  
bundle check || bundle install || exit 1  
bundle exec rake db:migrate
rake # setup to run all required tests by default
