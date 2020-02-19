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
-- Name: ir_rule; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_rule (
    id integer NOT NULL,
    name character varying,
    active boolean,
    model_id integer NOT NULL,
    domain_force text,
    perm_read boolean,
    perm_write boolean,
    perm_create boolean,
    perm_unlink boolean,
    global boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    CONSTRAINT ir_rule_no_access_rights CHECK (((perm_read <> false) OR (perm_write <> false) OR (perm_create <> false) OR (perm_unlink <> false)))
);


ALTER TABLE public.ir_rule OWNER TO odoo;

--
-- Name: TABLE ir_rule; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_rule IS 'Record Rule';


--
-- Name: COLUMN ir_rule.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.name IS 'Name';


--
-- Name: COLUMN ir_rule.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.active IS 'Active';


--
-- Name: COLUMN ir_rule.model_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.model_id IS 'Object';


--
-- Name: COLUMN ir_rule.domain_force; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.domain_force IS 'Domain';


--
-- Name: COLUMN ir_rule.perm_read; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.perm_read IS 'Apply for Read';


--
-- Name: COLUMN ir_rule.perm_write; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.perm_write IS 'Apply for Write';


--
-- Name: COLUMN ir_rule.perm_create; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.perm_create IS 'Apply for Create';


--
-- Name: COLUMN ir_rule.perm_unlink; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.perm_unlink IS 'Apply for Delete';


--
-- Name: COLUMN ir_rule.global; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.global IS 'Global';


--
-- Name: COLUMN ir_rule.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.create_uid IS 'Created by';


--
-- Name: COLUMN ir_rule.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.create_date IS 'Created on';


--
-- Name: COLUMN ir_rule.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_rule.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_rule.write_date IS 'Last Updated on';


--
-- Name: CONSTRAINT ir_rule_no_access_rights ON ir_rule; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON CONSTRAINT ir_rule_no_access_rights ON public.ir_rule IS 'CHECK (perm_read!=False or perm_write!=False or perm_create!=False or perm_unlink!=False)';


--
-- Name: ir_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_rule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_rule_id_seq OWNER TO odoo;

--
-- Name: ir_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_rule_id_seq OWNED BY public.ir_rule.id;


--
-- Name: ir_rule id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_rule ALTER COLUMN id SET DEFAULT nextval('public.ir_rule_id_seq'::regclass);


