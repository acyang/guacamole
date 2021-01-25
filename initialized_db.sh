#!/bin/sh
#
echo "Preparing folder init and generate a SQL initialize script ./init/initdb.sql"
mkdir ./init
chmod a+x ./init
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > ./init/initdb.sql
echo "done"
mkdir ./data
