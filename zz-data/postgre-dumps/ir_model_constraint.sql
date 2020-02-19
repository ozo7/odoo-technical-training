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
-- Name: ir_model_constraint; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_model_constraint (
    id integer NOT NULL,
    name character varying NOT NULL,
    definition character varying,
    message character varying,
    model integer NOT NULL,
    module integer NOT NULL,
    type character varying(1) NOT NULL,
    write_date timestamp without time zone,
    create_date timestamp without time zone,
    create_uid integer,
    write_uid integer
);


ALTER TABLE public.ir_model_constraint OWNER TO odoo;

--
-- Name: TABLE ir_model_constraint; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_model_constraint IS 'Model Constraint';


--
-- Name: COLUMN ir_model_constraint.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.name IS 'Constraint';


--
-- Name: COLUMN ir_model_constraint.definition; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.definition IS 'Definition';


--
-- Name: COLUMN ir_model_constraint.message; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.message IS 'Message';


--
-- Name: COLUMN ir_model_constraint.model; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.model IS 'Model';


--
-- Name: COLUMN ir_model_constraint.module; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.module IS 'Module';


--
-- Name: COLUMN ir_model_constraint.type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.type IS 'Constraint Type';


--
-- Name: COLUMN ir_model_constraint.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.write_date IS 'Write Date';


--
-- Name: COLUMN ir_model_constraint.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.create_date IS 'Create Date';


--
-- Name: COLUMN ir_model_constraint.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_constraint.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_constraint.write_uid IS 'Last Updated by';


--
-- Name: ir_model_constraint_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_model_constraint_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_constraint_id_seq OWNER TO odoo;

--
-- Name: ir_model_constraint_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_model_constraint_id_seq OWNED BY public.ir_model_constraint.id;


--
-- Name: ir_model_constraint id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_constraint ALTER COLUMN id SET DEFAULT nextval('public.ir_model_constraint_id_seq'::regclass);