--
-- Data for Name: ir_rule; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_rule (id, name, active, model_id, domain_force, perm_read, perm_write, perm_create, perm_unlink, global, create_uid, create_date, write_uid, write_date) FROM stdin;
1	res.users.log per user	t	89	[('create_uid','=', user.id)]	f	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
2	res.partner company	t	78	['|', '|', ('partner_share', '=', False), ('company_id', 'in', company_ids), ('company_id', '=', False)]	t	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
4	Defaults: alter personal defaults	t	30	[('user_id','=',user.id)]	f	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-02-13 10:46:49.176336
21	own tours	t	125	[('user_id','=', user.id)]	t	t	t	t	t	1	2020-01-30 11:38:46.562637	1	2020-01-30 11:38:46.562637
49	Analytic multi company rule	t	392	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
50	Analytic line multi company rule	t	393	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
51	Analytic line multi company rule	t	391	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
52	Analytic line multi company rule	t	390	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
5	Defaults: alter all defaults	t	30	[(1,'=',1)]	f	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-02-14 11:31:03.924193
6	ir.ui.view_custom rule	t	14	[('user_id','=',user.id)]	t	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
7	Partner bank company rule	t	81	['|', ('company_id', 'in', company_ids), ('company_id', '=', False)]	t	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
8	multi-company currency rate rule	t	86	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
76	Account online provider company rule	t	469	[('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103
77	Account online journal company rule	t	470	[('account_online_provider_id.company_id','in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103
10	res.partner.rule.private.group	t	78	\n                [('type', '=', 'private')]\n            	t	f	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
3	res_partner: portal/public: read access on my commercial partner	t	78	[('id', 'child_of', user.commercial_partner_id.id)]	t	f	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-02-14 11:31:13.863145
11	ir.filters.admin.all.rights	t	29	[(1, '=', 1)]	t	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
32	Own events	t	179	[('partner_ids','in',user.partner_id.id)]	t	t	t	t	f	1	2020-01-31 09:41:13.339435	1	2020-02-14 11:31:13.863145
34	Own attendees	t	175	[(1,'=',1)]	t	t	t	t	f	1	2020-01-31 09:41:13.339435	1	2020-02-14 11:31:13.863145
14	ir.filter: portal/public	t	29	[('user_id', '=', user.id)]	t	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-02-14 11:31:13.863145
15	company rule portal	t	87	[('id','in', company_ids)]	t	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-02-14 11:31:13.863145
9	res.partner.rule.private.employee	t	78	\n                ['|', ('type', '!=', 'private'), ('type', '=', False)]\n            	t	f	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-02-13 10:46:49.176336
12	ir.filters.owner	t	29	[('user_id','in',[False,user.id])]	t	t	t	f	f	1	2020-01-30 11:38:26.99497	1	2020-02-13 10:46:49.176336
13	ir.filters.own.rule.delete	t	29	[('user_id', '=', user.id)]	f	f	f	t	f	1	2020-01-30 11:38:26.99497	1	2020-02-13 10:46:49.176336
18	company rule erp manager	t	87	[(1,'=',1)]	t	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
19	user rule	t	90	['|', ('share', '=', False), ('company_ids', 'in', company_ids)]	t	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
20	Property multi-company	t	60	['|',('company_id', 'in', company_ids),('company_id','=',False)]	t	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
16	company rule employee	t	87	[('id','in', company_ids)]	t	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-02-13 10:46:49.176336
89	Stock Production Lot multi-company	t	496	[('company_id','in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
24	resource.calendar.leaves: admin modifies global	t	137	[('resource_id', '=', False)]	f	t	t	t	f	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:58:20.76856
37	Sales Team multi-company	t	186	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-01-31 09:41:17.144798	1	2020-01-31 09:41:17.144798
38	Personal Leads	t	205	['|',('user_id','=',user.id),('user_id','=',False)]	t	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
39	CRM Lead Multi-Company	t	205	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
36	All Salesteam	t	186	[(1,'=',1)]	t	t	t	t	f	1	2020-01-31 09:41:17.144798	1	2020-01-31 09:41:21.344707
40	All Leads	t	205	[(1,'=',1)]	t	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
17	company rule public	t	87	[('id','in', company_ids)]	t	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-02-14 11:31:13.863145
41	Hide Private Meetings	t	179	['|',('user_id','=',user.id),('show_as','=','busy')]	t	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
31	White/Black List: moderators: moderated channels only	t	163	[('channel_id.moderator_ids', 'in', user.id)]	t	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
29	mail.message.subtype: portal/public: read public subtypes	t	146	[('internal', '=', False)]	t	t	t	t	f	1	2020-01-31 09:41:05.996465	1	2020-02-14 11:31:13.863145
90	Warehouse multi-company	t	503	[('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
53	Product multi-company	t	394	 ['|', ('company_id', 'in', company_ids), ('company_id', '=', False)]	t	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
54	product pricelist company rule	t	404	 ['|', ('company_id', 'in', company_ids), ('company_id', '=', False)]	t	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
55	product pricelist item company rule	t	405	 ['|', ('company_id', 'in', company_ids), ('company_id', '=', False)]	t	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
56	product supplierinfo company rule	t	398	['|', ('company_id', '=', False), ('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
57	product packaging company rule	t	397	['|', ('company_id', '=', False), ('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
91	Location multi-company	t	492	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
92	stock_move multi-company	t	494	['|', ('company_id', 'in', company_ids), '&', ('location_dest_id.company_id', '=', False), ('location_dest_id.usage', '=', 'transit')]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
93	stock_move_line multi-company	t	495	['|','|',('company_id','=',False),('company_id', 'in', company_ids),'&',('location_dest_id.company_id', '=', False), ('location_dest_id.usage', '=', 'transit')]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
94	stock_quant multi-company	t	499	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
35	Private events	t	179	['|', ('privacy', '!=', 'private'), '&', ('privacy', '=', 'private'), ('partner_ids', 'in', user.partner_id.id)]	f	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
42	All Activities	t	211	[(1,'=',1)]	t	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
43	Personal Activities	t	211	['|',('user_id','=',user.id),('user_id','=',False)]	t	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
44	CRM Lead Multi-Company	t	211	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
45	SMS Template: sale manager CRUD on opportunity / partner templates	t	197	[('model_id.model', 'in', ('crm.lead', 'res.partner'))]	t	t	t	t	f	1	2020-01-31 09:41:25.739339	1	2020-01-31 09:41:25.739339
86	stock_picking multi-company	t	498	[('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
87	Stock Operation Type multi-company	t	497	[('company_id','in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
88	Stock Operation Type multi-company	t	489	[('company_id','in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
95	Inventory Line multi-company	t	491	[('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
96	Inventory multi-company	t	490	[('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
97	stock_warehouse.orderpoint multi-company	t	504	[('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
98	product_pulled_flow multi-company	t	501	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
99	stock_location_route multi-company	t	493	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
100	stock_quant_package multi-company	t	500	['|', ('company_id', '=', False), ('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
101	stock_scrap_company multi-company	t	505	[('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
102	report_stock_quantity_flow multi-company	t	507	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
105	Employee multi company rule	t	539	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
106	Department multi company rule	t	542	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
107	Employee multi company rule	t	541	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
108	Job multi company rule	t	543	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
109	HR Contract: Multi Company	t	548	['|', ('company_id', '=', False), ('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135
58	account.analytic.line.billing.user	t	393	[(1, '=', 1)]	t	t	t	t	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
72	All Journal Entries	t	433	[(1, '=', 1)]	t	t	t	t	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
73	All Journal Items	t	434	[(1, '=', 1)]	t	t	t	t	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
83	Portal Purhcase Orders Line	t	480	['|',('order_id.message_partner_ids','child_of',[user.commercial_partner_id.id]),('order_id.partner_id','child_of',[user.commercial_partner_id.id])]	t	t	t	t	f	1	2020-02-10 14:36:28.146491	1	2020-02-14 11:31:13.863145
80	Purchase Order multi-company	t	479	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
81	Purchase Order Line multi-company	t	480	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
84	Purchases & Bills Union multi-company	t	482	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
85	Purchase Order Report multi-company	t	481	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
103	SMS Template: stock manager CRUD on stock picking templates	t	197	[('model_id.model', '=', 'stock.picking')]	t	t	t	t	f	1	2020-02-11 11:17:33.261454	1	2020-02-11 11:17:33.261454
104	Stock Valuation Layer Multicompany	t	529	[('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
59	Account Entry	t	433	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
60	Entry lines	t	434	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
61	Journal multi-company	t	418	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
62	Account multi-company	t	414	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
63	Account Root multi-company	t	416	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
64	Tax multi-company	t	420	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
65	Invoice Analysis multi-company	t	461	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
66	Account fiscal Mapping company rule	t	408	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
67	Account bank statement company rule	t	431	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
68	Account bank statement line company rule	t	432	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
69	Account reconcile model template company rule	t	422	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
70	Account payment company rule	t	424	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
79	Access own payment tokens only	t	476	['|', ('partner_id','=',user.partner_id.id), ('partner_id', '=', user.partner_id.commercial_partner_id.id)]	t	t	t	t	f	1	2020-02-10 14:36:25.259665	1	2020-02-14 11:31:13.863145
74	Portal Personal Account Invoices	t	433	[('type', 'in', ('out_invoice', 'out_refund', 'in_invoice', 'in_refund')), ('message_partner_ids','child_of',[user.commercial_partner_id.id])]	t	t	t	t	f	1	2020-02-10 14:36:08.744986	1	2020-02-14 11:31:13.863145
75	Portal Invoice Lines	t	434	[('move_id.type', 'in', ('out_invoice', 'out_refund', 'in_invoice', 'in_refund')), ('move_id.message_partner_ids','child_of',[user.commercial_partner_id.id])]	t	t	t	t	f	1	2020-02-10 14:36:08.744986	1	2020-02-14 11:31:13.863145
71	Account payment term company rule	t	426	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
110	Manager Expense	t	550	[(1, '=', 1)]	t	t	t	t	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
111	Team Approver Expense	t	550	['|', '|', '|',\n                ('employee_id.user_id', '=', user.id),\n                ('employee_id.department_id.manager_id.user_id', '=', user.id),\n                ('employee_id.parent_id.user_id', '=', user.id),\n                ('employee_id.expense_manager_id', '=', user.id)]	t	t	t	t	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
25	User IAP Account	t	145	['|', ('company_ids', '=', False), ('company_ids', 'in', company_ids)]	t	t	t	t	f	1	2020-01-31 09:41:05.538844	1	2020-02-13 10:46:49.176336
112	Employee Expense	t	550	[('employee_id.user_id', '=', user.id)]	t	t	t	t	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
22	resource.calendar.leaves: employee reads own or global	t	137	['|', ('resource_id', '=', False), ('resource_id.user_id', 'in', [False, user.id])]	t	f	f	f	f	1	2020-01-31 09:41:03.060603	1	2020-02-13 10:46:49.176336
82	Portal Purchase Orders	t	479	['|', ('message_partner_ids','child_of',[user.commercial_partner_id.id]),('partner_id', 'child_of', [user.commercial_partner_id.id])]	t	t	f	t	f	1	2020-02-10 14:36:28.146491	1	2020-02-14 11:31:13.863145
27	mail.followers: write its own entries	t	150	[('partner_id', '=', user.partner_id.id)]	f	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-02-14 11:31:13.863145
23	resource.calendar.leaves: employee modifies own	t	137	[('resource_id', '!=', False), ('resource_id.user_id', 'in', [False, user.id])]	f	t	t	t	f	1	2020-01-31 09:41:03.060603	1	2020-02-13 10:46:49.176336
30	mail.activity: user: write/unlink only (created or assigned)	t	154	['|', ('user_id', '=', user.id), ('create_uid', '=', user.id)]	f	t	f	t	f	1	2020-01-31 09:41:05.996465	1	2020-02-13 10:46:49.176336
33	All Calendar Event for employees	t	179	[(1,'=',1)]	t	t	t	t	f	1	2020-01-31 09:41:13.339435	1	2020-02-13 10:46:49.176336
113	Manager Expense Sheet	t	551	[(1, '=', 1)]	t	t	t	t	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
114	Approver Expense Sheet	t	551	['|', '|', '|',\n                ('employee_id.user_id', '=', user.id),\n                ('employee_id.department_id.manager_id.user_id', '=', user.id),\n                ('employee_id.parent_id.user_id', '=', user.id),\n                ('employee_id.expense_manager_id', '=', user.id)]	t	t	t	t	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
115	Employee Expense Sheet	t	551	[('employee_id.user_id', '=', user.id)]	t	t	t	t	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
116	Expense multi company rule	t	550	['|',('company_id', '=', False), ('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
117	Expense Report multi company rule	t	551	['|',('company_id', '=', False), ('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
118	Account Asset multi-company	t	592	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
119	Account Follow-up multi company rule	t	597	['|',('company_id','=',False),('company_id', 'in', company_ids)]	t	t	t	t	t	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
120	SMS Template: account manager CRUD on partner templates	t	197	[('model_id.model', '=', 'res.partner')]	t	t	t	t	f	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
121	Website menu: group_ids	t	606	['|', ('group_ids', '=', False), ('group_ids', 'in', [g.id for g in user.groups_id])]	t	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
122	website_designer: Manage Website and qWeb view	t	15	[('type', '=', 'qweb')]	t	t	t	t	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
123	website_designer: global view	t	15	[('type', '!=', 'qweb')]	t	f	f	f	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
124	Administration Settings: Manage all views	t	15	[(1, '=', 1)]	t	t	t	t	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
78	Access own payment transaction only	t	475	[\n                '|',\n                    ('partner_id','=',False),\n                    ('partner_id','=',user.partner_id.id)\n                ]	t	t	t	t	f	1	2020-02-10 14:36:25.259665	1	2020-02-14 11:31:13.863145
26	Mail.channel: access only public and joined groups	t	164	['|', '|',\n('public', '=', 'public'),\n'&', ('public', '=', 'private'), ('channel_partner_ids', 'in', [user.partner_id.id]),\n'&', ('public', '=', 'groups'), ('group_public_id', 'in', [g.id for g in user.groups_id])]	t	t	f	t	f	1	2020-01-31 09:41:05.996465	1	2020-02-14 11:31:13.863145
28	mail.notifications: group_user: write its own entries	t	151	[('res_partner_id', '=', user.partner_id.id)]	f	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-02-14 11:31:13.863145
125	website.page: portal/public: read published pages	t	607	[('website_published', '=', True)]	t	t	t	t	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:13.863145
126	mail.message: portal/public: read published messages	t	152	[('website_published', '=', True)]	t	t	t	t	f	1	2020-02-14 11:31:13.863145	1	2020-02-14 11:31:13.863145
128	Only Responsible can modify Course	t	638	[('create_uid','=',user.id)]	f	t	f	t	f	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
\.


--
-- Name: ir_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_rule_id_seq', 128, true);


--
-- Name: ir_rule ir_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_pkey PRIMARY KEY (id);


--
-- Name: ir_rule_model_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_rule_model_id_index ON public.ir_rule USING btree (model_id);


--
-- Name: ir_rule_name_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_rule_name_index ON public.ir_rule USING btree (name);


--
-- Name: ir_rule ir_rule_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_rule ir_rule_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_rule ir_rule_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
