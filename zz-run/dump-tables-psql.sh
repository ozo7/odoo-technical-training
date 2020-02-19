#!/bin/bash
# Argument = -d database -p tableprefix

EXPORTPATH="/home/odoo/odoo-projects/odoo-technical-training/zz-data/postgre-dumps/"

usage()
{
cat << EOF
usage: $0 options

This script dumps the tables' contents based on a prefix in their table name.
It needs 2 mandatory parameters.

OPTIONS:
   -h	Show this message
MANDATORY:
   -d   Database in which the tables are   
   -p	Table prefix to select the tables to dump
EOF
}

while getopts “hd:p:” OPTION
do
     case $OPTION in
        h)
            usage
            exit 1
            ;;
        d)
            DATABASE=$OPTARG
            ;;
        p)
            PREFIX=$OPTARG
            ;;
        ?)
            usage
            exit
            ;;
		*)	usage
			exit
			;;
     esac
done

echo "DATABASE: $DATABASE"
echo "PREFIX: $PREFIX"

if [ ! $DATABASE ] || [ ! $PREFIX ]
then
	usage
	exit 1
else
    tables="$(psql -d $DATABASE -c \\dt | grep -Eo '\b'$PREFIX'\w*')"
	echo ">>> Tables found: "$tables	
	echo ">>> Producing files:"
	for t in ${tables}
	do		
		dumpcmd="pg_dump --dbname=postgresql://postgres:postgres@127.0.0.1:5432/$DATABASE -t public.$t"		
		DUMP=$($dumpcmd)		
		echo "$DUMP" > $EXPORTPATH$t.sql
		echo "$t.sql"
	done
	echo "Export path was: $EXPORTPATH"
    exit 1
fi




