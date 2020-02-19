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
-- Name: ir_ui_menu; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_ui_menu (
    id integer NOT NULL,
    parent_path character varying,
    name character varying NOT NULL,
    active boolean,
    sequence integer,
    parent_id integer,
    web_icon character varying,
    action character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_ui_menu OWNER TO odoo;

--
-- Name: TABLE ir_ui_menu; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_ui_menu IS 'Menu';


--
-- Name: COLUMN ir_ui_menu.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.name IS 'Menu';


--
-- Name: COLUMN ir_ui_menu.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.active IS 'Active';


--
-- Name: COLUMN ir_ui_menu.sequence; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.sequence IS 'Sequence';


--
-- Name: COLUMN ir_ui_menu.parent_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.parent_id IS 'Parent Menu';


--
-- Name: COLUMN ir_ui_menu.web_icon; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.web_icon IS 'Web Icon File';


--
-- Name: COLUMN ir_ui_menu.action; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.action IS 'Action';


--
-- Name: COLUMN ir_ui_menu.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.create_uid IS 'Created by';


--
-- Name: COLUMN ir_ui_menu.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.create_date IS 'Created on';


--
-- Name: COLUMN ir_ui_menu.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_ui_menu.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_ui_menu.write_date IS 'Last Updated on';


--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_ui_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_menu_id_seq OWNER TO odoo;

--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_ui_menu_id_seq OWNED BY public.ir_ui_menu.id;


--
-- Name: ir_ui_menu id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_menu ALTER COLUMN id SET DEFAULT nextval('public.ir_ui_menu_id_seq'::regclass);


--
-- Data for Name: ir_ui_menu; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_ui_menu (id, parent_path, name, active, sequence, parent_id, web_icon, action, create_uid, create_date, write_uid, write_date) FROM stdin;
1	1/	Dashboards	t	305	\N	base,static/description/board.png	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
2	1/2/	Dashboards	t	0	1	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
3	1/3/	Configuration	t	100	1	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
5	5/	Apps	t	310	\N	base,static/description/modules.png	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
6	4/6/	Custom Shortcuts	t	50	4	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
83	4/83/	General Settings	t	0	4	\N	ir.actions.act_window,90	1	2020-01-31 09:41:01.701278	1	2020-01-31 09:41:01.701278
7	4/7/	Users & Companies	t	1	4	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
8	4/8/	Translations	t	2	4	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
84	4/12/84/	Resource	t	30	12	\N	\N	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
9	4/8/9/	Application Terms	t	4	8	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
85	4/12/84/85/	Working Times	t	1	84	\N	ir.actions.act_window,97	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
10	4/8/10/	Import / Export	t	3	8	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
11	4/11/	General Settings	t	3	4	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
235	235/	Purchase	t	25	\N	purchase,static/description/icon.png	\N	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
334	334/	Accounting	t	40	\N	account_accountant,static/description/icon.png	\N	1	2020-02-13 17:20:18.484061	1	2020-02-13 17:20:18.484061
236	235/236/	Orders	t	1	235	\N	\N	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
368	368/	Vocabulary Vault	t	100	\N	first_module,static/description/icon.png	\N	1	2020-02-14 09:38:16.030955	1	2020-02-17 18:01:59.539543
318	300/305/318/	Contracts	t	1	305	\N	ir.actions.act_window,476	1	2020-02-13 10:46:48.825666	1	2020-02-13 10:46:48.825666
319	319/	Expenses	t	100	\N	hr_expense,static/description/icon.png	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
168	168/	Invoicing	t	40	\N	account,static/description/icon.png	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
237	235/236/237/	Vendors	t	15	236	\N	ir.actions.act_window,294	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
169	334/169/	Customers	t	2	334	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-13 17:20:18.484061
238	235/238/	Configuration	t	100	235	\N	\N	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
320	319/320/	My Expenses	t	1	319	\N	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
239	235/238/239/	Vendor Pricelists	t	1	238	\N	ir.actions.act_window,244	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
240	235/238/240/	Products	t	30	238	\N	\N	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
321	319/320/321/	My Expenses	t	1	320	\N	ir.actions.act_window,480	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
241	235/238/240/241/	Product Categories	t	1	240	\N	ir.actions.act_window,242	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
322	319/320/322/	My Expense Reports	t	3	320	\N	ir.actions.act_window,485	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
394	394/	Open Academy Top Level	t	10	\N	\N	\N	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
395	394/395/	Open Academy Left Side	t	10	394	\N	\N	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
396	394/395/396/	Courses	t	10	395	\N	ir.actions.act_window,572	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
397	394/395/397/	Sessions	t	10	395	\N	ir.actions.act_window,573	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
398	394/398/	Configuration	t	10	394	\N	\N	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
399	394/398/399/	Contacts	t	10	398	\N	ir.actions.act_window,574	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
400	394/398/400/	Contact Tags	t	10	398	\N	ir.actions.act_window,575	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
86	4/12/84/86/	Resource Time Off	t	2	84	\N	ir.actions.act_window,93	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
87	4/12/84/87/	Resources	t	3	84	\N	ir.actions.act_window,91	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
88	88/	Link Tracker	t	30	\N	utm,static/description/icon.png	\N	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
89	88/89/	UTMs	t	99	88	\N	\N	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
90	88/89/90/	Campaigns	t	1	89	\N	ir.actions.act_window,100	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
91	88/89/91/	Mediums	t	5	89	\N	ir.actions.act_window,101	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
92	88/89/92/	Sources	t	10	89	\N	ir.actions.act_window,102	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
93	4/12/93/	IAP	t	4	12	\N	\N	1	2020-01-31 09:41:05.538844	1	2020-01-31 09:41:05.538844
94	4/12/93/94/	IAP Accounts	t	10	93	\N	ir.actions.act_window,103	1	2020-01-31 09:41:05.538844	1	2020-01-31 09:41:05.538844
95	4/12/14/95/	Subtypes	t	10	14	\N	ir.actions.act_window,108	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
96	4/12/14/96/	Tracking Values	t	10	14	\N	ir.actions.act_window,109	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
97	4/12/14/97/	Messages	t	10	14	\N	ir.actions.act_window,110	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
98	4/12/14/98/	Emails	t	10	14	\N	ir.actions.act_window,111	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
99	4/12/14/99/	Followers	t	30	14	\N	ir.actions.act_window,112	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
100	4/12/14/100/	Channels/Partner	t	92	14	\N	ir.actions.act_window,113	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
101	4/12/14/101/	Channels	t	90	14	\N	ir.actions.act_window,114	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
102	102/	Discuss	t	1	\N	mail,static/description/icon.png	ir.actions.client,115	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
103	102/103/	Integrations	f	10	102	\N	\N	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
104	4/12/14/104/	Activity Types	t	10	14	\N	ir.actions.act_window,117	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
16	4/12/16/	Automation	t	10	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
17	4/12/17/	Security	t	25	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
18	4/12/18/	Parameters	t	24	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
19	19/	Tests	t	1000000	\N	test_exceptions,static/description/icon.png	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
242	235/238/240/242/	Units of Measure Categories	t	10	240	\N	ir.actions.act_window,228	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
369	369/	Website	t	9	\N	website,static/description/icon.png	\N	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
323	319/323/	Expense Reports	t	2	319	\N	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
243	235/238/240/243/	Units of Measure	t	5	240	\N	ir.actions.act_window,227	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
370	369/370/	Dashboard	t	1	369	\N	\N	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
371	369/370/371/	eCommerce Dashboard	f	10	370	\N	ir.actions.server,546	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
244	235/244/	Products	t	5	235	\N	\N	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
324	319/323/324/	To Approve	t	1	323	\N	ir.actions.act_window,486	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
245	235/244/245/	Products	t	20	244	\N	ir.actions.act_window,364	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
4	4/	Settings	t	500	\N	base,static/description/settings.png	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
20	4/12/15/20/	Decimal Accuracy	t	10	15	\N	ir.actions.act_window,4	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
21	4/12/21/	Actions	t	5	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
22	4/12/21/22/	Actions	t	10	21	\N	ir.actions.act_window,5	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
23	4/12/21/23/	Reports	t	10	21	\N	ir.actions.act_window,6	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
24	4/12/21/24/	Window Actions	t	10	21	\N	ir.actions.act_window,7	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
25	4/12/21/25/	Server Actions	t	10	21	\N	ir.actions.act_window,8	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
26	4/12/21/26/	Configuration Wizards	t	10	21	\N	ir.actions.act_window,9	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
27	4/12/18/27/	System Parameters	t	10	18	\N	ir.actions.act_window,11	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
28	4/12/16/28/	Scheduled Actions	t	10	16	\N	ir.actions.act_window,12	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
29	4/12/13/29/	User-defined Filters	t	5	13	\N	ir.actions.act_window,13	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
30	4/12/14/30/	Outgoing Mail Servers	t	15	14	\N	ir.actions.act_window,14	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
372	369/370/372/	Analytics	t	20	370	\N	ir.actions.server,547	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
246	235/244/246/	Product Variants	t	21	244	\N	ir.actions.act_window,365	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
325	319/323/325/	To Post	t	2	323	\N	ir.actions.act_window,487	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
188	334/169/188/	Payments	t	15	169	\N	ir.actions.act_window,256	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
247	235/236/247/	Requests for Quotation	t	0	236	\N	ir.actions.act_window,367	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
190	334/169/190/	Invoices	t	1	169	\N	ir.actions.act_window,282	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
373	369/373/	Visitors	t	80	369	\N	\N	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
326	319/323/326/	To Pay	t	3	323	\N	ir.actions.act_window,488	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
191	334/169/191/	Credit Notes	t	1	169	\N	ir.actions.act_window,283	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
192	334/169/192/	Receipts	t	1	169	\N	ir.actions.act_window,286	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
12	4/12/	Technical	t	110	4	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
13	4/12/13/	User Interface	t	10	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
14	4/12/14/	Email	t	1	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
15	4/12/15/	Database Structure	t	10	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
374	369/373/374/	Visitors	t	1	373	\N	ir.actions.act_window,550	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
375	369/373/375/	Views	t	2	373	\N	ir.actions.act_window,551	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
376	369/376/	Configuration	t	100	369	\N	\N	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
105	4/12/14/105/	Activities	t	10	14	\N	ir.actions.act_window,118	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
106	4/12/14/106/	Aliases	t	50	14	\N	ir.actions.act_window,123	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
68	4/12/13/68/	Tours	t	5	13	\N	ir.actions.act_window,83	1	2020-01-30 11:38:46.562637	1	2020-01-30 11:38:46.562637
107	4/12/14/107/	Templates	t	20	14	\N	ir.actions.act_window,125	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
108	4/12/14/108/	Channel Moderation	t	10	14	\N	ir.actions.act_window,126	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
109	4/12/14/109/	Mass Mail Blacklist	t	10	14	\N	ir.actions.act_window,128	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
149	135/136/137/149/	Tags	t	1	137	\N	ir.actions.act_window,178	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
150	135/136/137/150/	Lost Reasons	t	6	137	\N	ir.actions.act_window,179	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
151	135/151/	Import & Synchronize	t	10	135	\N	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
135	135/	CRM	t	6	\N	crm,static/description/icon.png	ir.actions.server,176	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
152	135/140/152/	Activities	t	3	140	\N	ir.actions.act_window,181	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
153	135/140/153/	Pipeline	t	2	140	\N	ir.actions.act_window,192	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:25.371908
154	135/140/154/	Leads	t	1	140	\N	ir.actions.act_window,193	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:25.371908
248	235/236/248/	Purchase Orders	t	6	236	\N	ir.actions.act_window,368	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
249	235/238/249/	Settings	t	0	238	\N	ir.actions.act_window,369	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
31	4/12/15/31/	Models	t	10	15	\N	ir.actions.act_window,16	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
126	114/116/124/126/	Bank Accounts	t	2	124	\N	ir.actions.act_window,65	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
127	4/12/14/127/	Incoming Mail Servers	t	14	14	\N	ir.actions.act_window,137	1	2020-01-31 09:41:15.076282	1	2020-01-31 09:41:15.076282
128	4/12/128/	Phone / SMS	t	2	12	\N	\N	1	2020-01-31 09:41:16.681251	1	2020-01-31 09:41:16.681251
129	4/12/128/129/	Phone Blacklist	t	3	128	\N	ir.actions.act_window,140	1	2020-01-31 09:41:16.681251	1	2020-01-31 09:41:16.681251
377	369/376/377/	Settings	t	10	376	\N	ir.actions.act_window,552	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
32	4/12/15/32/	Fields	t	10	15	\N	ir.actions.act_window,17	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
110	110/	Calendar	t	2	\N	calendar,static/description/icon.png	ir.actions.act_window,133	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
33	4/12/15/33/	Fields Selection	t	10	15	\N	ir.actions.act_window,18	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
130	130/	Configuration	t	10	\N	\N	\N	1	2020-01-31 09:41:17.144798	1	2020-01-31 09:41:17.144798
34	4/12/34/	Sequences & Identifiers	t	21	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
131	4/12/14/131/	Snailmail Letters	t	20	14	\N	ir.actions.act_window,146	1	2020-01-31 09:41:17.860225	1	2020-01-31 09:41:17.860225
111	4/12/111/	Calendar	t	10	12	\N	\N	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
250	235/250/	Reporting	t	99	235	\N	\N	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
112	4/12/111/112/	Meeting Types	t	10	111	\N	ir.actions.act_window,131	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
113	4/12/111/113/	Calendar Alarm	t	10	111	\N	ir.actions.act_window,132	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
114	114/	Contacts	t	4	\N	contacts,static/description/icon.png	\N	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
115	114/115/	Contacts	t	2	114	\N	ir.actions.act_window,135	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
117	114/116/117/	Contact Tags	t	1	116	\N	ir.actions.act_window,62	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
214	334/169/214/	Customers	t	110	169	\N	ir.actions.act_window,293	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
118	114/116/118/	Contact Titles	t	3	116	\N	ir.actions.act_window,56	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
119	114/116/119/	Sectors of Activity	t	4	116	\N	ir.actions.act_window,63	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
215	334/169/215/	Products	t	100	169	\N	ir.actions.act_window,317	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
120	114/116/120/	Localization	t	5	116	\N	\N	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
121	114/116/120/121/	Countries	t	1	120	\N	ir.actions.act_window,66	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
378	369/376/378/	Apps	t	20	376	\N	ir.actions.act_window,541	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
122	114/116/120/122/	Country Group	t	3	120	\N	ir.actions.act_window,67	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
189	334/170/189/	Payments	t	20	170	\N	ir.actions.act_window,257	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
379	369/376/379/	Websites	t	10	376	\N	ir.actions.act_window,542	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
380	369/376/380/	Pages	t	30	376	\N	ir.actions.act_window,543	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
123	114/116/120/123/	Fed. States	t	2	120	\N	ir.actions.act_window,68	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
167	158/167/	Nouns	t	6	158	\N	ir.actions.act_window,226	1	2020-02-06 14:31:25.729519	1	2020-02-17 18:01:59.539543
124	114/116/124/	Bank Accounts	t	6	116	\N	\N	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
125	114/116/124/125/	Banks	t	1	124	\N	ir.actions.act_window,64	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
132	4/12/128/132/	SMS	t	1	128	\N	ir.actions.act_window,159	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211
133	4/12/128/133/	SMS Templates	t	2	128	\N	ir.actions.act_window,160	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211
134	4/12/14/134/	Digest Emails	t	93	14	\N	ir.actions.act_window,163	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505
116	114/116/	Configuration	t	2	114	\N	\N	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:21.344707
136	135/136/	Configuration	t	25	135	\N	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
137	135/136/137/	Pipeline	t	15	136	\N	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
138	135/136/138/	Opportunities	t	1	136	\N	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
139	135/136/139/	Settings	t	0	136	\N	ir.actions.act_window,169	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
140	135/140/	Reporting	t	20	135	\N	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
141	135/136/141/	Sales Teams	t	5	136	\N	ir.actions.act_window,143	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
142	135/136/142/	Activity Types	t	10	136	\N	ir.actions.act_window,144	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
143	135/136/137/143/	Stages	t	0	137	\N	ir.actions.act_window,170	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
144	135/144/	Sales	t	1	135	\N	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
145	135/144/145/	Team Pipelines	t	4	144	\N	ir.actions.act_window,142	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
146	135/144/146/	Customers	t	5	144	\N	ir.actions.act_window,57	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
147	135/147/	Leads	t	5	135	\N	ir.actions.act_window,174	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
148	135/144/148/	My Pipeline	t	1	144	\N	ir.actions.server,176	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
251	235/250/251/	Purchase	t	1	250	\N	ir.actions.act_window,374	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:38.59758
381	369/376/381/	Menus	t	45	376	\N	ir.actions.act_window,544	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
382	369/376/382/	Redirects	t	30	376	\N	ir.actions.act_window,553	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
327	319/327/	Reporting	t	4	319	\N	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
276	253/266/276/	Inventory Report	t	100	266	\N	ir.actions.server,427	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
277	253/255/256/277/	Locations	t	2	256	\N	ir.actions.act_window,432	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
328	319/327/328/	Expenses Analysis	t	0	327	\N	ir.actions.act_window,479	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
278	253/255/256/278/	Routes	t	3	256	\N	ir.actions.act_window,433	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
279	253/255/256/279/	Warehouses	t	1	256	\N	ir.actions.act_window,434	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
329	319/329/	Configuration	t	100	319	\N	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
280	253/265/280/	Reordering Rules	t	10	265	\N	ir.actions.act_window,435	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
35	4/12/34/35/	External Identifiers	t	10	34	\N	ir.actions.act_window,19	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
36	4/12/15/36/	Model Constraints	t	10	15	\N	ir.actions.act_window,20	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
37	4/12/15/37/	ManyToMany Relations	t	10	15	\N	ir.actions.act_window,21	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
38	4/12/17/38/	Access Rights	t	10	17	\N	ir.actions.act_window,22	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
39	4/12/15/39/	Attachments	t	10	15	\N	ir.actions.act_window,23	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
40	4/12/17/40/	Record Rules	t	3	17	\N	ir.actions.act_window,24	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
41	4/12/34/41/	Sequences	t	10	34	\N	ir.actions.act_window,25	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
42	4/8/9/42/	Translated Terms	t	10	9	\N	ir.actions.act_window,26	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
43	4/12/13/43/	Menu Items	t	1	13	\N	ir.actions.act_window,27	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
44	4/12/13/44/	Views	t	2	13	\N	ir.actions.act_window,28	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
45	4/12/13/45/	Customized Views	t	3	13	\N	ir.actions.act_window,30	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
46	4/12/21/46/	User-defined Defaults	t	10	21	\N	ir.actions.act_window,31	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
47	4/12/15/47/	Logging	t	10	15	\N	ir.actions.act_window,34	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
48	5/48/	Apps	t	5	5	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
49	5/48/49/	Main Apps	t	5	48	\N	ir.actions.act_window,35	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
50	5/48/50/	Theme Store	t	15	48	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
51	5/48/51/	Third-Party Apps	t	20	48	\N	ir.actions.act_url,36	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
52	5/48/52/	Theme Store	t	10	48	\N	ir.actions.act_url,37	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
53	5/53/	App Store	t	10	5	\N	ir.actions.client,38	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
54	5/54/	Updates	t	20	5	\N	ir.actions.client,39	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
55	5/55/	Update Apps List	t	40	5	\N	ir.actions.act_window,41	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
56	4/8/10/56/	Import Translation	t	10	10	\N	ir.actions.act_window,43	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
57	5/57/	Apply Scheduled Upgrades	t	50	5	\N	ir.actions.act_window,44	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
58	4/8/10/58/	Export Translation	t	10	10	\N	ir.actions.act_window,46	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
59	4/8/9/59/	Generate Missing Terms	t	10	9	\N	ir.actions.act_window,47	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
60	4/7/60/	Companies	t	10	7	\N	ir.actions.act_window,54	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
61	4/8/61/	Languages	t	1	8	\N	ir.actions.act_window,55	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
62	4/7/62/	Groups	t	3	7	\N	ir.actions.act_window,73	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
63	4/7/63/	Users	t	0	7	\N	ir.actions.act_window,74	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
281	253/266/281/	Product Moves	t	150	266	\N	ir.actions.act_window,436	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
330	319/329/330/	Expense Products	t	10	329	\N	ir.actions.act_window,481	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
282	253/266/282/	Stock Moves	t	140	266	\N	ir.actions.act_window,438	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
299	158/298/299/	wizard learning	t	2	298	\N	ir.actions.act_window,567	1	2020-02-13 09:26:05.173178	1	2020-02-17 18:01:59.539543
270	253/270/	Overview	t	0	253	\N	ir.actions.act_window,413	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
225	334/171/176/225/	Tax Adjustments	t	45	176	\N	ir.actions.act_window,334	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
271	253/255/256/271/	Operations Types	t	4	256	\N	ir.actions.act_window,414	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
223	334/178/179/223/	Invoices	t	1	179	\N	ir.actions.act_window,331	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
253	253/	Inventory	t	30	\N	stock,static/description/icon.png	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
221	334/181/187/221/	Analytic Tags	t	10	187	\N	ir.actions.act_window,229	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
254	253/254/	Operations	t	2	253	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
222	334/181/187/222/	Analytic Account Groups	t	10	187	\N	ir.actions.act_window,230	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
224	334/181/186/224/	Cash Roundings	t	4	186	\N	ir.actions.act_window,332	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
256	253/255/256/	Warehouse Management	t	1	255	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
64	4/12/18/64/	Company Properties	t	10	18	\N	ir.actions.act_window,76	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
65	4/12/65/	Reporting	t	15	12	\N	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
66	4/12/65/66/	Paper Format	t	2	65	\N	ir.actions.act_window,78	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
67	4/12/65/67/	Reports	t	3	65	\N	ir.actions.act_window,79	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
228	334/181/182/228/	Incoterms	t	4	182	\N	ir.actions.act_window,343	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
257	253/255/257/	Products	t	4	255	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
229	334/181/186/229/	Tax Report	t	10	186	\N	ir.actions.act_window,345	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
258	253/255/257/258/	Barcode Nomenclatures	t	50	257	\N	ir.actions.act_window,380	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
230	334/181/184/230/	Online Synchronization	t	9	184	\N	ir.actions.act_window,349	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103
259	253/255/259/	Units of Measures	t	5	255	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
260	253/255/257/260/	Product Categories	t	2	257	\N	ir.actions.act_window,242	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
231	334/181/183/231/	Payment Acquirers	t	10	183	\N	ir.actions.act_window,354	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
261	253/255/257/261/	Attributes	t	4	257	\N	ir.actions.act_window,236	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
262	253/255/259/262/	UoM Categories	t	5	259	\N	ir.actions.act_window,228	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
232	334/181/183/232/	Payment Transactions	t	20	183	\N	ir.actions.act_window,355	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
263	253/255/257/263/	Units of Measure	t	35	257	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
331	319/329/331/	Activity Types	t	10	329	\N	ir.actions.act_window,496	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
264	253/255/259/264/	UoM	t	35	259	\N	ir.actions.act_window,227	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
233	334/181/183/233/	Saved Payment Data	t	10	183	\N	ir.actions.act_window,357	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
265	253/265/	Master Data	t	4	253	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
234	334/181/183/234/	Payment Icons	t	10	183	\N	ir.actions.act_window,358	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
266	253/266/	Reporting	t	99	253	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
267	253/254/267/	Run Scheduler	t	135	254	\N	ir.actions.act_window,406	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
332	319/329/332/	Settings	t	0	329	\N	ir.actions.act_window,498	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
268	253/255/256/268/	Putaway Rules	t	5	256	\N	ir.actions.act_window,409	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
269	253/265/269/	Lots/Serial Numbers	t	101	265	\N	ir.actions.act_window,412	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
227	334/227/	Overview	t	1	334	\N	ir.actions.act_window,337	1	2020-02-10 14:36:08.744986	1	2020-02-13 17:20:18.484061
272	253/254/272/	Transfers	t	5	254	\N	ir.actions.act_window,415	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
226	334/181/226/	Settings	t	0	181	\N	ir.actions.act_window,336	1	2020-02-10 14:36:08.744986	1	2020-02-13 17:20:18.484061
273	253/254/273/	Scrap	t	99	254	\N	ir.actions.act_window,423	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
274	253/254/274/	Inventory Adjustments	t	30	254	\N	ir.actions.act_window,424	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
275	253/265/275/	Packages	t	102	265	\N	ir.actions.act_window,430	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
297	158/297/	Adverbs	t	10	158	\N	ir.actions.act_window,454	1	2020-02-12 16:55:26.169288	1	2020-02-17 18:01:59.539543
283	253/265/283/	Products	t	1	265	\N	ir.actions.act_window,441	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
284	253/265/284/	Product Variants	t	2	265	\N	ir.actions.act_window,442	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
308	300/307/308/	Job Positions	t	1	307	\N	ir.actions.act_window,459	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
285	253/255/257/285/	Product Packagings	t	10	257	\N	ir.actions.act_window,243	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
286	253/266/286/	Forecasted Inventory	t	101	266	\N	ir.actions.act_window,383	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
309	300/307/309/	Employee	t	1	307	\N	\N	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
287	253/255/287/	Settings	t	0	255	\N	ir.actions.act_window,443	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
255	253/255/	Configuration	t	100	253	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
288	253/255/256/288/	Rules	t	2	256	\N	ir.actions.act_window,444	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
310	300/307/309/310/	Tags	t	1	309	\N	ir.actions.act_window,462	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
289	253/266/289/	Warehouse Analysis	t	10	266	\N	ir.actions.act_window,446	1	2020-02-11 11:17:32.651164	1	2020-02-11 11:17:32.651164
290	253/266/290/	Inventory Valuation	t	110	266	\N	ir.actions.act_window,448	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
311	300/307/311/	Departments	t	2	307	\N	ir.actions.act_window,469	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
312	300/307/312/	Activity Planning	t	100	307	\N	\N	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
158	158/	Vocabulary	t	5	\N	\N	ir.actions.act_window,200	1	2020-02-05 10:21:43.085102	1	2020-02-17 18:01:59.539543
313	300/307/312/313/	Planning Types	t	99	312	\N	ir.actions.act_window,461	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
314	300/307/312/314/	Plans	t	100	312	\N	ir.actions.act_window,460	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
193	334/170/193/	Bills	t	1	170	\N	ir.actions.act_window,284	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
194	334/170/194/	Refund	t	1	170	\N	ir.actions.act_window,285	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
195	334/170/195/	Receipts	t	1	170	\N	ir.actions.act_window,287	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
170	334/170/	Vendors	t	3	334	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-13 17:20:18.484061
216	334/170/216/	Products	t	100	170	\N	ir.actions.act_window,318	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
217	334/170/217/	Vendors	t	200	170	\N	ir.actions.act_window,59	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
315	300/307/315/	Settings	t	0	307	\N	ir.actions.act_window,470	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
177	334/171/177/	Generate Entries	t	10	171	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
172	334/171/172/	Miscellaneous	t	1	171	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
300	300/	Employees	t	75	\N	hr,static/description/icon.png	\N	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
173	334/171/173/	Journals	t	2	171	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
301	300/301/	Human Resources	t	0	300	\N	\N	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
174	334/171/174/	Ledgers	t	3	171	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
175	334/171/175/	Management	t	10	171	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
316	300/307/316/	Contracts	t	3	307	\N	\N	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135
176	334/171/176/	Actions	t	11	171	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
196	334/171/172/196/	Journal Items	t	10	172	\N	ir.actions.act_window,278	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
302	300/302/	Employees	t	3	300	\N	\N	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
197	334/171/172/197/	Journal Entries	t	1	172	\N	ir.actions.act_window,281	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
198	334/171/173/198/	Sales	t	1	173	\N	ir.actions.act_window,271	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
317	300/302/317/	Contracts	t	4	302	\N	ir.actions.act_window,475	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135
200	334/171/173/200/	Bank and Cash	t	1	173	\N	ir.actions.act_window,273	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
303	300/302/303/	Employees	t	1	302	\N	ir.actions.act_window,465	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
199	334/171/173/199/	Purchases	t	1	173	\N	ir.actions.act_window,272	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
304	300/304/	Employee Directory	t	4	300	\N	ir.actions.act_window,463	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
201	334/171/173/201/	Miscellaneous	t	1	173	\N	ir.actions.act_window,274	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
305	300/305/	Reporting	t	95	300	\N	\N	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
202	334/171/174/202/	General Ledger	t	1	174	\N	ir.actions.act_window,275	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
203	334/171/174/203/	Partner Ledger	t	1	174	\N	ir.actions.act_window,276	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
306	300/306/	Reporting	t	99	300	\N	\N	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
307	300/307/	Configuration	t	100	300	\N	\N	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
336	334/181/184/336/	Account Tags	t	10	184	\N	ir.actions.act_window,301	1	2020-02-13 17:20:18.484061	1	2020-02-13 17:20:18.484061
160	158/160/	small data information	t	6	158	\N	\N	1	2020-02-05 14:40:20.826889	1	2020-02-17 18:01:59.539543
337	334/181/184/337/	Account Groups	t	10	184	\N	ir.actions.act_window,320	1	2020-02-13 17:20:18.484061	1	2020-02-13 17:20:18.484061
161	158/160/161/	word grammar types	t	1	160	\N	ir.actions.act_window,201	1	2020-02-05 14:40:20.826889	1	2020-02-17 18:01:59.539543
162	158/160/162/	word gender types	t	2	160	\N	ir.actions.act_window,202	1	2020-02-05 14:40:20.826889	1	2020-02-17 18:01:59.539543
165	158/165/	relation data	t	8	158	\N	\N	1	2020-02-06 08:41:43.907368	1	2020-02-17 18:01:59.539543
166	158/165/166/	motsXusers	t	1	165	\N	ir.actions.act_window,209	1	2020-02-06 08:41:43.907368	1	2020-02-17 18:01:59.539543
293	158/293/	new Word	t	8	158	\N	ir.actions.act_window,452	1	2020-02-11 14:19:52.765633	1	2020-02-17 18:01:59.539543
294	158/294/	Nouns and their genders	t	9	158	\N	ir.actions.act_window,453	1	2020-02-12 13:27:37.883265	1	2020-02-17 18:01:59.539543
298	158/298/	input forms	t	11	158	\N	\N	1	2020-02-13 09:26:05.173178	1	2020-02-17 18:01:59.539543
218	334/171/176/218/	Reconciliation	t	25	176	\N	ir.actions.client,319	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
219	334/171/175/219/	Analytic Items	t	35	175	\N	ir.actions.act_window,234	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
179	334/178/179/	Management	t	4	178	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
182	334/181/182/	Invoicing	t	1	181	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
183	334/181/183/	Payments	t	2	181	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
184	334/181/184/	Accounting	t	3	181	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
185	334/181/184/185/	Currencies	t	1	184	\N	ir.actions.act_window,70	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
186	334/181/186/	Management	t	4	181	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
187	334/181/187/	Analytic Accounting	t	5	181	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
204	334/181/182/204/	Fiscal Positions	t	3	182	\N	ir.actions.act_window,292	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
338	334/181/184/338/	Fiscal Years	t	10	184	\N	ir.actions.act_window,342	1	2020-02-13 17:20:18.484061	1	2020-02-13 17:20:18.484061
171	334/171/	Accounting	t	4	334	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-13 17:20:18.484061
212	334/181/182/212/	Taxes	t	2	182	\N	ir.actions.act_window,309	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
252	334/181/184/252/	TaxCloud Categories	t	3	184	\N	ir.actions.act_window,376	1	2020-02-10 14:36:42.82884	1	2020-02-10 14:36:42.82884
178	334/178/	Reporting	t	20	334	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-13 17:20:18.484061
181	334/181/	Configuration	t	35	334	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-13 17:20:18.484061
339	334/171/176/339/	Lock Dates	t	55	176	\N	ir.actions.act_window,499	1	2020-02-13 17:20:18.484061	1	2020-02-13 17:20:18.484061
340	334/171/175/340/	Automatic Transfers	t	30	175	\N	ir.actions.act_window,501	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082
341	334/178/180/341/	Profit and Loss	t	10	180	\N	ir.actions.client,504	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
342	334/178/180/342/	Balance Sheet	t	10	180	\N	ir.actions.client,505	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
343	334/178/180/343/	Executive Summary	t	10	180	\N	ir.actions.client,506	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
213	334/181/182/213/	Payment Terms	t	1	182	\N	ir.actions.act_window,311	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
205	334/181/184/205/	Chart of Accounts	t	1	184	\N	ir.actions.act_window,295	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
206	334/181/183/206/	Bank Accounts	t	2	183	\N	ir.actions.act_window,297	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
207	334/181/183/207/	Add a Bank Account	t	1	183	\N	ir.actions.server,298	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
208	334/181/182/208/	Journals	t	5	182	\N	ir.actions.act_window,299	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
209	334/181/184/209/	Journal Groups	t	2	184	\N	ir.actions.act_window,300	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
210	334/181/184/210/	Reconciliation Models	t	4	184	\N	ir.actions.act_window,307	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
211	334/181/184/211/	Reporting	t	4	184	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
220	334/181/187/220/	Analytic Accounts	t	0	187	\N	ir.actions.act_window,233	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
335	334/181/184/335/	Product Categories	t	3	184	\N	ir.actions.act_window,242	1	2020-02-13 17:20:18.484061	1	2020-02-13 17:20:18.484061
344	334/178/344/	Partner Reports	t	2	178	\N	\N	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
345	334/178/345/	Audit Reports	t	3	178	\N	\N	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
346	334/178/344/346/	Partner Ledger	t	10	344	\N	ir.actions.client,518	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
347	334/178/344/347/	Aged Receivable	t	10	344	\N	ir.actions.client,515	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
348	334/178/344/348/	Aged Payable	t	10	344	\N	ir.actions.client,516	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
349	334/178/345/349/	General Ledger	t	10	345	\N	ir.actions.client,514	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
350	334/178/345/350/	Trial Balance	t	10	345	\N	ir.actions.client,517	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
351	334/178/345/351/	Consolidated Journals	t	10	345	\N	ir.actions.client,511	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
180	334/178/180/	US GAAP	t	1	178	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-13 17:20:27.737555
352	334/178/345/352/	Tax Report	t	10	345	\N	ir.actions.client,510	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
353	334/178/179/353/	Analytic Report	t	10	179	\N	ir.actions.client,519	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
354	334/178/345/354/	Journals Audit	t	20	345	\N	ir.actions.act_window,520	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
355	334/178/180/355/	Cash Flow Statement	t	10	180	\N	ir.actions.client,509	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
356	334/181/186/356/	Financial Reports	t	10	186	\N	ir.actions.act_window,521	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
357	334/171/175/357/	Assets	t	101	175	\N	ir.actions.act_window,524	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
358	334/181/184/358/	Asset Models	t	10	184	\N	ir.actions.act_window,525	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
359	334/181/359/	Assets and Revenues	t	25	181	\N	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
360	334/171/175/360/	Deferred Revenues	t	103	175	\N	ir.actions.act_window,526	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
361	334/181/184/361/	Deferred Revenue Models	t	10	184	\N	ir.actions.act_window,527	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
362	334/171/175/362/	Deferred Expenses	t	104	175	\N	ir.actions.act_window,528	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
363	334/181/184/363/	Deferred Expense Models	t	10	184	\N	ir.actions.act_window,529	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
364	334/178/179/364/	Assets Report	t	10	179	\N	ir.actions.client,530	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
365	334/169/365/	Follow-up Reports	t	20	169	\N	ir.actions.act_window,533	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
366	334/181/182/366/	Follow-up Levels	t	6	182	\N	ir.actions.act_window,535	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
367	334/178/180/367/	Check Register	t	100	180	\N	ir.actions.client,537	1	2020-02-13 17:20:27.737555	1	2020-02-13 17:20:27.737555
\.


--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_ui_menu_id_seq', 400, true);


--
-- Name: ir_ui_menu ir_ui_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_menu_parent_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_ui_menu_parent_id_index ON public.ir_ui_menu USING btree (parent_id);


--
-- Name: ir_ui_menu_parent_path_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_ui_menu_parent_path_index ON public.ir_ui_menu USING btree (parent_path);


--
-- Name: ir_ui_menu ir_ui_menu_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_ui_menu ir_ui_menu_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.ir_ui_menu(id) ON DELETE RESTRICT;


--
-- Name: ir_ui_menu ir_ui_menu_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
