#!/bin/bash
cd /home/odoo/odoo-projects/odoo-technical-training/zz-run \
&& \
pg_dump --dbname=postgresql://postgres:postgres@127.0.0.1:5432/master -t public.openacademy_course > ../zz-data/postgre-dumps/openacademy_course.sql \
&& \
pg_dump --dbname=postgresql://postgres:postgres@127.0.0.1:5432/master -t public.openacademy_session > ../zz-data/postgre-dumps/openacademy_session.sql \
&& \
pg_dump --dbname=postgresql://postgres:postgres@127.0.0.1:5432/master -t public.openacademy_session_res_partner_rel > ../zz-data/postgre-dumps/openacademy_session_res_partner_rel.sql \
&& \
echo ">>> export done." || echo "!!! something went wrong"


