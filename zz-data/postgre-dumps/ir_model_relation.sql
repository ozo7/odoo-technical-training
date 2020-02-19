--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ir_model_relation; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_model_relation (
    id integer NOT NULL,
    name character varying NOT NULL,
    model integer NOT NULL,
    module integer NOT NULL,
    write_date timestamp without time zone,
    create_date timestamp without time zone,
    create_uid integer,
    write_uid integer
);


ALTER TABLE public.ir_model_relation OWNER TO odoo;

--
-- Name: TABLE ir_model_relation; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_model_relation IS 'Relation Model';


--
-- Name: COLUMN ir_model_relation.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_relation.name IS 'Relation Name';


--
-- Name: COLUMN ir_model_relation.model; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_relation.model IS 'Model';


--
-- Name: COLUMN ir_model_relation.module; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_relation.module IS 'Module';


--
-- Name: COLUMN ir_model_relation.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_relation.write_date IS 'Write Date';


--
-- Name: COLUMN ir_model_relation.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_relation.create_date IS 'Create Date';


--
-- Name: COLUMN ir_model_relation.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_relation.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_relation.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_relation.write_uid IS 'Last Updated by';


--
-- Name: ir_model_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_model_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_relation_id_seq OWNER TO odoo;

--
-- Name: ir_model_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_model_relation_id_seq OWNED BY public.ir_model_relation.id;


--
-- Name: ir_model_relation id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_relation ALTER COLUMN id SET DEFAULT nextval('public.ir_model_relation_id_seq'::regclass);