--
-- Data for Name: ir_model_constraint; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_model_constraint (id, name, definition, message, model, module, type, write_date, create_date, create_uid, write_uid) FROM stdin;
1	ir_model_obj_name_uniq	unique(model)	Each model must be unique!	3	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
2	ir_model_fields_name_unique	unique(model,name)	Field names must be unique per model.	4	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
3	ir_model_fields_size_gt_zero	check(size>=0)	Size of the field cannot be negative.	4	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
4	ir_model_fields_relation_field_id_fkey	\N	\N	4	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
5	ir_model_fields_model_id_fkey	\N	\N	4	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
6	ir_model_fields_related_field_id_fkey	\N	\N	4	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
7	ir_model_fields_group_rel_field_id_fkey	\N	\N	4	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
8	ir_model_fields_group_rel_group_id_fkey	\N	\N	4	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
9	ir_model_fields_selection_selection_field_uniq	unique(field_id,value)	Selections values must be unique per field	5	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
10	ir_model_fields_selection_field_id_fkey	\N	\N	5	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
11	ir_model_constraint_module_name_uniq	unique(name,module)	Constraints with the same name are unique per module.	6	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
12	ir_model_constraint_model_fkey	\N	\N	6	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
13	ir_model_constraint_module_fkey	\N	\N	6	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
14	ir_model_relation_model_fkey	\N	\N	7	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
15	ir_model_relation_module_fkey	\N	\N	7	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
16	ir_model_access_model_id_fkey	\N	\N	8	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
17	ir_model_access_group_id_fkey	\N	\N	8	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
18	wizard_ir_model_menu_create_menu_id_fkey	\N	\N	10	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
19	ir_sequence_company_id_fkey	\N	\N	11	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
20	ir_sequence_date_range_sequence_id_fkey	\N	\N	12	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
21	ir_ui_menu_parent_id_fkey	\N	\N	13	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
22	ir_ui_menu_group_rel_menu_id_fkey	\N	\N	13	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
23	ir_ui_menu_group_rel_gid_fkey	\N	\N	13	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
24	ir_ui_view_custom_ref_id_fkey	\N	\N	14	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
25	ir_ui_view_custom_user_id_fkey	\N	\N	14	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
26	ir_ui_view_inheritance_mode	check(mode != 'extension' or inherit_id is not null)	Invalid inheritance mode: if the mode is 'extension', the view must extend an other view	15	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
27	ir_ui_view_qweb_required_key	check(type != 'qweb' or key is not null)	Invalid key: QWeb view should have a key	15	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
28	ir_ui_view_inherit_id_fkey	\N	\N	15	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
29	ir_ui_view_group_rel_view_id_fkey	\N	\N	15	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
30	ir_ui_view_group_rel_group_id_fkey	\N	\N	15	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
31	reset_view_arch_wizard_view_id_fkey	\N	\N	16	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
32	ir_actions_binding_model_id_fkey	\N	\N	17	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
33	ir_act_window_view_id_fkey	\N	\N	18	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
34	ir_act_window_group_rel_act_id_fkey	\N	\N	18	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
35	ir_act_window_group_rel_gid_fkey	\N	\N	18	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
36	ir_act_window_search_view_id_fkey	\N	\N	18	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
37	ir_act_window_binding_model_id_fkey	\N	\N	18	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
38	ir_act_window_view_view_id_fkey	\N	\N	19	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
39	ir_act_window_view_act_window_id_fkey	\N	\N	19	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
40	ir_act_url_binding_model_id_fkey	\N	\N	21	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
41	ir_act_server_model_id_fkey	\N	\N	22	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
42	rel_server_actions_server_id_fkey	\N	\N	22	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
43	rel_server_actions_action_id_fkey	\N	\N	22	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
44	ir_act_server_crud_model_id_fkey	\N	\N	22	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
45	ir_act_server_link_field_id_fkey	\N	\N	22	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
46	ir_act_server_group_rel_act_id_fkey	\N	\N	22	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
47	ir_act_server_group_rel_gid_fkey	\N	\N	22	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
48	ir_act_server_binding_model_id_fkey	\N	\N	22	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
49	ir_server_object_lines_server_id_fkey	\N	\N	23	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
50	ir_server_object_lines_col1_fkey	\N	\N	23	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
51	ir_act_client_binding_model_id_fkey	\N	\N	25	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
52	res_groups_report_rel_uid_fkey	\N	\N	26	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
53	res_groups_report_rel_gid_fkey	\N	\N	26	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
54	ir_act_report_xml_paperformat_id_fkey	\N	\N	26	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
55	ir_act_report_xml_binding_model_id_fkey	\N	\N	26	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
56	ir_attachment_company_id_fkey	\N	\N	27	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
57	ir_cron_ir_actions_server_id_fkey	\N	\N	28	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
58	ir_cron_user_id_fkey	\N	\N	28	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
59	ir_filters_name_model_uid_unique	unique(name,model_id,user_id,action_id)	Filter names must be unique	29	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
60	ir_filters_user_id_fkey	\N	\N	29	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
61	ir_default_field_id_fkey	\N	\N	30	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
62	ir_default_user_id_fkey	\N	\N	30	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
63	ir_default_company_id_fkey	\N	\N	30	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
64	ir_translation_lang_fkey_res_lang	foreign key(lang) references res_lang(code)	Language code of translation item must be among known languages	31	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
65	ir_exports_line_export_id_fkey	\N	\N	33	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
66	ir_rule_no_access_rights	check(perm_read!=false or perm_write!=false or perm_create!=false or perm_unlink!=false)	Rule must have at least one checked access right !	34	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
67	ir_rule_model_id_fkey	\N	\N	34	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
68	rule_group_rel_rule_group_id_fkey	\N	\N	34	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
69	rule_group_rel_group_id_fkey	\N	\N	34	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
70	ir_config_parameter_key_uniq	unique(key)	Key must be unique.	35	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
71	ir_property_company_id_fkey	\N	\N	60	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
72	ir_property_fields_id_fkey	\N	\N	60	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
73	ir_module_module_name_uniq	unique(name)	The name of the module must be unique!	62	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
74	ir_module_module_exclusion_module_id_fkey	\N	\N	64	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
75	ir_demo_failure_module_id_fkey	\N	\N	66	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
76	ir_demo_failure_wizard_id_fkey	\N	\N	66	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
77	report_layout_view_id_fkey	\N	\N	68	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
78	res_country_name_uniq	unique(name)	The name of the country must be unique !	71	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
79	res_country_code_uniq	unique(code)	The code of the country must be unique !	71	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
80	res_country_address_view_id_fkey	\N	\N	71	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
81	res_country_currency_id_fkey	\N	\N	71	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
82	res_country_res_country_group_rel_res_country_id_fkey	\N	\N	71	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
83	res_country_res_country_group_rel_res_country_group_id_fkey	\N	\N	71	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
84	res_country_state_name_code_uniq	unique(country_id,code)	The code of the state must be unique by country !	73	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
85	res_country_state_country_id_fkey	\N	\N	73	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
86	res_lang_name_uniq	unique(name)	The name of the language must be unique !	74	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
87	res_lang_code_uniq	unique(code)	The code of the language must be unique !	74	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
88	res_lang_url_code_uniq	unique(url_code)	The URL code of the language must be unique !	74	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
89	res_partner_category_parent_id_fkey	\N	\N	76	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
90	res_partner_res_partner_category_rel_category_id_fkey	\N	\N	76	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
91	res_partner_res_partner_category_rel_partner_id_fkey	\N	\N	76	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
92	res_partner_check_name	check((type='contact' and name is not null) or(type!='contact') )	Contacts require a name	78	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
93	res_partner_title_fkey	\N	\N	78	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
94	res_partner_parent_id_fkey	\N	\N	78	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
95	res_partner_user_id_fkey	\N	\N	78	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
96	res_partner_state_id_fkey	\N	\N	78	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
97	res_partner_country_id_fkey	\N	\N	78	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
98	res_partner_industry_id_fkey	\N	\N	78	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
99	res_partner_company_id_fkey	\N	\N	78	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
100	res_partner_commercial_partner_id_fkey	\N	\N	78	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
101	res_bank_state_fkey	\N	\N	80	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
102	res_bank_country_fkey	\N	\N	80	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
103	res_partner_bank_unique_number	unique(sanitized_acc_number,company_id)	Account Number must be unique	81	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
104	res_partner_bank_partner_id_fkey	\N	\N	81	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
105	res_partner_bank_bank_id_fkey	\N	\N	81	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
106	res_partner_bank_currency_id_fkey	\N	\N	81	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
107	res_partner_bank_company_id_fkey	\N	\N	81	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
108	res_currency_unique_name	unique(name)	The currency code must be unique!	85	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
109	res_currency_rounding_gt_zero	check(rounding>0)	The rounding factor must be greater than 0!	85	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
110	res_currency_rate_unique_name_per_day	unique(name,currency_id,company_id)	Only one currency rate per day allowed!	86	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
111	res_currency_rate_currency_rate_check	check(rate>0)	The currency rate must be strictly positive.	86	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
112	res_currency_rate_currency_id_fkey	\N	\N	86	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
113	res_currency_rate_company_id_fkey	\N	\N	86	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
114	res_company_name_uniq	unique(name)	The company name must be unique !	87	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
115	res_company_parent_id_fkey	\N	\N	87	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
116	res_company_partner_id_fkey	\N	\N	87	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
117	res_company_currency_id_fkey	\N	\N	87	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
118	res_company_users_rel_cid_fkey	\N	\N	87	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
119	res_company_users_rel_user_id_fkey	\N	\N	87	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
120	res_company_paperformat_id_fkey	\N	\N	87	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
121	res_company_external_report_layout_id_fkey	\N	\N	87	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
122	res_groups_name_uniq	unique(category_id,name)	The name of the group must be unique within an application!	88	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
123	res_groups_users_rel_gid_fkey	\N	\N	88	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
124	res_groups_users_rel_uid_fkey	\N	\N	88	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
125	res_groups_category_id_fkey	\N	\N	88	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
126	res_groups_implied_rel_gid_fkey	\N	\N	88	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
127	res_groups_implied_rel_hid_fkey	\N	\N	88	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
128	res_users_login_key	unique(login)	You can not have two users with the same login !	90	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
129	res_users_partner_id_fkey	\N	\N	90	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
130	res_users_company_id_fkey	\N	\N	90	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
131	change_password_user_wizard_id_fkey	\N	\N	92	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
132	change_password_user_user_id_fkey	\N	\N	92	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
133	decimal_precision_name_uniq	unique(name)	Only one value can be defined for each given usage!	93	441	u	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
134	base_module_uninstall_module_id_fkey	\N	\N	99	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
135	rel_modules_langexport_wiz_id_fkey	\N	\N	100	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
136	rel_modules_langexport_module_id_fkey	\N	\N	100	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
137	base_partner_merge_line_wizard_id_fkey	\N	\N	102	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
138	base_partner_merge_automatic_wizard_current_line_id_fkey	\N	\N	103	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
139	base_partner_merge_automatic_wizard_res_partner_rel_base_partner_merge_automatic_wizard_id_fkey	\N	\N	103	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
140	base_partner_merge_automatic_wizard_res_partner_rel_res_partner_id_fkey	\N	\N	103	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
141	base_partner_merge_automatic_wizard_dst_partner_id_fkey	\N	\N	103	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
142	base_document_layout_company_id_fkey	\N	\N	104	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
143	base_document_layout_report_layout_id_fkey	\N	\N	104	441	f	2020-01-30 11:38:26.99497	2020-01-30 11:38:26.99497	1	1
144	base_import_tests_models_m2o_value_fkey	\N	\N	113	263	f	2020-01-30 11:38:41.337091	2020-01-30 11:38:41.337091	1	1
145	base_import_tests_models_m2o_required_value_fkey	\N	\N	115	263	f	2020-01-30 11:38:41.337091	2020-01-30 11:38:41.337091	1	1
146	base_import_tests_models_o2m_child_parent_id_fkey	\N	\N	118	263	f	2020-01-30 11:38:41.337091	2020-01-30 11:38:41.337091	1	1
147	base_import_tests_models_float_currency_id_fkey	\N	\N	120	263	f	2020-01-30 11:38:41.337091	2020-01-30 11:38:41.337091	1	1
148	base_import_tests_models_complex_currency_id_fkey	\N	\N	121	263	f	2020-01-30 11:38:41.337091	2020-01-30 11:38:41.337091	1	1
149	web_editor_converter_test_many2one_fkey	\N	\N	123	58	f	2020-01-30 11:38:43.621515	2020-01-30 11:38:43.621515	1	1
150	web_tour_tour_user_id_fkey	\N	\N	125	243	f	2020-01-30 11:38:46.562637	2020-01-30 11:38:46.562637	1	1
542	vv_noun_gender_combo_fkey	\N	\N	384	565	f	2020-02-06 14:25:17.760854	2020-02-06 14:25:17.760854	1	1
544	uom_category_uom_category_unique_type	unique(measure_type)	You can have only one category per measurement type.	387	486	u	2020-02-10 14:21:35.323517	2020-02-10 14:21:35.323517	1	1
545	uom_uom_factor_gt_zero	check(factor!=0)	The conversion ratio for a unit of measure cannot be 0!	388	486	u	2020-02-10 14:21:35.323517	2020-02-10 14:21:35.323517	1	1
546	uom_uom_rounding_gt_zero	check(rounding>0)	The rounding precision must be strictly positive.	388	486	u	2020-02-10 14:21:35.323517	2020-02-10 14:21:35.323517	1	1
547	uom_uom_factor_reference_is_one	check((uom_type = 'reference' and factor = 1.0) or(uom_type != 'reference'))	The reference unit must have a conversion factor equal to 1.	388	486	u	2020-02-10 14:21:35.323517	2020-02-10 14:21:35.323517	1	1
548	uom_uom_category_id_fkey	\N	\N	388	486	f	2020-02-10 14:21:35.323517	2020-02-10 14:21:35.323517	1	1
549	account_analytic_distribution_check_percentage	check(percentage >= 0 and percentage <= 100)	The percentage of an analytic distribution should be between 0 and 100.	389	438	u	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
550	account_analytic_distribution_account_id_fkey	\N	\N	389	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
166	res_config_settings_company_id_fkey	\N	\N	84	314	f	2020-01-31 09:41:01.701278	2020-01-31 09:41:01.701278	1	1
167	bus_presence_bus_user_presence_unique	unique(user_id)	A user can only have one IM status.	132	330	u	2020-01-31 09:41:02.659015	2020-01-31 09:41:02.659015	1	1
168	bus_presence_user_id_fkey	\N	\N	132	330	f	2020-01-31 09:41:02.659015	2020-01-31 09:41:02.659015	1	1
169	resource_calendar_company_id_fkey	\N	\N	134	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
170	resource_calendar_attendance_calendar_id_fkey	\N	\N	135	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
171	resource_calendar_attendance_resource_id_fkey	\N	\N	135	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
172	resource_resource_check_time_efficiency	check(time_efficiency>0)	Time efficiency must be strictly positive	136	535	u	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
173	resource_resource_company_id_fkey	\N	\N	136	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
174	resource_resource_user_id_fkey	\N	\N	136	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
175	resource_resource_calendar_id_fkey	\N	\N	136	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
176	resource_calendar_leaves_company_id_fkey	\N	\N	137	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
177	resource_calendar_leaves_calendar_id_fkey	\N	\N	137	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
178	resource_calendar_leaves_resource_id_fkey	\N	\N	137	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
179	res_company_resource_calendar_id_fkey	\N	\N	87	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
180	resource_test_resource_id_fkey	\N	\N	138	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
181	resource_test_company_id_fkey	\N	\N	138	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
182	resource_test_resource_calendar_id_fkey	\N	\N	138	535	f	2020-01-31 09:41:03.060603	2020-01-31 09:41:03.060603	1	1
183	utm_campaign_user_id_fkey	\N	\N	140	522	f	2020-01-31 09:41:03.73074	2020-01-31 09:41:03.73074	1	1
184	utm_campaign_stage_id_fkey	\N	\N	140	522	f	2020-01-31 09:41:03.73074	2020-01-31 09:41:03.73074	1	1
185	utm_tag_rel_tag_id_fkey	\N	\N	140	522	f	2020-01-31 09:41:03.73074	2020-01-31 09:41:03.73074	1	1
186	utm_tag_rel_campaign_id_fkey	\N	\N	140	522	f	2020-01-31 09:41:03.73074	2020-01-31 09:41:03.73074	1	1
187	utm_tag_name_uniq	unique(name)	Tag name already exists !	143	522	u	2020-01-31 09:41:03.73074	2020-01-31 09:41:03.73074	1	1
188	iap_account_res_company_rel_iap_account_id_fkey	\N	\N	145	45	f	2020-01-31 09:41:05.538844	2020-01-31 09:41:05.538844	1	1
189	iap_account_res_company_rel_res_company_id_fkey	\N	\N	145	45	f	2020-01-31 09:41:05.538844	2020-01-31 09:41:05.538844	1	1
190	mail_message_subtype_parent_id_fkey	\N	\N	146	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
191	mail_tracking_value_mail_message_id_fkey	\N	\N	147	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
192	mail_alias_alias_unique	unique(alias_name)	Unfortunately this email alias is already used, please choose a unique one	148	159	u	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
193	mail_alias_alias_model_id_fkey	\N	\N	148	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
194	mail_alias_alias_user_id_fkey	\N	\N	148	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
195	mail_alias_alias_parent_model_id_fkey	\N	\N	148	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
196	mail_followers_mail_followers_res_partner_res_model_id_uniq	unique(res_model,res_id,partner_id)	Error, a partner cannot follow twice the same object.	150	159	u	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
197	mail_followers_mail_followers_res_channel_res_model_id_uniq	unique(res_model,res_id,channel_id)	Error, a channel cannot follow twice the same object.	150	159	u	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
198	mail_followers_partner_xor_channel	check((partner_id is null) !=(channel_id is null))	Error: A follower must be either a partner or a channel (but not both).	150	159	u	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
199	mail_followers_partner_id_fkey	\N	\N	150	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
200	mail_followers_channel_id_fkey	\N	\N	150	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
201	mail_followers_mail_message_subtype_rel_mail_followers_id_fkey	\N	\N	150	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
202	mail_followers_mail_message_subtype_rel_mail_message_subtype_id_fkey	\N	\N	150	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
203	mail_message_res_partner_needaction_rel_notification_partner_required	check(notification_type not in('email','inbox') or res_partner_id is not null)	Customer is required for inbox / email notification	151	159	u	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
204	mail_message_res_partner_needaction_rel_mail_message_id_fkey	\N	\N	151	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
205	mail_message_res_partner_needaction_rel_res_partner_id_fkey	\N	\N	151	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
206	mail_message_res_partner_needaction_rel_mail_id_fkey	\N	\N	151	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
207	message_attachment_rel_message_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
208	message_attachment_rel_attachment_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
209	mail_message_parent_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
210	mail_message_subtype_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
211	mail_message_mail_activity_type_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
212	mail_message_author_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
213	mail_message_res_partner_rel_mail_message_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
214	mail_message_res_partner_rel_res_partner_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
215	mail_message_mail_channel_rel_mail_message_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
216	mail_message_mail_channel_rel_mail_channel_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
217	mail_message_res_partner_starred_rel_mail_message_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
218	mail_message_res_partner_starred_rel_res_partner_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
219	mail_message_mail_server_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
220	mail_message_moderator_id_fkey	\N	\N	152	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
221	mail_activity_type_create_uid_fkey	\N	\N	153	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
222	mail_activity_type_res_model_id_fkey	\N	\N	153	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
223	mail_activity_type_default_next_type_id_fkey	\N	\N	153	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
224	mail_activity_rel_activity_id_fkey	\N	\N	153	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
225	mail_activity_rel_recommended_id_fkey	\N	\N	153	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
226	mail_activity_type_mail_template_rel_mail_activity_type_id_fkey	\N	\N	153	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
227	mail_activity_type_mail_template_rel_mail_template_id_fkey	\N	\N	153	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
228	mail_activity_type_default_user_id_fkey	\N	\N	153	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
229	mail_activity_res_model_id_fkey	\N	\N	154	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
230	mail_activity_activity_type_id_fkey	\N	\N	154	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
231	mail_activity_user_id_fkey	\N	\N	154	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
232	mail_activity_recommended_activity_type_id_fkey	\N	\N	154	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
233	mail_activity_previous_activity_type_id_fkey	\N	\N	154	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
234	mail_mail_mail_message_id_fkey	\N	\N	156	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
235	mail_mail_res_partner_rel_mail_mail_id_fkey	\N	\N	156	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
236	mail_mail_res_partner_rel_res_partner_id_fkey	\N	\N	156	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
237	mail_blacklist_unique_email	unique(email)	Email address already exists!	160	159	u	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
238	mail_blacklist_message_main_attachment_id_fkey	\N	\N	160	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
239	mail_channel_partner_partner_id_fkey	\N	\N	162	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
240	mail_channel_partner_channel_id_fkey	\N	\N	162	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
241	mail_channel_partner_fetched_message_id_fkey	\N	\N	162	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
242	mail_channel_partner_seen_message_id_fkey	\N	\N	162	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
243	mail_moderation_channel_email_uniq	unique(email,channel_id)	The email address must be unique per channel !	163	159	u	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
244	mail_moderation_channel_id_fkey	\N	\N	163	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
245	mail_channel_group_public_id_fkey	\N	\N	164	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
246	mail_channel_res_groups_rel_mail_channel_id_fkey	\N	\N	164	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
247	mail_channel_res_groups_rel_res_groups_id_fkey	\N	\N	164	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
248	mail_channel_moderator_rel_mail_channel_id_fkey	\N	\N	164	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
249	mail_channel_moderator_rel_res_users_id_fkey	\N	\N	164	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
250	mail_channel_alias_id_fkey	\N	\N	164	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
251	mail_channel_message_main_attachment_id_fkey	\N	\N	164	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
252	mail_template_model_id_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
253	mail_template_mail_server_id_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
254	mail_template_report_template_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
255	mail_template_ref_ir_act_window_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
256	email_template_attachment_rel_email_template_id_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
257	email_template_attachment_rel_attachment_id_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
258	mail_template_model_object_field_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
259	mail_template_sub_object_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
260	mail_template_sub_model_object_field_fkey	\N	\N	165	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
261	res_partner_message_main_attachment_id_fkey	\N	\N	78	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
262	res_users_alias_id_fkey	\N	\N	90	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
263	ir_act_server_res_partner_rel_ir_act_server_id_fkey	\N	\N	22	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
264	ir_act_server_res_partner_rel_res_partner_id_fkey	\N	\N	22	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
265	ir_act_server_mail_channel_rel_ir_act_server_id_fkey	\N	\N	22	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
266	ir_act_server_mail_channel_rel_mail_channel_id_fkey	\N	\N	22	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
267	ir_act_server_template_id_fkey	\N	\N	22	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
268	ir_act_server_activity_type_id_fkey	\N	\N	22	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
269	ir_act_server_activity_user_id_fkey	\N	\N	22	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
270	mail_wizard_invite_res_partner_rel_mail_wizard_invite_id_fkey	\N	\N	168	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
271	mail_wizard_invite_res_partner_rel_res_partner_id_fkey	\N	\N	168	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
272	mail_channel_mail_wizard_invite_rel_mail_wizard_invite_id_fkey	\N	\N	168	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
273	mail_channel_mail_wizard_invite_rel_mail_channel_id_fkey	\N	\N	168	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
274	mail_compose_message_parent_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
275	mail_compose_message_ir_attachments_rel_wizard_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
276	mail_compose_message_ir_attachments_rel_attachment_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
277	mail_compose_message_author_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
278	mail_compose_message_subtype_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
279	mail_compose_message_mail_activity_type_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
280	mail_compose_message_res_partner_rel_wizard_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
281	mail_compose_message_res_partner_rel_partner_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
282	mail_compose_message_template_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
283	mail_compose_message_mail_server_id_fkey	\N	\N	169	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
284	mail_resend_message_mail_message_id_fkey	\N	\N	171	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
285	mail_message_res_partner_needaction_rel_mail_resend_message_rel_mail_resend_message_id_fkey	\N	\N	171	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
286	mail_message_res_partner_needaction_rel_mail_resend_message_rel_mail_message_res_partner_needaction_rel_id_fkey	\N	\N	171	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
287	mail_resend_partner_partner_id_fkey	\N	\N	172	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
288	mail_resend_partner_resend_wizard_id_fkey	\N	\N	172	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
289	email_template_preview_res_partner_rel_email_template_preview_id_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
290	email_template_preview_res_partner_rel_res_partner_id_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
291	email_template_preview_model_id_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
292	email_template_preview_mail_server_id_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
293	email_template_preview_report_template_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
294	email_template_preview_ref_ir_act_window_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
295	email_template_preview_model_object_field_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
296	email_template_preview_sub_object_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
297	email_template_preview_sub_model_object_field_fkey	\N	\N	173	159	f	2020-01-31 09:41:05.996465	2020-01-31 09:41:05.996465	1	1
298	res_config_settings_auth_signup_template_user_id_fkey	\N	\N	84	18	f	2020-01-31 09:41:12.804175	2020-01-31 09:41:12.804175	1	1
299	calendar_contacts_user_id_partner_id_unique	unique(user_id,partner_id)	An user cannot have twice the same contact.	174	56	u	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
300	calendar_contacts_user_id_fkey	\N	\N	174	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
301	calendar_contacts_partner_id_fkey	\N	\N	174	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
302	calendar_attendee_partner_id_fkey	\N	\N	175	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
303	calendar_attendee_event_id_fkey	\N	\N	175	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
304	calendar_event_type_name_uniq	unique(name)	Tag name already exists !	178	56	u	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
305	calendar_event_message_main_attachment_id_fkey	\N	\N	179	159	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
306	calendar_event_res_model_id_fkey	\N	\N	179	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
307	calendar_event_user_id_fkey	\N	\N	179	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
308	meeting_category_rel_event_id_fkey	\N	\N	179	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
309	meeting_category_rel_type_id_fkey	\N	\N	179	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
310	calendar_event_res_partner_rel_calendar_event_id_fkey	\N	\N	179	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
311	calendar_event_res_partner_rel_res_partner_id_fkey	\N	\N	179	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
312	calendar_alarm_calendar_event_rel_calendar_event_id_fkey	\N	\N	179	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
313	calendar_alarm_calendar_event_rel_calendar_alarm_id_fkey	\N	\N	179	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
314	mail_activity_calendar_event_id_fkey	\N	\N	154	56	f	2020-01-31 09:41:13.339435	2020-01-31 09:41:13.339435	1	1
315	fetchmail_server_object_id_fkey	\N	\N	180	300	f	2020-01-31 09:41:15.076282	2020-01-31 09:41:15.076282	1	1
316	mail_mail_fetchmail_server_id_fkey	\N	\N	156	300	f	2020-01-31 09:41:15.076282	2020-01-31 09:41:15.076282	1	1
317	res_partner_autocomplete_sync_partner_id_fkey	\N	\N	182	481	f	2020-01-31 09:41:16.148376	2020-01-31 09:41:16.148376	1	1
318	phone_blacklist_unique_number	unique(number)	Number already exists	183	419	u	2020-01-31 09:41:16.681251	2020-01-31 09:41:16.681251	1	1
319	phone_blacklist_message_main_attachment_id_fkey	\N	\N	183	159	f	2020-01-31 09:41:16.681251	2020-01-31 09:41:16.681251	1	1
320	crm_team_message_main_attachment_id_fkey	\N	\N	186	159	f	2020-01-31 09:41:17.144798	2020-01-31 09:41:17.144798	1	1
321	crm_team_company_id_fkey	\N	\N	186	33	f	2020-01-31 09:41:17.144798	2020-01-31 09:41:17.144798	1	1
322	crm_team_user_id_fkey	\N	\N	186	33	f	2020-01-31 09:41:17.144798	2020-01-31 09:41:17.144798	1	1
323	team_favorite_user_rel_team_id_fkey	\N	\N	186	33	f	2020-01-31 09:41:17.144798	2020-01-31 09:41:17.144798	1	1
324	team_favorite_user_rel_user_id_fkey	\N	\N	186	33	f	2020-01-31 09:41:17.144798	2020-01-31 09:41:17.144798	1	1
325	res_partner_team_id_fkey	\N	\N	78	33	f	2020-01-31 09:41:17.144798	2020-01-31 09:41:17.144798	1	1
326	res_users_sale_team_id_fkey	\N	\N	90	33	f	2020-01-31 09:41:17.144798	2020-01-31 09:41:17.144798	1	1
327	snailmail_letter_user_id_fkey	\N	\N	187	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
328	snailmail_letter_partner_id_fkey	\N	\N	187	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
329	snailmail_letter_company_id_fkey	\N	\N	187	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
330	snailmail_letter_report_template_fkey	\N	\N	187	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
331	snailmail_letter_attachment_id_fkey	\N	\N	187	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
332	snailmail_letter_message_id_fkey	\N	\N	187	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
333	snailmail_letter_state_id_fkey	\N	\N	187	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
334	snailmail_letter_country_id_fkey	\N	\N	187	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
335	snailmail_letter_format_error_message_id_fkey	\N	\N	189	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
336	snailmail_letter_missing_required_fields_partner_id_fkey	\N	\N	190	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
337	snailmail_letter_missing_required_fields_letter_id_fkey	\N	\N	190	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
338	snailmail_letter_missing_required_fields_state_id_fkey	\N	\N	190	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
339	snailmail_letter_missing_required_fields_country_id_fkey	\N	\N	190	158	f	2020-01-31 09:41:17.860225	2020-01-31 09:41:17.860225	1	1
340	portal_share_res_partner_rel_portal_share_id_fkey	\N	\N	192	32	f	2020-01-31 09:41:18.712393	2020-01-31 09:41:18.712393	1	1
341	portal_share_res_partner_rel_res_partner_id_fkey	\N	\N	192	32	f	2020-01-31 09:41:18.712393	2020-01-31 09:41:18.712393	1	1
342	portal_wizard_user_wizard_id_fkey	\N	\N	194	32	f	2020-01-31 09:41:18.712393	2020-01-31 09:41:18.712393	1	1
343	portal_wizard_user_partner_id_fkey	\N	\N	194	32	f	2020-01-31 09:41:18.712393	2020-01-31 09:41:18.712393	1	1
344	portal_wizard_user_user_id_fkey	\N	\N	194	32	f	2020-01-31 09:41:18.712393	2020-01-31 09:41:18.712393	1	1
345	ir_act_server_sms_template_id_fkey	\N	\N	22	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
346	mail_message_res_partner_needaction_rel_sms_id_fkey	\N	\N	151	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
347	sms_sms_partner_id_fkey	\N	\N	196	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
348	sms_sms_mail_message_id_fkey	\N	\N	196	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
349	sms_template_model_id_fkey	\N	\N	197	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
350	sms_template_sidebar_action_id_fkey	\N	\N	197	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
351	res_partner_sms_composer_rel_sms_composer_id_fkey	\N	\N	199	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
352	res_partner_sms_composer_rel_res_partner_id_fkey	\N	\N	199	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
353	sms_composer_template_id_fkey	\N	\N	199	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
354	sms_resend_recipient_sms_resend_id_fkey	\N	\N	200	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
355	sms_resend_recipient_notification_id_fkey	\N	\N	200	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
356	sms_resend_mail_message_id_fkey	\N	\N	201	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
357	sms_template_preview_sms_template_id_fkey	\N	\N	202	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
358	sms_template_preview_sidebar_action_id_fkey	\N	\N	202	6	f	2020-01-31 09:41:19.505211	2020-01-31 09:41:19.505211	1	1
359	digest_digest_res_users_rel_digest_digest_id_fkey	\N	\N	203	224	f	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
360	digest_digest_res_users_rel_res_users_id_fkey	\N	\N	203	224	f	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
361	digest_digest_template_id_fkey	\N	\N	203	224	f	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
362	digest_digest_company_id_fkey	\N	\N	203	224	f	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
363	digest_tip_res_users_rel_digest_tip_id_fkey	\N	\N	204	224	f	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
364	digest_tip_res_users_rel_res_users_id_fkey	\N	\N	204	224	f	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
365	digest_tip_group_id_fkey	\N	\N	204	224	f	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
366	res_config_settings_digest_id_fkey	\N	\N	84	224	f	2020-01-31 09:41:20.84505	2020-01-31 09:41:20.84505	1	1
367	calendar_event_opportunity_id_fkey	\N	\N	179	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
368	crm_stage_team_id_fkey	\N	\N	206	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
369	crm_lead_check_probability	check(probability >= 0 and probability <= 100)	The probability of closing the deal should be between 0% and 100%!	205	453	u	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
370	crm_lead_campaign_id_fkey	\N	\N	205	522	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
371	crm_lead_source_id_fkey	\N	\N	205	522	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
372	crm_lead_medium_id_fkey	\N	\N	205	522	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
373	crm_lead_message_main_attachment_id_fkey	\N	\N	205	159	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
374	crm_lead_partner_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
375	crm_lead_team_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
376	crm_lead_tag_rel_lead_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
377	crm_lead_tag_rel_tag_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
378	crm_lead_stage_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
379	crm_lead_user_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
380	crm_lead_state_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
381	crm_lead_country_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
382	crm_lead_lang_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
383	crm_lead_title_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
384	crm_lead_company_id_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
385	crm_lead_lost_reason_fkey	\N	\N	205	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
386	crm_lead_tag_name_uniq	unique(name)	Tag name already exists !	207	453	u	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
387	crm_team_alias_id_fkey	\N	\N	186	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
388	crm_lead_scoring_frequency_team_id_fkey	\N	\N	209	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
389	crm_lead_scoring_frequency_field_field_id_fkey	\N	\N	210	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
390	crm_lead_lost_lost_reason_id_fkey	\N	\N	212	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
391	crm_partner_binding_partner_id_fkey	\N	\N	213	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
392	crm_lead_crm_lead2opportunity_partner_rel_crm_lead2opportunity_partner_id_fkey	\N	\N	214	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
393	crm_lead_crm_lead2opportunity_partner_rel_crm_lead_id_fkey	\N	\N	214	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
394	crm_lead2opportunity_partner_user_id_fkey	\N	\N	214	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
395	crm_lead2opportunity_partner_team_id_fkey	\N	\N	214	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
396	crm_lead2opportunity_partner_partner_id_fkey	\N	\N	214	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
397	crm_lead2opportunity_partner_mass_res_users_rel_crm_lead2opportunity_partner_mass_id_fkey	\N	\N	215	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
398	crm_lead2opportunity_partner_mass_res_users_rel_res_users_id_fkey	\N	\N	215	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
399	crm_lead2opportunity_partner_mass_team_id_fkey	\N	\N	215	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
400	crm_lead_crm_lead2opportunity_partner_mass_rel_crm_lead2opportunity_partner_mass_id_fkey	\N	\N	215	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
401	crm_lead_crm_lead2opportunity_partner_mass_rel_crm_lead_id_fkey	\N	\N	215	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
402	crm_lead2opportunity_partner_mass_user_id_fkey	\N	\N	215	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
403	crm_lead2opportunity_partner_mass_partner_id_fkey	\N	\N	215	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
404	merge_opportunity_rel_merge_id_fkey	\N	\N	216	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
405	merge_opportunity_rel_opportunity_id_fkey	\N	\N	216	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
406	crm_merge_opportunity_user_id_fkey	\N	\N	216	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
407	crm_merge_opportunity_team_id_fkey	\N	\N	216	453	f	2020-01-31 09:41:21.344707	2020-01-31 09:41:21.344707	1	1
543	vv_noun_vv_mot_de_langue_id_fkey	\N	\N	384	565	f	2020-02-06 16:49:37.673093	2020-02-06 16:49:37.673093	1	1
551	account_analytic_distribution_tag_id_fkey	\N	\N	389	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
552	account_analytic_tag_company_id_fkey	\N	\N	390	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
553	account_analytic_group_parent_id_fkey	\N	\N	391	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
554	account_analytic_group_company_id_fkey	\N	\N	391	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
555	account_analytic_account_message_main_attachment_id_fkey	\N	\N	392	159	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
556	account_analytic_account_group_id_fkey	\N	\N	392	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
557	account_analytic_account_company_id_fkey	\N	\N	392	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
558	account_analytic_account_partner_id_fkey	\N	\N	392	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
559	account_analytic_line_product_uom_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
560	account_analytic_line_account_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
561	account_analytic_line_partner_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
562	account_analytic_line_user_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
563	account_analytic_line_tag_rel_line_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
564	account_analytic_line_tag_rel_tag_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
565	account_analytic_line_company_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
566	account_analytic_line_currency_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
567	account_analytic_line_group_id_fkey	\N	\N	393	438	f	2020-02-10 14:21:36.579403	2020-02-10 14:21:36.579403	1	1
672	account_tax_tax_group_id_fkey	\N	\N	420	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
673	account_tax_cash_basis_transition_account_id_fkey	\N	\N	420	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
674	account_tax_cash_basis_base_account_id_fkey	\N	\N	420	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
675	account_tax_repartition_line_account_id_fkey	\N	\N	421	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
676	account_account_tag_account_tax_repartition_line_rel_account_tax_repartition_line_id_fkey	\N	\N	421	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
677	account_account_tag_account_tax_repartition_line_rel_account_account_tag_id_fkey	\N	\N	421	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
678	account_tax_repartition_line_invoice_tax_id_fkey	\N	\N	421	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
679	account_tax_repartition_line_refund_tax_id_fkey	\N	\N	421	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
680	account_tax_repartition_line_company_id_fkey	\N	\N	421	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
681	account_reconcile_model_company_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
682	account_journal_account_reconcile_model_rel_account_reconcile_model_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
683	account_journal_account_reconcile_model_rel_account_journal_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
684	account_reconcile_model_res_partner_rel_account_reconcile_model_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
685	account_reconcile_model_res_partner_rel_res_partner_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
686	account_reconcile_model_res_partner_category_rel_account_reconcile_model_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
687	account_reconcile_model_res_partner_category_rel_res_partner_category_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
688	account_reconcile_model_account_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
689	account_reconcile_model_journal_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
690	account_reconcile_model_account_tax_rel_account_reconcile_model_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
568	product_template_message_main_attachment_id_fkey	\N	\N	394	159	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
569	product_template_categ_id_fkey	\N	\N	394	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
570	product_template_uom_id_fkey	\N	\N	394	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
571	product_template_uom_po_id_fkey	\N	\N	394	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
572	product_template_company_id_fkey	\N	\N	394	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
573	product_category_parent_id_fkey	\N	\N	395	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
574	product_product_barcode_uniq	unique(barcode)	A barcode can only be assigned to one product !	396	293	u	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
575	product_product_message_main_attachment_id_fkey	\N	\N	396	159	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
576	product_product_product_tmpl_id_fkey	\N	\N	396	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
577	product_variant_combination_product_product_id_fkey	\N	\N	396	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
578	product_variant_combination_product_template_attribute_value_id_fkey	\N	\N	396	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
579	product_packaging_product_id_fkey	\N	\N	397	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
580	product_packaging_company_id_fkey	\N	\N	397	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
581	product_supplierinfo_name_fkey	\N	\N	398	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
582	product_supplierinfo_company_id_fkey	\N	\N	398	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
583	product_supplierinfo_currency_id_fkey	\N	\N	398	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
584	product_supplierinfo_product_id_fkey	\N	\N	398	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
585	product_supplierinfo_product_tmpl_id_fkey	\N	\N	398	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
586	product_attribute_product_template_rel_product_attribute_id_fkey	\N	\N	399	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
587	product_attribute_product_template_rel_product_template_id_fkey	\N	\N	399	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
588	product_attribute_value_value_company_uniq	unique(name,attribute_id)	You cannot create two values with the same name for the same attribute.	400	293	u	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
589	product_attribute_value_attribute_id_fkey	\N	\N	400	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
590	product_attribute_value_product_template_attribute_line_rel_product_attribute_value_id_fkey	\N	\N	400	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
591	product_attribute_value_product_template_attribute_line_rel_product_template_attribute_line_id_fkey	\N	\N	400	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
592	product_template_attribute_line_product_tmpl_id_fkey	\N	\N	401	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
593	product_template_attribute_line_attribute_id_fkey	\N	\N	401	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
594	product_template_attribute_value_attribute_value_unique	unique(attribute_line_id,product_attribute_value_id)	Each value should be defined only once per attribute per product.	402	293	u	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
595	product_template_attribute_value_product_attribute_value_id_fkey	\N	\N	402	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
596	product_template_attribute_value_attribute_line_id_fkey	\N	\N	402	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
597	product_template_attribute_value_product_tmpl_id_fkey	\N	\N	402	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
598	product_template_attribute_value_attribute_id_fkey	\N	\N	402	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
599	product_template_attribute_exclusion_product_template_attribute_value_id_fkey	\N	\N	403	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
600	product_template_attribute_exclusion_product_tmpl_id_fkey	\N	\N	403	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
601	product_attr_exclusion_value_ids_rel_product_template_attribute_exclusion_id_fkey	\N	\N	403	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
602	product_attr_exclusion_value_ids_rel_product_template_attribute_value_id_fkey	\N	\N	403	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
603	product_pricelist_currency_id_fkey	\N	\N	404	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
604	product_pricelist_company_id_fkey	\N	\N	404	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
605	res_country_group_pricelist_rel_pricelist_id_fkey	\N	\N	404	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
606	res_country_group_pricelist_rel_res_country_group_id_fkey	\N	\N	404	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
607	product_pricelist_item_product_tmpl_id_fkey	\N	\N	405	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
608	product_pricelist_item_product_id_fkey	\N	\N	405	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
609	product_pricelist_item_categ_id_fkey	\N	\N	405	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
610	product_pricelist_item_base_pricelist_id_fkey	\N	\N	405	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
611	product_pricelist_item_pricelist_id_fkey	\N	\N	405	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
612	product_pricelist_item_company_id_fkey	\N	\N	405	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
613	product_pricelist_item_currency_id_fkey	\N	\N	405	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
614	product_price_list_price_list_fkey	\N	\N	407	293	f	2020-02-10 14:36:05.152054	2020-02-10 14:36:05.152054	1	1
691	account_reconcile_model_account_tax_rel_account_tax_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
692	account_reconcile_model_analytic_account_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
693	account_reconcile_model_analytic_tag_rel_account_reconcile_model_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
694	account_reconcile_model_analytic_tag_rel_account_analytic_tag_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
695	account_reconcile_model_second_account_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
696	account_reconcile_model_second_journal_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
697	account_reconcile_model_account_tax_bis_rel_account_reconcile_model_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
698	account_reconcile_model_account_tax_bis_rel_account_tax_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
699	account_reconcile_model_second_analytic_account_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
700	account_reconcile_model_second_analytic_tag_rel_account_reconcile_model_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
701	account_reconcile_model_second_analytic_tag_rel_account_analytic_tag_id_fkey	\N	\N	422	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
702	account_payment_message_main_attachment_id_fkey	\N	\N	424	159	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
703	account_payment_destination_journal_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
615	account_fiscal_position_company_id_fkey	\N	\N	408	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
616	account_fiscal_position_country_id_fkey	\N	\N	408	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
617	account_fiscal_position_country_group_id_fkey	\N	\N	408	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
618	account_fiscal_position_res_country_state_rel_account_fiscal_position_id_fkey	\N	\N	408	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
537	vv_mot_de_langue_mottype_id_fkey	\N	\N	383	565	f	2020-02-06 13:52:56.889521	2020-02-06 13:52:56.889521	1	1
538	vv_noun_gender_combo_id_fkey	\N	\N	384	565	f	2020-02-06 13:52:56.889521	2020-02-06 13:52:56.889521	1	1
539	vv_noun_mottype_id_fkey	\N	\N	384	565	f	2020-02-06 13:52:56.889521	2020-02-06 13:52:56.889521	1	1
540	vv_mots_learners_mot_de_langue_id_fkey	\N	\N	385	565	f	2020-02-06 13:52:56.889521	2020-02-06 13:52:56.889521	1	1
541	vv_mots_learners_res_partner_id_fkey	\N	\N	385	565	f	2020-02-06 13:52:56.889521	2020-02-06 13:52:56.889521	1	1
619	account_fiscal_position_res_country_state_rel_res_country_state_id_fkey	\N	\N	408	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
620	account_fiscal_position_tax_tax_src_dest_uniq	unique(position_id,tax_src_id,tax_dest_id)	A tax fiscal position could be defined only one time on same taxes.	409	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
621	account_fiscal_position_tax_position_id_fkey	\N	\N	409	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
622	account_fiscal_position_tax_tax_src_id_fkey	\N	\N	409	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
623	account_fiscal_position_tax_tax_dest_id_fkey	\N	\N	409	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
624	account_fiscal_position_account_account_src_dest_uniq	unique(position_id,account_src_id,account_dest_id)	An account fiscal position could be defined only one time on same accounts.	410	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
625	account_fiscal_position_account_position_id_fkey	\N	\N	410	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
626	account_fiscal_position_account_account_src_id_fkey	\N	\N	410	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
627	account_fiscal_position_account_account_dest_id_fkey	\N	\N	410	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
628	account_tax_report_line_tags_rel_account_account_tag_id_fkey	\N	\N	412	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
629	account_tax_report_line_tags_rel_account_tax_report_line_id_fkey	\N	\N	412	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
630	account_account_tag_country_id_fkey	\N	\N	412	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
631	account_tax_report_line_country_id_fkey	\N	\N	413	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
632	account_tax_report_line_report_action_id_fkey	\N	\N	413	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
633	account_tax_report_line_parent_id_fkey	\N	\N	413	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
634	account_account_code_company_uniq	unique(code,company_id)	The code of the account must be unique per company !	414	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
635	account_account_currency_id_fkey	\N	\N	414	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
636	account_account_user_type_id_fkey	\N	\N	414	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
637	account_account_tax_default_rel_account_id_fkey	\N	\N	414	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
638	account_account_tax_default_rel_tax_id_fkey	\N	\N	414	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
639	account_account_company_id_fkey	\N	\N	414	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
640	account_account_account_tag_account_account_id_fkey	\N	\N	414	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
641	account_account_account_tag_account_account_tag_id_fkey	\N	\N	414	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
642	account_account_group_id_fkey	\N	\N	414	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
643	account_group_parent_id_fkey	\N	\N	415	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
644	account_journal_group_company_id_fkey	\N	\N	417	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
645	account_journal_account_journal_group_rel_account_journal_group_id_fkey	\N	\N	417	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
646	account_journal_account_journal_group_rel_account_journal_id_fkey	\N	\N	417	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
647	account_journal_code_company_uniq	unique(code,name,company_id)	The code and name of the journal must be unique per company !	418	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
648	account_journal_message_main_attachment_id_fkey	\N	\N	418	159	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
649	account_journal_type_rel_journal_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
650	account_journal_type_rel_type_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
651	account_account_type_rel_journal_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
652	account_account_type_rel_account_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
653	account_journal_default_credit_account_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
654	account_journal_default_debit_account_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
655	account_journal_sequence_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
656	account_journal_refund_sequence_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
657	account_journal_currency_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
658	account_journal_company_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
659	account_journal_inbound_payment_method_rel_journal_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
660	account_journal_inbound_payment_method_rel_inbound_payment_method_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
661	account_journal_outbound_payment_method_rel_journal_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
662	account_journal_outbound_payment_method_rel_outbound_payment_method_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
663	account_journal_profit_account_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
664	account_journal_loss_account_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
665	account_journal_bank_account_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
666	account_journal_alias_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
667	account_journal_secure_sequence_id_fkey	\N	\N	418	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
668	account_tax_name_company_uniq	unique(name,company_id,type_tax_use)	Tax names must be unique !	420	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
669	account_tax_company_id_fkey	\N	\N	420	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
670	account_tax_filiation_rel_parent_tax_fkey	\N	\N	420	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
671	account_tax_filiation_rel_child_tax_fkey	\N	\N	420	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
704	account_invoice_payment_rel_payment_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
705	account_invoice_payment_rel_invoice_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
706	account_payment_payment_method_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
707	account_payment_partner_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
708	account_payment_currency_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
709	account_payment_journal_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
710	account_payment_writeoff_account_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
711	account_payment_partner_bank_account_id_fkey	\N	\N	424	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
712	account_payment_register_journal_id_fkey	\N	\N	425	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
713	account_payment_register_payment_method_id_fkey	\N	\N	425	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
714	account_invoice_payment_rel_transient_payment_id_fkey	\N	\N	425	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
715	account_invoice_payment_rel_transient_invoice_id_fkey	\N	\N	425	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
716	account_payment_term_company_id_fkey	\N	\N	426	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
717	account_payment_term_line_payment_id_fkey	\N	\N	427	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
718	account_cashbox_line_cashbox_id_fkey	\N	\N	428	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
719	account_bank_statement_message_main_attachment_id_fkey	\N	\N	431	159	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
720	account_bank_statement_journal_id_fkey	\N	\N	431	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
721	account_bank_statement_company_id_fkey	\N	\N	431	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
722	account_bank_statement_user_id_fkey	\N	\N	431	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
723	account_bank_statement_cashbox_start_id_fkey	\N	\N	431	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
724	account_bank_statement_cashbox_end_id_fkey	\N	\N	431	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
725	account_bank_statement_line_partner_id_fkey	\N	\N	432	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
726	account_bank_statement_line_bank_account_id_fkey	\N	\N	432	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
727	account_bank_statement_line_account_id_fkey	\N	\N	432	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
728	account_bank_statement_line_statement_id_fkey	\N	\N	432	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
729	account_bank_statement_line_journal_id_fkey	\N	\N	432	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
730	account_bank_statement_line_company_id_fkey	\N	\N	432	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
731	account_bank_statement_line_currency_id_fkey	\N	\N	432	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
732	account_move_message_main_attachment_id_fkey	\N	\N	433	159	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
733	account_move_journal_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
734	account_move_company_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
735	account_move_currency_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
736	account_move_partner_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
737	account_move_commercial_partner_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
738	account_move_tax_cash_basis_rec_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
739	account_move_reversed_entry_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
740	account_move_fiscal_position_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
741	account_move_invoice_user_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
742	account_move_invoice_payment_term_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
743	account_move_invoice_partner_bank_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
744	account_move_invoice_incoterm_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
745	account_move_invoice_cash_rounding_id_fkey	\N	\N	433	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
746	account_move_line_check_credit_debit	check(credit + debit>=0 and credit * debit=0)	Wrong credit or debit value in accounting entry !	434	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
747	account_move_line_check_accountable_required_fields	check(coalesce(display_type in('line_section','line_note'),'f') or account_id is not null)	Missing required account on accountable invoice line.	434	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
748	account_move_line_check_non_accountable_fields_null	check(display_type not in('line_section','line_note') or(amount_currency = 0 and debit = 0 and credit = 0 and account_id is null))	Forbidden unit price, account and quantity on non-accountable invoice line	434	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
749	account_move_line_check_amount_currency_balance_sign	check(\n                currency_id is null\n                or\n                company_currency_id is null\n                or\n               (\n                   (currency_id != company_currency_id)\n                    and\n                   (\n                       (balance > 0 and amount_currency > 0)\n                        or(balance <= 0 and amount_currency <= 0)\n                        or(balance >= 0 and amount_currency >= 0)\n                    )\n                )\n            )	The amount expressed in the secondary currency must be positive when account is debited and negative when account is credited. Moreover, the currency field has to be left empty when the amount is expressed in the company currency.	434	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
750	account_move_line_move_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
751	account_move_line_journal_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
752	account_move_line_company_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
753	account_move_line_company_currency_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
754	account_move_line_account_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
755	account_move_line_currency_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
756	account_move_line_partner_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
757	account_move_line_product_uom_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
758	account_move_line_product_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
759	account_move_line_reconcile_model_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
760	account_move_line_payment_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
761	account_move_line_statement_line_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
762	account_move_line_statement_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
763	account_move_line_account_tax_rel_account_move_line_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
764	account_move_line_account_tax_rel_account_tax_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
765	account_move_line_tax_line_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
766	account_move_line_tax_group_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
767	account_move_line_tax_repartition_line_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
768	account_account_tag_account_move_line_rel_account_move_line_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
769	account_account_tag_account_move_line_rel_account_account_tag_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
770	account_move_line_full_reconcile_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
771	account_move_line_analytic_account_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
772	account_analytic_tag_account_move_line_rel_account_move_line_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
773	account_analytic_tag_account_move_line_rel_account_analytic_tag_id_fkey	\N	\N	434	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
774	account_partial_reconcile_debit_move_id_fkey	\N	\N	435	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
775	account_partial_reconcile_credit_move_id_fkey	\N	\N	435	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
776	account_partial_reconcile_currency_id_fkey	\N	\N	435	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
777	account_partial_reconcile_company_id_fkey	\N	\N	435	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
778	account_partial_reconcile_full_reconcile_id_fkey	\N	\N	435	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
779	account_full_reconcile_exchange_move_id_fkey	\N	\N	436	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
780	account_account_template_currency_id_fkey	\N	\N	437	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
781	account_account_template_user_type_id_fkey	\N	\N	437	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
782	account_account_template_tax_rel_account_id_fkey	\N	\N	437	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
783	account_account_template_tax_rel_tax_id_fkey	\N	\N	437	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
784	account_account_template_chart_template_id_fkey	\N	\N	437	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
785	account_account_template_account_tag_account_account_template_id_fkey	\N	\N	437	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
786	account_account_template_account_tag_account_account_tag_id_fkey	\N	\N	437	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
787	account_account_template_group_id_fkey	\N	\N	437	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
788	account_chart_template_parent_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
789	account_chart_template_currency_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
790	account_chart_template_income_currency_exchange_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
791	account_chart_template_expense_currency_exchange_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
792	account_chart_template_default_cash_difference_income_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
793	account_chart_template_default_cash_difference_expense_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
794	account_chart_template_default_pos_receivable_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
795	account_chart_template_property_account_receivable_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
796	account_chart_template_property_account_payable_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
797	account_chart_template_property_account_expense_categ_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
798	account_chart_template_property_account_income_categ_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
799	account_chart_template_property_account_expense_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
800	account_chart_template_property_account_income_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
801	account_chart_template_property_stock_account_input_categ_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
802	account_chart_template_property_stock_account_output_categ_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
803	account_chart_template_property_stock_valuation_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
804	account_chart_template_property_tax_payable_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
805	account_chart_template_property_tax_receivable_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
806	account_chart_template_property_advance_tax_payment_account_id_fkey	\N	\N	438	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
807	account_tax_template_name_company_uniq	unique(name,type_tax_use,chart_template_id)	Tax names must be unique !	439	518	u	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
808	account_tax_template_chart_template_id_fkey	\N	\N	439	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
809	account_tax_template_filiation_rel_parent_tax_fkey	\N	\N	439	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
810	account_tax_template_filiation_rel_child_tax_fkey	\N	\N	439	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
811	account_tax_template_tax_group_id_fkey	\N	\N	439	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
812	account_tax_template_cash_basis_transition_account_id_fkey	\N	\N	439	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
813	account_tax_template_cash_basis_base_account_id_fkey	\N	\N	439	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
814	account_tax_repartition_line_template_account_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
815	account_tax_repartition_line_template_invoice_tax_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
816	account_tax_repartition_line_template_refund_tax_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
817	account_tax_repartition_financial_tags_account_tax_repartition_line_template_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
818	account_tax_repartition_financial_tags_account_account_tag_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
819	account_tax_repartition_plus_report_line_account_tax_repartition_line_template_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
820	account_tax_repartition_plus_report_line_account_tax_report_line_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
944	account_move_purchase_order_rel_account_move_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
821	account_tax_repartition_minus_report_line_account_tax_repartition_line_template_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
822	account_tax_repartition_minus_report_line_account_tax_report_line_id_fkey	\N	\N	440	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
823	account_fiscal_position_template_chart_template_id_fkey	\N	\N	441	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
824	account_fiscal_position_template_country_id_fkey	\N	\N	441	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
825	account_fiscal_position_template_country_group_id_fkey	\N	\N	441	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
826	account_fiscal_position_template_res_country_state_rel_account_fiscal_position_template_id_fkey	\N	\N	441	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
827	account_fiscal_position_template_res_country_state_rel_res_country_state_id_fkey	\N	\N	441	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
828	account_fiscal_position_tax_template_position_id_fkey	\N	\N	442	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
829	account_fiscal_position_tax_template_tax_src_id_fkey	\N	\N	442	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
830	account_fiscal_position_tax_template_tax_dest_id_fkey	\N	\N	442	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
831	account_fiscal_position_account_template_position_id_fkey	\N	\N	443	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
832	account_fiscal_position_account_template_account_src_id_fkey	\N	\N	443	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
833	account_fiscal_position_account_template_account_dest_id_fkey	\N	\N	443	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
834	account_reconcile_model_template_chart_template_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
835	account_journal_account_reconcile_model_template_rel_account_reconcile_model_template_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
836	account_journal_account_reconcile_model_template_rel_account_journal_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
837	account_reconcile_model_template_res_partner_rel_account_reconcile_model_template_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
838	account_reconcile_model_template_res_partner_rel_res_partner_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
839	account_reconcile_model_template_res_partner_category_rel_account_reconcile_model_template_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
840	account_reconcile_model_template_res_partner_category_rel_res_partner_category_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
841	account_reconcile_model_template_account_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
842	account_reconcile_model_template_account_tax_template_rel_account_reconcile_model_template_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
843	account_reconcile_model_template_account_tax_template_rel_account_tax_template_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
844	account_reconcile_model_template_second_account_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
845	account_reconcile_model_tmpl_account_tax_bis_rel_account_reconcile_model_template_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
846	account_reconcile_model_tmpl_account_tax_bis_rel_account_tax_template_id_fkey	\N	\N	444	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
847	account_analytic_line_product_id_fkey	\N	\N	393	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
848	account_analytic_line_general_account_id_fkey	\N	\N	393	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
849	account_analytic_line_move_id_fkey	\N	\N	393	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
850	product_taxes_rel_prod_id_fkey	\N	\N	394	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
851	product_taxes_rel_tax_id_fkey	\N	\N	394	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
852	product_supplier_taxes_rel_prod_id_fkey	\N	\N	394	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
853	product_supplier_taxes_rel_tax_id_fkey	\N	\N	394	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
854	account_fiscal_year_company_id_fkey	\N	\N	445	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
855	res_company_transfer_account_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
856	res_company_chart_template_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
857	res_company_default_cash_difference_income_account_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
858	res_company_default_cash_difference_expense_account_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
859	res_company_account_sale_tax_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
860	res_company_account_purchase_tax_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
861	res_company_tax_cash_basis_journal_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
862	res_company_currency_exchange_journal_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
863	res_company_property_stock_account_input_categ_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
864	res_company_property_stock_account_output_categ_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
865	res_company_property_stock_valuation_account_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
866	res_company_incoterm_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
867	res_company_account_opening_move_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
868	res_company_account_default_pos_receivable_account_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
869	res_company_expense_accrual_account_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
870	res_company_revenue_accrual_account_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
871	res_company_accrual_default_journal_id_fkey	\N	\N	87	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
872	res_config_settings_chart_template_id_fkey	\N	\N	84	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
873	account_cash_rounding_account_id_fkey	\N	\N	446	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
874	account_accrual_accounting_wizard_company_id_fkey	\N	\N	449	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
875	account_accrual_accounting_wizard_account_move_line_rel_account_accrual_accounting_wizard_id_fkey	\N	\N	449	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
876	account_accrual_accounting_wizard_account_move_line_rel_account_move_line_id_fkey	\N	\N	449	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
877	account_move_reversal_move_id_fkey	\N	\N	453	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
878	account_move_reversal_journal_id_fkey	\N	\N	453	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
879	account_common_report_company_id_fkey	\N	\N	454	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
880	account_common_report_account_journal_rel_account_common_report_id_fkey	\N	\N	454	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
881	account_common_report_account_journal_rel_account_journal_id_fkey	\N	\N	454	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
882	account_common_journal_report_company_id_fkey	\N	\N	455	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
883	account_common_journal_report_account_journal_rel_account_common_journal_report_id_fkey	\N	\N	455	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
884	account_common_journal_report_account_journal_rel_account_journal_id_fkey	\N	\N	455	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
885	account_journal_account_print_journal_rel_account_print_journal_id_fkey	\N	\N	456	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
886	account_journal_account_print_journal_rel_account_journal_id_fkey	\N	\N	456	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
887	account_print_journal_company_id_fkey	\N	\N	456	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
888	account_financial_year_op_company_id_fkey	\N	\N	457	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
889	account_setup_bank_manual_config_res_partner_bank_id_fkey	\N	\N	458	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
890	tax_adjustments_wizard_journal_id_fkey	\N	\N	459	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
891	tax_adjustments_wizard_debit_account_id_fkey	\N	\N	459	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
892	tax_adjustments_wizard_credit_account_id_fkey	\N	\N	459	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
893	tax_adjustments_wizard_tax_report_line_id_fkey	\N	\N	459	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
894	tax_adjustments_wizard_company_currency_id_fkey	\N	\N	459	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
895	tax_adjustments_wizard_country_id_fkey	\N	\N	459	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
896	account_move_account_invoice_send_rel_account_invoice_send_id_fkey	\N	\N	460	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
897	account_move_account_invoice_send_rel_account_move_id_fkey	\N	\N	460	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
898	account_invoice_send_composer_id_fkey	\N	\N	460	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
899	account_invoice_send_template_id_fkey	\N	\N	460	518	f	2020-02-10 14:36:08.744986	2020-02-10 14:36:08.744986	1	1
900	account_bank_statement_line_unique_import_id	unique(unique_import_id)	A bank account transactions can be imported only once !	432	384	u	2020-02-10 14:36:20.142439	2020-02-10 14:36:20.142439	1	1
901	account_bank_statement_import_ir_attachment_rel_account_bank_statement_import_id_fkey	\N	\N	466	384	f	2020-02-10 14:36:20.142439	2020-02-10 14:36:20.142439	1	1
902	account_bank_statement_import_ir_attachment_rel_ir_attachment_id_fkey	\N	\N	466	384	f	2020-02-10 14:36:20.142439	2020-02-10 14:36:20.142439	1	1
903	account_bank_statement_import_journal_creation_journal_id_fkey	\N	\N	467	384	f	2020-02-10 14:36:20.142439	2020-02-10 14:36:20.142439	1	1
904	account_invoice_extract_words_invoice_id_fkey	\N	\N	468	140	f	2020-02-10 14:36:21.464776	2020-02-10 14:36:21.464776	1	1
905	account_online_provider_message_main_attachment_id_fkey	\N	\N	469	159	f	2020-02-10 14:36:22.568103	2020-02-10 14:36:22.568103	1	1
906	account_online_provider_company_id_fkey	\N	\N	469	380	f	2020-02-10 14:36:22.568103	2020-02-10 14:36:22.568103	1	1
907	account_online_journal_account_online_provider_id_fkey	\N	\N	470	380	f	2020-02-10 14:36:22.568103	2020-02-10 14:36:22.568103	1	1
908	account_online_link_wizard_journal_id_fkey	\N	\N	471	380	f	2020-02-10 14:36:22.568103	2020-02-10 14:36:22.568103	1	1
909	account_online_link_wizard_online_account_id_fkey	\N	\N	471	380	f	2020-02-10 14:36:22.568103	2020-02-10 14:36:22.568103	1	1
910	account_online_link_wizard_account_online_wizard_id_fkey	\N	\N	471	380	f	2020-02-10 14:36:22.568103	2020-02-10 14:36:22.568103	1	1
911	account_journal_account_online_journal_id_fkey	\N	\N	418	380	f	2020-02-10 14:36:22.568103	2020-02-10 14:36:22.568103	1	1
912	payment_acquirer_company_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
913	payment_acquirer_view_template_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
914	payment_acquirer_registration_view_template_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
915	payment_acquirer_journal_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
916	payment_country_rel_payment_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
917	payment_country_rel_country_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
918	payment_acquirer_module_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
919	payment_acquirer_payment_icon_rel_payment_acquirer_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
920	payment_acquirer_payment_icon_rel_payment_icon_id_fkey	\N	\N	473	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
921	payment_transaction_reference_uniq	unique(reference)	Reference must be unique!	475	273	u	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
922	payment_transaction_acquirer_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
923	payment_transaction_currency_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
924	payment_transaction_partner_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
925	payment_transaction_partner_country_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
926	payment_transaction_callback_model_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
927	payment_transaction_payment_token_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
928	payment_transaction_payment_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
929	account_invoice_transaction_rel_transaction_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
930	account_invoice_transaction_rel_invoice_id_fkey	\N	\N	475	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
931	payment_token_partner_id_fkey	\N	\N	476	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
932	payment_token_acquirer_id_fkey	\N	\N	476	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
933	payment_token_company_id_fkey	\N	\N	476	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
934	account_payment_payment_transaction_id_fkey	\N	\N	424	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
935	account_payment_payment_token_id_fkey	\N	\N	424	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
936	payment_link_wizard_currency_id_fkey	\N	\N	478	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
937	payment_link_wizard_partner_id_fkey	\N	\N	478	273	f	2020-02-10 14:36:25.259665	2020-02-10 14:36:25.259665	1	1
938	account_move_line_purchase_line_id_fkey	\N	\N	434	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
939	purchase_order_message_main_attachment_id_fkey	\N	\N	479	159	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
940	purchase_order_partner_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
941	purchase_order_dest_address_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
942	purchase_order_currency_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
943	account_move_purchase_order_rel_purchase_order_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
945	purchase_order_fiscal_position_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
946	purchase_order_payment_term_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
947	purchase_order_incoterm_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
948	purchase_order_user_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
949	purchase_order_company_id_fkey	\N	\N	479	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
950	purchase_order_line_accountable_required_fields	check(display_type is not null or(product_id is not null and product_uom is not null and date_planned is not null))	Missing required fields on accountable purchase order line.	480	299	u	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
951	purchase_order_line_non_accountable_null_fields	check(display_type is null or(product_id is null and price_unit = 0 and product_uom_qty = 0 and product_uom is null and date_planned is null))	Forbidden values on non-accountable purchase order line	480	299	u	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
952	account_tax_purchase_order_line_rel_purchase_order_line_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
953	account_tax_purchase_order_line_rel_account_tax_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
954	purchase_order_line_product_uom_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
955	purchase_order_line_product_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
956	purchase_order_line_order_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
957	purchase_order_line_account_analytic_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
958	account_analytic_tag_purchase_order_line_rel_purchase_order_line_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
959	account_analytic_tag_purchase_order_line_rel_account_analytic_tag_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
960	purchase_order_line_company_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
961	purchase_order_line_partner_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
962	purchase_order_line_currency_id_fkey	\N	\N	480	299	f	2020-02-10 14:36:28.146491	2020-02-10 14:36:28.146491	1	1
963	account_journal_check_sequence_id_fkey	\N	\N	418	133	f	2020-02-10 14:36:39.355391	2020-02-10 14:36:39.355391	1	1
964	product_template_tic_category_id_fkey	\N	\N	394	399	f	2020-02-10 14:36:42.82884	2020-02-10 14:36:42.82884	1	1
965	res_company_tic_category_id_fkey	\N	\N	87	399	f	2020-02-10 14:36:42.82884	2020-02-10 14:36:42.82884	1	1
966	product_category_tic_category_id_fkey	\N	\N	395	399	f	2020-02-10 14:36:42.82884	2020-02-10 14:36:42.82884	1	1
967	barcode_rule_barcode_nomenclature_id_fkey	\N	\N	486	240	f	2020-02-11 11:17:22.119845	2020-02-11 11:17:22.119845	1	1
968	res_company_nomenclature_id_fkey	\N	\N	87	240	f	2020-02-11 11:17:22.119845	2020-02-11 11:17:22.119845	1	1
969	stock_putaway_rule_product_id_fkey	\N	\N	489	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
970	stock_putaway_rule_category_id_fkey	\N	\N	489	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
971	stock_putaway_rule_location_in_id_fkey	\N	\N	489	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
972	stock_putaway_rule_location_out_id_fkey	\N	\N	489	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
973	stock_putaway_rule_company_id_fkey	\N	\N	489	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
974	res_company_internal_transit_location_id_fkey	\N	\N	87	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
975	res_company_stock_mail_confirmation_template_id_fkey	\N	\N	87	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
976	stock_inventory_company_id_fkey	\N	\N	490	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
977	stock_inventory_stock_location_rel_stock_inventory_id_fkey	\N	\N	490	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
978	stock_inventory_stock_location_rel_stock_location_id_fkey	\N	\N	490	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
979	product_product_stock_inventory_rel_stock_inventory_id_fkey	\N	\N	490	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
980	product_product_stock_inventory_rel_product_product_id_fkey	\N	\N	490	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
981	stock_inventory_line_inventory_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
982	stock_inventory_line_partner_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
983	stock_inventory_line_product_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
984	stock_inventory_line_product_uom_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
985	stock_inventory_line_categ_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
986	stock_inventory_line_location_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
987	stock_inventory_line_package_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
988	stock_inventory_line_prod_lot_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
989	stock_inventory_line_company_id_fkey	\N	\N	491	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
990	stock_location_barcode_company_uniq	unique(barcode,company_id)	The barcode for a location must be unique per company !	492	512	u	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
991	stock_location_location_id_fkey	\N	\N	492	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
992	stock_location_company_id_fkey	\N	\N	492	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
993	stock_location_removal_strategy_id_fkey	\N	\N	492	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
994	stock_location_route_supplied_wh_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
995	stock_location_route_supplier_wh_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
996	stock_location_route_company_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
997	stock_route_product_route_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
998	stock_route_product_product_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
999	stock_location_route_categ_route_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1000	stock_location_route_categ_categ_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1001	stock_route_warehouse_route_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1002	stock_route_warehouse_warehouse_id_fkey	\N	\N	493	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1003	stock_move_company_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1004	stock_move_product_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1005	stock_move_product_uom_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1006	stock_move_location_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1007	stock_move_location_dest_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1008	stock_move_partner_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1009	stock_move_move_rel_move_orig_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1010	stock_move_move_rel_move_dest_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1011	stock_move_picking_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1012	stock_move_group_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1013	stock_move_rule_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1014	stock_move_picking_type_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1015	stock_move_inventory_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1016	stock_move_origin_returned_move_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1017	stock_move_restrict_partner_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1018	stock_location_route_move_move_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1019	stock_location_route_move_route_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1020	stock_move_warehouse_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1021	stock_move_package_level_id_fkey	\N	\N	494	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1022	stock_move_line_picking_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1023	stock_move_line_move_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1024	stock_move_line_company_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1025	stock_move_line_product_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1026	stock_move_line_product_uom_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1027	stock_move_line_package_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1028	stock_move_line_package_level_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1029	stock_move_line_lot_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1030	stock_move_line_result_package_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1031	stock_move_line_owner_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1032	stock_move_line_location_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1033	stock_move_line_location_dest_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1034	stock_move_line_consume_rel_consume_line_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1035	stock_move_line_consume_rel_produce_line_id_fkey	\N	\N	495	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1036	stock_production_lot_name_ref_uniq	unique(name,product_id,company_id)	The combination of serial number and product must be unique across a company !	496	512	u	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1037	stock_production_lot_message_main_attachment_id_fkey	\N	\N	496	159	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1038	stock_production_lot_product_id_fkey	\N	\N	496	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1039	stock_production_lot_product_uom_id_fkey	\N	\N	496	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1040	stock_production_lot_company_id_fkey	\N	\N	496	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1041	stock_picking_type_sequence_id_fkey	\N	\N	497	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1042	stock_picking_type_default_location_src_id_fkey	\N	\N	497	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1043	stock_picking_type_default_location_dest_id_fkey	\N	\N	497	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1044	stock_picking_type_return_picking_type_id_fkey	\N	\N	497	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1045	stock_picking_type_warehouse_id_fkey	\N	\N	497	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1046	stock_picking_type_company_id_fkey	\N	\N	497	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1047	stock_picking_name_uniq	unique(name,company_id)	Reference must be unique per company!	498	512	u	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1048	stock_picking_message_main_attachment_id_fkey	\N	\N	498	159	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1049	stock_picking_backorder_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1050	stock_picking_group_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1051	stock_picking_location_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1052	stock_picking_location_dest_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1053	stock_picking_picking_type_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1054	stock_picking_partner_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1055	stock_picking_company_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1056	stock_picking_user_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1057	stock_picking_owner_id_fkey	\N	\N	498	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1058	stock_quant_product_id_fkey	\N	\N	499	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1059	stock_quant_company_id_fkey	\N	\N	499	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1060	stock_quant_location_id_fkey	\N	\N	499	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1061	stock_quant_lot_id_fkey	\N	\N	499	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1062	stock_quant_package_id_fkey	\N	\N	499	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1063	stock_quant_owner_id_fkey	\N	\N	499	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1064	stock_quant_package_packaging_id_fkey	\N	\N	500	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1065	stock_quant_package_location_id_fkey	\N	\N	500	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1066	stock_quant_package_company_id_fkey	\N	\N	500	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1067	stock_rule_group_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1068	stock_rule_company_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1069	stock_rule_location_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1070	stock_rule_location_src_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1071	stock_rule_route_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1072	stock_rule_picking_type_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1073	stock_rule_partner_address_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1074	stock_rule_warehouse_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1075	stock_rule_propagate_warehouse_id_fkey	\N	\N	501	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1076	procurement_group_partner_id_fkey	\N	\N	502	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1077	stock_warehouse_warehouse_name_uniq	unique(name,company_id)	The name of the warehouse must be unique per company!	503	512	u	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1145	product_replenish_warehouse_id_fkey	\N	\N	522	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1078	stock_warehouse_warehouse_code_uniq	unique(code,company_id)	The code of the warehouse must be unique per company!	503	512	u	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1079	stock_warehouse_company_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1080	stock_warehouse_partner_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1081	stock_warehouse_view_location_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1082	stock_warehouse_lot_stock_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1083	stock_warehouse_wh_input_stock_loc_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1084	stock_warehouse_wh_qc_stock_loc_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1085	stock_warehouse_wh_output_stock_loc_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1086	stock_warehouse_wh_pack_stock_loc_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1087	stock_warehouse_mto_pull_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1088	stock_warehouse_pick_type_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1089	stock_warehouse_pack_type_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1090	stock_warehouse_out_type_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1091	stock_warehouse_in_type_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1092	stock_warehouse_int_type_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1093	stock_warehouse_crossdock_route_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1094	stock_warehouse_reception_route_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1095	stock_warehouse_delivery_route_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1096	stock_wh_resupply_table_supplied_wh_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1097	stock_wh_resupply_table_supplier_wh_id_fkey	\N	\N	503	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1098	stock_warehouse_orderpoint_qty_multiple_check	check( qty_multiple >= 0 )	Qty Multiple must be greater than or equal to zero.	504	512	u	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1099	stock_warehouse_orderpoint_warehouse_id_fkey	\N	\N	504	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1100	stock_warehouse_orderpoint_location_id_fkey	\N	\N	504	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1101	stock_warehouse_orderpoint_product_id_fkey	\N	\N	504	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1102	stock_warehouse_orderpoint_group_id_fkey	\N	\N	504	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1103	stock_warehouse_orderpoint_company_id_fkey	\N	\N	504	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1104	stock_scrap_message_main_attachment_id_fkey	\N	\N	505	159	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1105	stock_scrap_company_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1106	stock_scrap_product_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1107	stock_scrap_product_uom_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1108	stock_scrap_lot_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1109	stock_scrap_package_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1110	stock_scrap_owner_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1111	stock_scrap_move_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1112	stock_scrap_picking_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1113	stock_scrap_location_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1114	stock_scrap_scrap_location_id_fkey	\N	\N	505	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1115	product_category_removal_strategy_id_fkey	\N	\N	395	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1116	stock_package_level_package_id_fkey	\N	\N	506	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1117	stock_package_level_picking_id_fkey	\N	\N	506	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1118	stock_package_level_location_dest_id_fkey	\N	\N	506	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1119	stock_package_level_company_id_fkey	\N	\N	506	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1120	stock_assign_serial_move_id_fkey	\N	\N	510	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1121	stock_return_picking_line_product_id_fkey	\N	\N	511	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1122	stock_return_picking_line_wizard_id_fkey	\N	\N	511	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1123	stock_return_picking_line_move_id_fkey	\N	\N	511	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1124	stock_return_picking_picking_id_fkey	\N	\N	512	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1125	stock_return_picking_original_location_id_fkey	\N	\N	512	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1126	stock_return_picking_parent_location_id_fkey	\N	\N	512	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1127	stock_return_picking_location_id_fkey	\N	\N	512	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1128	stock_change_product_qty_product_id_fkey	\N	\N	513	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1129	stock_change_product_qty_product_tmpl_id_fkey	\N	\N	513	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1130	stock_picking_transfer_rel_stock_immediate_transfer_id_fkey	\N	\N	515	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1131	stock_picking_transfer_rel_stock_picking_id_fkey	\N	\N	515	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1132	stock_picking_backorder_rel_stock_backorder_confirmation_id_fkey	\N	\N	516	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1133	stock_picking_backorder_rel_stock_picking_id_fkey	\N	\N	516	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1134	stock_overprocessed_transfer_picking_id_fkey	\N	\N	517	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1135	stock_rules_report_product_id_fkey	\N	\N	519	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1136	stock_rules_report_product_tmpl_id_fkey	\N	\N	519	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1137	stock_rules_report_stock_warehouse_rel_stock_rules_report_id_fkey	\N	\N	519	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1138	stock_rules_report_stock_warehouse_rel_stock_warehouse_id_fkey	\N	\N	519	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1139	stock_warn_insufficient_qty_scrap_scrap_id_fkey	\N	\N	521	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1140	stock_warn_insufficient_qty_scrap_product_id_fkey	\N	\N	521	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1141	stock_warn_insufficient_qty_scrap_location_id_fkey	\N	\N	521	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1142	product_replenish_product_id_fkey	\N	\N	522	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1143	product_replenish_product_tmpl_id_fkey	\N	\N	522	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1144	product_replenish_product_uom_id_fkey	\N	\N	522	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1146	product_replenish_stock_location_route_rel_product_replenish_id_fkey	\N	\N	522	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1147	product_replenish_stock_location_route_rel_stock_location_route_id_fkey	\N	\N	522	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1148	product_replenish_company_id_fkey	\N	\N	522	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1149	stock_track_confirmation_inventory_id_fkey	\N	\N	523	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1150	stock_track_line_product_id_fkey	\N	\N	524	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1151	stock_track_line_wizard_id_fkey	\N	\N	524	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1152	stock_package_destination_picking_id_fkey	\N	\N	525	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1153	stock_package_destination_location_dest_id_fkey	\N	\N	525	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1154	stock_picking_responsible_user_id_fkey	\N	\N	526	512	f	2020-02-11 11:17:24.480949	2020-02-11 11:17:24.480949	1	1
1155	res_company_stock_sms_confirmation_template_id_fkey	\N	\N	87	440	f	2020-02-11 11:17:33.261454	2020-02-11 11:17:33.261454	1	1
1156	confirm_stock_sms_picking_id_fkey	\N	\N	528	440	f	2020-02-11 11:17:33.261454	2020-02-11 11:17:33.261454	1	1
1157	account_move_stock_move_id_fkey	\N	\N	433	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1158	stock_location_valuation_in_account_id_fkey	\N	\N	492	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1159	stock_location_valuation_out_account_id_fkey	\N	\N	492	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1160	stock_valuation_layer_company_id_fkey	\N	\N	529	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1161	stock_valuation_layer_product_id_fkey	\N	\N	529	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1162	stock_valuation_layer_stock_valuation_layer_id_fkey	\N	\N	529	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1163	stock_valuation_layer_stock_move_id_fkey	\N	\N	529	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1164	stock_valuation_layer_account_move_id_fkey	\N	\N	529	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1165	stock_change_standard_price_counterpart_account_id_fkey	\N	\N	530	378	f	2020-02-11 11:17:33.825783	2020-02-11 11:17:33.825783	1	1
1166	purchase_order_stock_picking_rel_purchase_order_id_fkey	\N	\N	479	319	f	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
1167	purchase_order_stock_picking_rel_stock_picking_id_fkey	\N	\N	479	319	f	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
1168	purchase_order_picking_type_id_fkey	\N	\N	479	319	f	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
1169	purchase_order_group_id_fkey	\N	\N	479	319	f	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
1170	purchase_order_line_orderpoint_id_fkey	\N	\N	480	319	f	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
1171	stock_move_purchase_line_id_fkey	\N	\N	494	319	f	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
1172	stock_move_created_purchase_line_id_fkey	\N	\N	494	319	f	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
1173	stock_warehouse_buy_pull_id_fkey	\N	\N	503	319	f	2020-02-11 11:17:35.484673	2020-02-11 11:17:35.484673	1	1
1179	t_mot_mottype_id_fkey	\N	\N	536	565	f	2020-02-11 13:53:19.072133	2020-02-11 13:53:19.072133	1	1
1184	t_mot_mottype_fkey	\N	\N	536	565	f	2020-02-11 15:16:23.586595	2020-02-11 15:16:23.586595	1	1
1185	hr_employee_barcode_uniq	unique(barcode)	The Badge ID must be unique, this one is already assigned to another employee.	539	203	u	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1186	hr_employee_user_uniq	unique(user_id,company_id)	A user cannot be linked to multiple employees in the same company.	539	203	u	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1187	hr_employee_user_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1188	hr_employee_address_home_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1189	hr_employee_country_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1190	hr_employee_country_of_birth_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1191	hr_employee_bank_account_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1192	employee_category_rel_emp_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1193	employee_category_rel_category_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1194	hr_employee_message_main_attachment_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1195	hr_employee_department_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1196	hr_employee_job_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1197	hr_employee_company_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1198	hr_employee_address_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1199	hr_employee_resource_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1200	hr_employee_resource_calendar_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1201	hr_employee_parent_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1202	hr_employee_coach_id_fkey	\N	\N	539	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1203	hr_employee_category_name_uniq	unique(name)	Tag name already exists !	540	203	u	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1204	hr_department_message_main_attachment_id_fkey	\N	\N	542	159	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1205	hr_department_company_id_fkey	\N	\N	542	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1206	hr_department_parent_id_fkey	\N	\N	542	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1207	hr_department_manager_id_fkey	\N	\N	542	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1208	hr_job_name_company_uniq	unique(name,company_id,department_id)	The name of the job position must be unique per department in company!	543	203	u	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1209	hr_job_message_main_attachment_id_fkey	\N	\N	543	159	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1210	hr_job_department_id_fkey	\N	\N	543	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1211	hr_job_company_id_fkey	\N	\N	543	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1212	hr_plan_activity_type_activity_type_id_fkey	\N	\N	544	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1213	hr_plan_activity_type_responsible_id_fkey	\N	\N	544	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1214	hr_plan_hr_plan_activity_type_rel_hr_plan_id_fkey	\N	\N	545	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1215	hr_plan_hr_plan_activity_type_rel_hr_plan_activity_type_id_fkey	\N	\N	545	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1216	hr_department_mail_channel_rel_mail_channel_id_fkey	\N	\N	164	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1217	hr_department_mail_channel_rel_hr_department_id_fkey	\N	\N	164	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1218	hr_plan_wizard_plan_id_fkey	\N	\N	546	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1219	hr_plan_wizard_employee_id_fkey	\N	\N	546	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1220	hr_departure_wizard_plan_id_fkey	\N	\N	547	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1221	hr_departure_wizard_employee_id_fkey	\N	\N	547	203	f	2020-02-13 10:46:42.952277	2020-02-13 10:46:42.952277	1	1
1222	hr_employee_contract_id_fkey	\N	\N	539	196	f	2020-02-13 10:46:46.83135	2020-02-13 10:46:46.83135	1	1
1223	hr_contract_message_main_attachment_id_fkey	\N	\N	548	159	f	2020-02-13 10:46:46.83135	2020-02-13 10:46:46.83135	1	1
1224	hr_contract_employee_id_fkey	\N	\N	548	196	f	2020-02-13 10:46:46.83135	2020-02-13 10:46:46.83135	1	1
1225	hr_contract_department_id_fkey	\N	\N	548	196	f	2020-02-13 10:46:46.83135	2020-02-13 10:46:46.83135	1	1
1226	hr_contract_job_id_fkey	\N	\N	548	196	f	2020-02-13 10:46:46.83135	2020-02-13 10:46:46.83135	1	1
1227	hr_contract_resource_calendar_id_fkey	\N	\N	548	196	f	2020-02-13 10:46:46.83135	2020-02-13 10:46:46.83135	1	1
1228	hr_contract_company_id_fkey	\N	\N	548	196	f	2020-02-13 10:46:46.83135	2020-02-13 10:46:46.83135	1	1
1229	hr_contract_hr_responsible_id_fkey	\N	\N	548	196	f	2020-02-13 10:46:46.83135	2020-02-13 10:46:46.83135	1	1
1230	hr_employee_expense_manager_id_fkey	\N	\N	539	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1231	account_move_line_expense_id_fkey	\N	\N	434	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1232	hr_expense_message_main_attachment_id_fkey	\N	\N	550	159	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1233	hr_expense_employee_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1234	hr_expense_product_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1235	hr_expense_product_uom_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1236	expense_tax_expense_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1237	expense_tax_tax_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1238	hr_expense_company_currency_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1239	hr_expense_company_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1240	hr_expense_currency_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1241	hr_expense_analytic_account_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1242	account_analytic_tag_hr_expense_rel_hr_expense_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1243	account_analytic_tag_hr_expense_rel_account_analytic_tag_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1244	hr_expense_account_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1245	hr_expense_sheet_id_fkey	\N	\N	550	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1246	hr_expense_sheet_journal_id_required_posted	check((state in('post','done') and journal_id is not null) or(state not in('post','done')))	The journal must be set on posted expense	551	451	u	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1247	hr_expense_sheet_message_main_attachment_id_fkey	\N	\N	551	159	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1248	hr_expense_sheet_employee_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1249	hr_expense_sheet_address_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1250	hr_expense_sheet_user_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1251	hr_expense_sheet_company_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1252	hr_expense_sheet_currency_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1253	hr_expense_sheet_journal_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1254	hr_expense_sheet_bank_journal_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1255	hr_expense_sheet_account_move_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1256	hr_expense_sheet_department_id_fkey	\N	\N	551	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1257	hr_expense_hr_expense_refuse_wizard_rel_hr_expense_refuse_wizard_id_fkey	\N	\N	552	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1258	hr_expense_hr_expense_refuse_wizard_rel_hr_expense_id_fkey	\N	\N	552	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1259	hr_expense_refuse_wizard_hr_expense_sheet_id_fkey	\N	\N	552	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1260	hr_expense_sheet_register_payment_wizard_expense_sheet_id_fkey	\N	\N	553	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1261	hr_expense_sheet_register_payment_wizard_partner_id_fkey	\N	\N	553	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1262	hr_expense_sheet_register_payment_wizard_partner_bank_account_id_fkey	\N	\N	553	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1263	hr_expense_sheet_register_payment_wizard_journal_id_fkey	\N	\N	553	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1264	hr_expense_sheet_register_payment_wizard_payment_method_id_fkey	\N	\N	553	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1265	hr_expense_sheet_register_payment_wizard_currency_id_fkey	\N	\N	553	451	f	2020-02-13 10:46:49.176336	2020-02-13 10:46:49.176336	1	1
1330	vv_learning_session_learner_fkey	\N	\N	570	565	f	2020-02-13 16:13:12.860381	2020-02-13 16:13:12.860381	1	1
1331	vv_learning_session_mot1_fkey	\N	\N	570	565	f	2020-02-13 16:13:12.860381	2020-02-13 16:13:12.860381	1	1
1332	vv_learning_session_mot2_fkey	\N	\N	570	565	f	2020-02-13 16:13:12.860381	2020-02-13 16:13:12.860381	1	1
1333	vv_learning_session_mot3_fkey	\N	\N	570	565	f	2020-02-13 16:13:12.860381	2020-02-13 16:13:12.860381	1	1
1334	account_move_transfer_model_id_fkey	\N	\N	433	188	f	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1335	account_transfer_model_journal_id_fkey	\N	\N	572	188	f	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1336	account_model_rel_account_transfer_model_id_fkey	\N	\N	572	188	f	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1337	account_model_rel_account_account_id_fkey	\N	\N	572	188	f	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1338	account_transfer_model_line_unique_account_by_transfer_model	unique(transfer_model_id,account_id)	Only one account occurrence by transfer model	573	188	u	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1339	account_transfer_model_line_transfer_model_id_fkey	\N	\N	573	188	f	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1340	account_transfer_model_line_account_id_fkey	\N	\N	573	188	f	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1341	account_analytic_account_account_transfer_model_line_rel_account_transfer_model_line_id_fkey	\N	\N	573	188	f	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1342	account_analytic_account_account_transfer_model_line_rel_account_analytic_account_id_fkey	\N	\N	573	188	f	2020-02-13 17:20:21.05082	2020-02-13 17:20:21.05082	1	1
1343	account_report_manager_company_id_fkey	\N	\N	574	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1344	account_report_manager_financial_report_id_fkey	\N	\N	574	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1345	account_report_footnote_manager_id_fkey	\N	\N	575	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1346	account_financial_html_report_company_id_fkey	\N	\N	578	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1347	account_financial_html_report_generated_menu_id_fkey	\N	\N	578	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1348	account_financial_html_report_ir_filters_rel_account_financial_html_report_id_fkey	\N	\N	578	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1349	account_financial_html_report_ir_filters_rel_ir_filters_id_fkey	\N	\N	578	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1350	account_financial_html_report_line_code_uniq	unique(code)	A report line with the same code already exists.	579	128	u	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1351	account_financial_html_report_line_financial_report_id_fkey	\N	\N	579	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1352	account_financial_html_report_line_parent_id_fkey	\N	\N	579	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1353	res_company_account_tax_periodicity_journal_id_fkey	\N	\N	87	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1354	res_company_account_tax_next_activity_type_fkey	\N	\N	87	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1355	dms_acc_rep_export_wizard_format_rel_account_reports_export_wizard_id_fkey	\N	\N	590	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1356	dms_acc_rep_export_wizard_format_rel_account_reports_export_wizard_format_id_fkey	\N	\N	590	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1357	account_reports_export_wizard_format_export_wizard_id_fkey	\N	\N	591	128	f	2020-02-13 17:20:22.287249	2020-02-13 17:20:22.287249	1	1
1358	account_account_asset_model_fkey	\N	\N	414	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1359	account_asset_message_main_attachment_id_fkey	\N	\N	592	159	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1360	account_asset_currency_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1361	account_asset_company_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1362	account_asset_account_asset_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1363	account_asset_account_depreciation_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1364	account_asset_account_depreciation_expense_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1365	account_asset_journal_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1366	account_asset_account_analytic_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1367	account_analytic_tag_account_asset_rel_account_asset_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1368	account_analytic_tag_account_asset_rel_account_analytic_tag_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1369	account_asset_model_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1370	account_asset_parent_id_fkey	\N	\N	592	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1371	account_move_asset_id_fkey	\N	\N	433	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1372	account_move_line_asset_id_fkey	\N	\N	434	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1373	res_company_gain_account_id_fkey	\N	\N	87	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1374	res_company_loss_account_id_fkey	\N	\N	87	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1375	asset_modify_asset_id_fkey	\N	\N	593	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1376	asset_modify_account_asset_id_fkey	\N	\N	593	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1377	asset_modify_account_asset_counterpart_id_fkey	\N	\N	593	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1378	asset_modify_account_depreciation_id_fkey	\N	\N	593	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1379	asset_modify_account_depreciation_expense_id_fkey	\N	\N	593	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1380	account_asset_pause_asset_id_fkey	\N	\N	594	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1381	account_asset_sell_asset_id_fkey	\N	\N	595	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1382	account_asset_sell_company_id_fkey	\N	\N	595	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1383	account_asset_sell_invoice_id_fkey	\N	\N	595	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1384	account_asset_sell_invoice_line_id_fkey	\N	\N	595	227	f	2020-02-13 17:20:24.718436	2020-02-13 17:20:24.718436	1	1
1385	account_followup_followup_line_days_uniq	unique(company_id,delay)	Days of the follow-up levels must be different per company	597	88	u	2020-02-13 17:20:26.207604	2020-02-13 17:20:26.207604	1	1
1386	account_followup_followup_line_company_id_fkey	\N	\N	597	88	f	2020-02-13 17:20:26.207604	2020-02-13 17:20:26.207604	1	1
1387	account_followup_followup_line_manual_action_type_id_fkey	\N	\N	597	88	f	2020-02-13 17:20:26.207604	2020-02-13 17:20:26.207604	1	1
1388	account_followup_followup_line_manual_action_responsible_id_fkey	\N	\N	597	88	f	2020-02-13 17:20:26.207604	2020-02-13 17:20:26.207604	1	1
1389	account_move_line_followup_line_id_fkey	\N	\N	434	88	f	2020-02-13 17:20:26.207604	2020-02-13 17:20:26.207604	1	1
1390	account_report_manager_partner_id_fkey	\N	\N	574	88	f	2020-02-13 17:20:26.207604	2020-02-13 17:20:26.207604	1	1
1391	followup_send_res_partner_rel_followup_send_id_fkey	\N	\N	600	7	f	2020-02-13 17:20:28.146474	2020-02-13 17:20:28.146474	1	1
1392	followup_send_res_partner_rel_res_partner_id_fkey	\N	\N	600	7	f	2020-02-13 17:20:28.146474	2020-02-13 17:20:28.146474	1	1
1393	ir_attachment_website_id_fkey	\N	\N	27	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1394	website_country_group_rel_website_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1395	website_country_group_rel_country_group_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1396	website_company_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1397	website_lang_rel_website_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1398	website_lang_rel_lang_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1399	website_default_lang_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1400	website_user_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1401	website_homepage_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1402	website_theme_id_fkey	\N	\N	605	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1403	website_menu_page_id_fkey	\N	\N	606	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1404	website_menu_website_id_fkey	\N	\N	606	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1405	website_menu_parent_id_fkey	\N	\N	606	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1406	res_groups_website_menu_rel_website_menu_id_fkey	\N	\N	606	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1407	res_groups_website_menu_rel_res_groups_id_fkey	\N	\N	606	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1408	website_page_view_id_fkey	\N	\N	607	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1409	website_page_website_id_fkey	\N	\N	607	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1410	website_rewrite_website_id_fkey	\N	\N	609	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1411	website_rewrite_route_id_fkey	\N	\N	609	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1412	ir_ui_view_website_id_fkey	\N	\N	15	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1413	res_partner_website_id_fkey	\N	\N	78	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1414	website_visitor_partner_rel_partner_id_fkey	\N	\N	78	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1415	website_visitor_partner_rel_visitor_id_fkey	\N	\N	78	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1416	res_users_login_key	unique(login,website_id)	You can not have two users with the same login!	90	74	u	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1417	res_users_website_id_fkey	\N	\N	90	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1418	res_config_settings_website_id_fkey	\N	\N	84	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1419	website_track_visitor_id_fkey	\N	\N	610	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1420	website_track_page_id_fkey	\N	\N	610	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1421	website_visitor_access_token_unique	unique(access_token)	Access token should be unique.	611	74	u	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1422	website_visitor_partner_uniq	unique(partner_id)	A partner is linked to only one visitor.	611	74	u	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1423	website_visitor_website_id_fkey	\N	\N	611	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1424	website_visitor_partner_id_fkey	\N	\N	611	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1425	website_visitor_country_id_fkey	\N	\N	611	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1426	website_visitor_lang_id_fkey	\N	\N	611	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1427	base_language_install_website_rel_base_language_install_id_fkey	\N	\N	96	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1428	base_language_install_website_rel_website_id_fkey	\N	\N	96	74	f	2020-02-14 11:31:03.924193	2020-02-14 11:31:03.924193	1	1
1429	ir_model_website_form_default_field_id_fkey	\N	\N	3	239	f	2020-02-14 11:31:12.740524	2020-02-14 11:31:12.740524	1	1
1430	theme_website_menu_page_id_fkey	\N	\N	614	105	f	2020-02-14 11:31:14.678612	2020-02-14 11:31:14.678612	1	1
1431	theme_website_menu_parent_id_fkey	\N	\N	614	105	f	2020-02-14 11:31:14.678612	2020-02-14 11:31:14.678612	1	1
1432	theme_website_page_view_id_fkey	\N	\N	615	105	f	2020-02-14 11:31:14.678612	2020-02-14 11:31:14.678612	1	1
1433	ir_ui_view_theme_template_id_fkey	\N	\N	15	105	f	2020-02-14 11:31:14.678612	2020-02-14 11:31:14.678612	1	1
1434	ir_attachment_theme_template_id_fkey	\N	\N	27	105	f	2020-02-14 11:31:14.678612	2020-02-14 11:31:14.678612	1	1
1435	website_menu_theme_template_id_fkey	\N	\N	606	105	f	2020-02-14 11:31:14.678612	2020-02-14 11:31:14.678612	1	1
1436	website_page_theme_template_id_fkey	\N	\N	607	105	f	2020-02-14 11:31:14.678612	2020-02-14 11:31:14.678612	1	1
1437	crm_lead_website_visitor_rel_crm_lead_id_fkey	\N	\N	205	276	f	2020-02-14 11:31:15.854012	2020-02-14 11:31:15.854012	1	1
1438	crm_lead_website_visitor_rel_website_visitor_id_fkey	\N	\N	205	276	f	2020-02-14 11:31:15.854012	2020-02-14 11:31:15.854012	1	1
1439	website_crm_default_team_id_fkey	\N	\N	605	276	f	2020-02-14 11:31:15.854012	2020-02-14 11:31:15.854012	1	1
1440	website_crm_default_user_id_fkey	\N	\N	605	276	f	2020-02-14 11:31:15.854012	2020-02-14 11:31:15.854012	1	1
1489	vv_wizard_learning_learner_fkey	\N	\N	629	565	f	2020-02-14 16:52:34.471638	2020-02-14 16:52:34.471638	1	1
1490	vv_wizard_learning_mot1_fkey	\N	\N	629	565	f	2020-02-14 16:52:34.471638	2020-02-14 16:52:34.471638	1	1
1491	vv_wizard_learning_mot2_fkey	\N	\N	629	565	f	2020-02-14 16:52:34.471638	2020-02-14 16:52:34.471638	1	1
1492	vv_wizard_learning_mot3_fkey	\N	\N	629	565	f	2020-02-14 16:52:34.471638	2020-02-14 16:52:34.471638	1	1
1565	vv_learning_session_learner_id_fkey	\N	\N	570	565	f	2020-02-17 17:55:12.485052	2020-02-17 17:55:12.485052	1	1
1566	vv_learning_session_mot1_id_fkey	\N	\N	570	565	f	2020-02-17 17:55:12.485052	2020-02-17 17:55:12.485052	1	1
1567	vv_learning_session_mot2_id_fkey	\N	\N	570	565	f	2020-02-17 17:55:12.485052	2020-02-17 17:55:12.485052	1	1
1568	vv_learning_session_mot3_id_fkey	\N	\N	570	565	f	2020-02-17 17:55:12.485052	2020-02-17 17:55:12.485052	1	1
1569	vv_wizard_learning_learner_id_fkey	\N	\N	629	565	f	2020-02-17 17:55:12.485052	2020-02-17 17:55:12.485052	1	1
1570	vv_wizard_learning_mot1_id_fkey	\N	\N	629	565	f	2020-02-17 17:55:12.485052	2020-02-17 17:55:12.485052	1	1
1571	vv_wizard_learning_mot2_id_fkey	\N	\N	629	565	f	2020-02-17 17:55:12.485052	2020-02-17 17:55:12.485052	1	1
1572	vv_wizard_learning_mot3_id_fkey	\N	\N	629	565	f	2020-02-17 17:55:12.485052	2020-02-17 17:55:12.485052	1	1
1595	openacademy_course_name_description_check	check(name != description)	The description of the course should not be just the title of the same.	638	564	u	2020-02-18 13:09:17.72003	2020-02-18 13:09:17.72003	1	1
1596	openacademy_course_name_unique	unique(name)	The course title must be unique	638	564	u	2020-02-18 13:09:17.72003	2020-02-18 13:09:17.72003	1	1
1597	openacademy_course_responsible_id_fkey	\N	\N	638	564	f	2020-02-18 13:09:17.72003	2020-02-18 13:09:17.72003	1	1
1598	openacademy_session_instructor_id_fkey	\N	\N	639	564	f	2020-02-18 13:09:17.72003	2020-02-18 13:09:17.72003	1	1
1599	openacademy_session_course_id_fkey	\N	\N	639	564	f	2020-02-18 13:09:17.72003	2020-02-18 13:09:17.72003	1	1
1600	openacademy_session_res_partner_rel_openacademy_session_id_fkey	\N	\N	639	564	f	2020-02-18 13:09:17.72003	2020-02-18 13:09:17.72003	1	1
1601	openacademy_session_res_partner_rel_res_partner_id_fkey	\N	\N	639	564	f	2020-02-18 13:09:17.72003	2020-02-18 13:09:17.72003	1	1
\.


