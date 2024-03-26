#!/bin/bash

export RAILS_ENV=development
rake db:create 
rake db:migrate
exec "$@"