--
-- Data for Name: ir_model_relation; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_model_relation (id, name, model, module, write_date, create_date, create_uid, write_uid) FROM stdin;
1	ir_model_fields_group_rel	4	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
2	ir_ui_menu_group_rel	13	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
3	ir_ui_view_group_rel	15	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
4	ir_act_window_group_rel	18	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
5	rel_server_actions	22	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
6	ir_act_server_group_rel	22	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
7	res_groups_report_rel	26	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
8	rule_group_rel	34	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
9	res_country_res_country_group_rel	71	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
10	res_partner_res_partner_category_rel	76	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
11	res_company_users_rel	87	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
12	res_groups_users_rel	88	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
13	res_groups_implied_rel	88	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
14	rel_modules_langexport	100	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
15	base_partner_merge_automatic_wizard_res_partner_rel	103	441	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
22	utm_tag_rel	140	522	2020-01-31 09:41:03.73074	2020-01-31 09:41:03.73074	1	1
23	iap_account_res_company_rel	145	45	2020-01-31 09:41:05.538844	2020-01-31 09:41:05.538844	1	1
24	mail_followers_mail_message_subtype_rel	150	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
25	message_attachment_rel	152	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
26	mail_message_res_partner_rel	152	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
27	mail_message_res_partner_needaction_rel	152	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
28	mail_message_mail_channel_rel	152	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
29	mail_message_res_partner_starred_rel	152	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
30	mail_activity_rel	153	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
31	mail_activity_type_mail_template_rel	153	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
32	mail_mail_res_partner_rel	156	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
33	mail_channel_partner	164	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
34	mail_channel_res_groups_rel	164	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
35	mail_channel_moderator_rel	164	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
36	email_template_attachment_rel	165	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
37	ir_act_server_res_partner_rel	22	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
38	ir_act_server_mail_channel_rel	22	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
39	mail_wizard_invite_res_partner_rel	168	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
40	mail_channel_mail_wizard_invite_rel	168	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
41	mail_compose_message_ir_attachments_rel	169	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
42	mail_compose_message_res_partner_rel	169	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
43	mail_message_res_partner_needaction_rel_mail_resend_message_rel	171	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
44	email_template_preview_res_partner_rel	173	159	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
45	meeting_category_rel	179	56	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
46	calendar_event_res_partner_rel	179	56	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
47	calendar_alarm_calendar_event_rel	179	56	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
48	team_favorite_user_rel	186	33	2020-01-31 09:41:17.144798	2020-01-31 09:41:17.144798	1	1
49	portal_share_res_partner_rel	192	32	2020-01-31 09:41:18.712393	2020-01-31 09:41:18.712393	1	1
50	res_partner_sms_composer_rel	199	6	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
51	digest_digest_res_users_rel	203	224	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
52	digest_tip_res_users_rel	204	224	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
53	crm_lead_tag_rel	205	453	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
54	calendar_event_res_partner_rel	78	453	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
55	crm_lead_crm_lead2opportunity_partner_rel	214	453	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
56	crm_lead2opportunity_partner_mass_res_users_rel	215	453	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
57	crm_lead_crm_lead2opportunity_partner_mass_rel	215	453	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
58	merge_opportunity_rel	216	453	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
60	account_analytic_line_tag_rel	393	438	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
61	product_variant_combination	396	293	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
62	product_attribute_product_template_rel	399	293	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
63	product_attribute_value_product_template_attribute_line_rel	400	293	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
64	product_attr_exclusion_value_ids_rel	403	293	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
65	res_country_group_pricelist_rel	404	293	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
66	account_fiscal_position_res_country_state_rel	408	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
67	account_tax_report_line_tags_rel	412	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
68	account_account_tax_default_rel	414	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
69	account_account_account_tag	414	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
70	account_journal_account_journal_group_rel	417	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
71	account_journal_type_rel	418	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
72	account_account_type_rel	418	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
73	account_journal_inbound_payment_method_rel	418	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
74	account_journal_outbound_payment_method_rel	418	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
75	account_tax_filiation_rel	420	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
76	account_account_tag_account_tax_repartition_line_rel	421	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
77	account_journal_account_reconcile_model_rel	422	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
78	account_reconcile_model_res_partner_rel	422	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
79	account_reconcile_model_res_partner_category_rel	422	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
80	account_reconcile_model_account_tax_rel	422	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
81	account_reconcile_model_analytic_tag_rel	422	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
82	account_reconcile_model_account_tax_bis_rel	422	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
83	account_reconcile_model_second_analytic_tag_rel	422	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
84	account_invoice_payment_rel	424	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
85	account_invoice_payment_rel_transient	425	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
86	account_move_line_account_tax_rel	434	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
87	account_account_tag_account_move_line_rel	434	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
88	account_analytic_tag_account_move_line_rel	434	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
89	account_account_template_tax_rel	437	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
90	account_account_template_account_tag	437	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
91	account_tax_template_filiation_rel	439	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
92	account_tax_repartition_financial_tags	440	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
93	account_tax_repartition_plus_report_line	440	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
94	account_tax_repartition_minus_report_line	440	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
95	account_fiscal_position_template_res_country_state_rel	441	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
96	account_journal_account_reconcile_model_template_rel	444	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
97	account_reconcile_model_template_res_partner_rel	444	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
98	account_reconcile_model_template_res_partner_category_rel	444	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
99	account_reconcile_model_template_account_tax_template_rel	444	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
100	account_reconcile_model_tmpl_account_tax_bis_rel	444	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
101	product_taxes_rel	394	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
102	product_supplier_taxes_rel	394	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
103	account_accrual_accounting_wizard_account_move_line_rel	449	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
104	account_common_report_account_journal_rel	454	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
105	account_common_journal_report_account_journal_rel	455	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
106	account_journal_account_print_journal_rel	456	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
107	account_move_account_invoice_send_rel	460	518	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
108	account_bank_statement_import_ir_attachment_rel	466	384	2020-02-10 14:36:20.142439	2020-02-10 14:36:20.142439	1	1
109	payment_country_rel	473	273	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
110	payment_acquirer_payment_icon_rel	473	273	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
111	account_invoice_transaction_rel	475	273	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
112	account_move_purchase_order_rel	479	299	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
113	account_tax_purchase_order_line_rel	480	299	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
114	account_analytic_tag_purchase_order_line_rel	480	299	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
115	stock_inventory_stock_location_rel	490	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
116	product_product_stock_inventory_rel	490	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
117	stock_route_product	493	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
118	stock_location_route_categ	493	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
119	stock_route_warehouse	493	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
120	stock_move_move_rel	494	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
121	stock_location_route_move	494	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
122	stock_move_line_consume_rel	495	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
123	stock_wh_resupply_table	503	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
124	stock_picking_transfer_rel	515	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
125	stock_picking_backorder_rel	516	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
126	stock_rules_report_stock_warehouse_rel	519	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
127	product_replenish_stock_location_route_rel	522	512	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
128	stock_route_product	394	319	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
129	purchase_order_stock_picking_rel	479	319	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
130	employee_category_rel	539	203	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
131	hr_plan_hr_plan_activity_type_rel	545	203	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
132	hr_department_mail_channel_rel	164	203	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
133	expense_tax	550	451	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
134	account_analytic_tag_hr_expense_rel	550	451	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
135	hr_expense_hr_expense_refuse_wizard_rel	552	451	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
136	account_model_rel	572	188	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
137	account_analytic_account_account_transfer_model_line_rel	573	188	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
138	account_financial_html_report_ir_filters_rel	578	128	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
139	dms_acc_rep_export_wizard_format_rel	590	128	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
140	account_analytic_tag_account_asset_rel	592	227	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
141	followup_send_res_partner_rel	600	7	2020-02-13 17:20:28.146474	2020-02-13 17:20:28.146474	1	1
142	website_country_group_rel	605	74	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
143	website_lang_rel	605	74	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
144	res_groups_website_menu_rel	606	74	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
145	website_visitor_partner_rel	78	74	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
146	base_language_install_website_rel	96	74	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
147	crm_lead_website_visitor_rel	205	276	2020-02-14 11:31:15.854012	2020-02-14 11:31:15.854012	1	1
153	openacademy_session_res_partner_rel	639	564	2020-02-18 13:09:17.72003	2020-02-18 13:09:17.72003	1	1
\.


--
-- Name: ir_model_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_model_relation_id_seq', 153, true);


--
-- Name: ir_model_relation ir_model_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_pkey PRIMARY KEY (id);


--
-- Name: ir_model_relation_model_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_relation_model_index ON public.ir_model_relation USING btree (model);


--
-- Name: ir_model_relation_module_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_relation_module_index ON public.ir_model_relation USING btree (module);


--
-- Name: ir_model_relation_name_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_relation_name_index ON public.ir_model_relation USING btree (name);


--
-- Name: ir_model_relation ir_model_relation_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_relation ir_model_relation_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE RESTRICT;


--
-- Name: ir_model_relation ir_model_relation_module_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_module_fkey FOREIGN KEY (module) REFERENCES public.ir_module_module(id) ON DELETE RESTRICT;


--
-- Name: ir_model_relation ir_model_relation_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
