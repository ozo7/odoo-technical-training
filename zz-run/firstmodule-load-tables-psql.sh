#!/bin/bash

tables="$(ls ../zz-data/postgre-dumps | grep -Eo '\bvv_[a-z,_]*')"

for t in ${tables}
do
	psql -d master -c "drop table if exists $t cascade;"
done

for t in ${tables}
do
	psql -d master -c "\i ../zz-data/postgre-dumps/$t.sql"
done
