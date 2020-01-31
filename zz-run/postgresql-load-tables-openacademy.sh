#!/bin/bash
cd /home/odoo/odoo-projects/odoo-technical-training/zz-run \
&& \
psql -d master -c "drop table if exists openacademy_session_res_partner_rel cascade;" \
&& \
psql -d master -c "drop table if exists openacademy_session;" \
&& \
psql -d master -c "drop table if exists openacademy_course cascade;" \
&& \
psql -d master -c "\i ../zz-data/postgre-dumps/openacademy_session_res_partner_rel.sql" \
&& \
psql -d master -c "\i ../zz-data/postgre-dumps/openacademy_session.sql" \
&& \
psql -d master -c "\i ../zz-data/postgre-dumps/openacademy_course.sql" \
&& \
echo ">>> import finished." || echo "something went wrong."