--
-- Name: ir_model_constraint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_model_constraint_id_seq', 1601, true);


--
-- Name: ir_model_constraint ir_model_constraint_module_name_uniq; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_module_name_uniq UNIQUE (name, module);


--
-- Name: CONSTRAINT ir_model_constraint_module_name_uniq ON ir_model_constraint; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON CONSTRAINT ir_model_constraint_module_name_uniq ON public.ir_model_constraint IS 'unique(name, module)';


--
-- Name: ir_model_constraint ir_model_constraint_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_pkey PRIMARY KEY (id);


--
-- Name: ir_model_constraint_model_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_constraint_model_index ON public.ir_model_constraint USING btree (model);


--
-- Name: ir_model_constraint_module_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_constraint_module_index ON public.ir_model_constraint USING btree (module);


--
-- Name: ir_model_constraint_name_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_constraint_name_index ON public.ir_model_constraint USING btree (name);


--
-- Name: ir_model_constraint_type_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_constraint_type_index ON public.ir_model_constraint USING btree (type);


--
-- Name: ir_model_constraint ir_model_constraint_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_constraint ir_model_constraint_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_model_constraint ir_model_constraint_module_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_module_fkey FOREIGN KEY (module) REFERENCES public.ir_module_module(id) ON DELETE RESTRICT;


--
-- Name: ir_model_constraint ir_model_constraint_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
