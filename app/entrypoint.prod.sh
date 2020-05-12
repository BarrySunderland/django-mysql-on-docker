#!/bin/sh

if [ "$DATABASE" = "mysql" ]
then
    echo "Waiting 15s for mysql to start..."

    sleep 15 # using while loop with nc (netcat) and mysqladmin fails as packages are not found
    
    # while ! nc -z $SQL_HOST $SQL_PORT; do
    # while ! mysqladmin ping -h"$SQL_HOST" --silent; do
      # sleep .5
    # done

    echo "assuming MySQL has started"
fi

exec "$@"
