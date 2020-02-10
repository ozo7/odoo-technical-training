#!/bin/bash

tables="$(psql -d master -c \\dt | grep -Eo '\bvv_\w*')"

for t in ${tables}
do
	dumpcmd="pg_dump --dbname=postgresql://postgres:postgres@127.0.0.1:5432/master -t public.$t" 
	DUMP=$($dumpcmd)
	echo "$DUMP" > ../zz-data/postgre-dumps/$t.sql
done
