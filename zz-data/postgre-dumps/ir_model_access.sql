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
-- Name: ir_model_access; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_model_access (
    id integer NOT NULL,
    name character varying NOT NULL,
    active boolean,
    model_id integer NOT NULL,
    group_id integer,
    perm_read boolean,
    perm_write boolean,
    perm_create boolean,
    perm_unlink boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_model_access OWNER TO odoo;

--
-- Name: TABLE ir_model_access; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_model_access IS 'Model Access';


--
-- Name: COLUMN ir_model_access.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.name IS 'Name';


--
-- Name: COLUMN ir_model_access.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.active IS 'Active';


--
-- Name: COLUMN ir_model_access.model_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.model_id IS 'Object';


--
-- Name: COLUMN ir_model_access.group_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.group_id IS 'Group';


--
-- Name: COLUMN ir_model_access.perm_read; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.perm_read IS 'Read Access';


--
-- Name: COLUMN ir_model_access.perm_write; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.perm_write IS 'Write Access';


--
-- Name: COLUMN ir_model_access.perm_create; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.perm_create IS 'Create Access';


--
-- Name: COLUMN ir_model_access.perm_unlink; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.perm_unlink IS 'Delete Access';


--
-- Name: COLUMN ir_model_access.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_access.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_access.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_access.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_access.write_date IS 'Last Updated on';


--
-- Name: ir_model_access_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_model_access_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_access_id_seq OWNER TO odoo;

--
-- Name: ir_model_access_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_model_access_id_seq OWNED BY public.ir_model_access.id;


--
-- Name: ir_model_access id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_access ALTER COLUMN id SET DEFAULT nextval('public.ir_model_access_id_seq'::regclass);


--
-- Data for Name: ir_model_access; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_model_access (id, name, active, model_id, group_id, perm_read, perm_write, perm_create, perm_unlink, create_uid, create_date, write_uid, write_date) FROM stdin;
602	uom.category.manager	t	387	3	t	t	t	t	1	2020-02-10 14:21:35.323517	1	2020-02-10 14:21:35.323517
603	uom.category.user	t	387	1	t	f	f	f	1	2020-02-10 14:21:35.323517	1	2020-02-10 14:21:35.323517
604	uom.uom.manager	t	388	3	t	t	t	t	1	2020-02-10 14:21:35.323517	1	2020-02-10 14:21:35.323517
605	uom.uom.user	t	388	1	t	f	f	f	1	2020-02-10 14:21:35.323517	1	2020-02-10 14:21:35.323517
606	access_account_analytic_account	t	392	22	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
607	access_account_analytic_line	t	393	22	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
608	access_account_analytic_tag	t	390	22	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
609	access_account_analytic_group	t	391	22	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
610	access_account_analytic_distribution	t	389	22	t	t	t	t	1	2020-02-10 14:21:36.579403	1	2020-02-10 14:36:04.165396
724	access_account_invoice_extract_words	t	468	1	t	t	t	t	1	2020-02-10 14:36:21.464776	1	2020-02-10 14:36:21.464776
725	access_account_online_provider_id	t	469	1	t	f	f	f	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103
726	access_account_online_provider_id manager	t	469	2	t	t	t	t	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103
727	access_account_online_journal_id	t	470	1	t	f	f	f	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103
728	access_account_online_journal_id manager	t	470	2	t	t	t	t	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103
729	payment.acquirer.all	t	473	\N	t	f	f	f	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
730	payment.acquirer.system	t	473	3	t	t	t	t	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
731	payment.transaction.all	t	475	\N	t	f	f	f	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
732	payment.transaction.user	t	475	1	t	t	t	f	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
733	payment.transaction.system	t	475	3	t	t	t	t	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
734	payment.token.all	t	476	\N	t	f	f	f	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
735	payment.token.user	t	476	1	t	t	t	t	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
736	payment.token.portal	t	476	8	t	t	t	t	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
737	payment.token.system	t	476	3	t	t	t	t	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
738	payment.icon.all	t	474	\N	t	f	f	f	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
739	payment.icon.user	t	474	1	t	t	t	f	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
158	iap.account.manager	t	145	3	t	t	t	t	1	2020-01-31 09:41:05.538844	1	2020-01-31 09:41:05.538844
159	iap.account.user	t	145	1	t	f	t	f	1	2020-01-31 09:41:05.538844	1	2020-01-31 09:41:05.538844
160	mail.message.all	t	152	\N	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
161	mail.message.portal	t	152	8	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
162	mail.message.user	t	152	1	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
163	mail.mail.all	t	156	\N	f	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
164	mail.mail.portal	t	156	8	f	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
165	mail.mail.user	t	156	1	t	t	t	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
166	mail.mail.system	t	156	3	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
167	mail.followers.all	t	150	\N	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
168	mail.followers.portal	t	150	8	t	t	t	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
169	mail.followers.user	t	150	1	t	t	t	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
170	mail.followers.system	t	150	3	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
171	mail.notification.portal	t	151	8	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
172	mail.notification.user	t	151	1	t	t	t	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
173	 mail.notification.system	t	151	3	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
174	mail.group.all	t	164	\N	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
175	mail.group.user	t	164	1	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
176	mail.channel.partner.public	t	162	9	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
177	mail.channel.partner.portal	t	162	8	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
178	mail.channel.partner.user	t	162	1	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
179	mail.moderation.user	t	163	1	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
180	mail.alias.all	t	148	\N	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
181	mail.alias.user	t	148	1	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
182	mail.alias.system	t	148	3	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
135	bus.bus public	t	131	\N	f	f	f	f	1	2020-01-31 09:41:02.659015	1	2020-01-31 09:41:02.659015
136	bus.presence	t	132	1	t	t	t	t	1	2020-01-31 09:41:02.659015	1	2020-01-31 09:41:02.659015
137	bus.presence	t	132	8	t	t	t	t	1	2020-01-31 09:41:02.659015	1	2020-01-31 09:41:02.659015
138	resource.calendar.user	t	134	1	t	f	f	f	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
139	resource.calendar.system	t	134	3	t	t	t	t	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
140	resource.calendar.attendance.user	t	135	1	t	f	f	f	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
141	resource.calendar.attendance.system	t	135	3	t	t	t	t	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
142	resource.resource	t	136	3	t	f	f	f	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
143	resource.resource all	t	136	1	t	f	f	f	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
144	resource.calendar.leaves	t	137	1	t	t	t	t	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
145	resource.calendar.leaves	t	137	3	t	t	t	t	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
146	resource.test.all	t	138	1	t	t	t	t	1	2020-01-31 09:41:03.060603	1	2020-01-31 09:41:03.060603
147	access_utm_campaign_user	t	140	1	t	t	t	f	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
148	utm.campaign.system	t	140	3	t	t	t	t	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
149	access_utm_medium_user	t	139	1	t	t	t	f	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
150	access_utm_source_user	t	141	1	t	t	t	f	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
151	mail.utm.stage	t	142	1	t	f	f	f	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
152	mail.utm.stage	t	142	3	t	t	t	t	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
153	access_utm_campaign	t	140	\N	t	f	t	f	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
154	access_utm_medium	t	139	\N	t	f	t	f	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
155	access_utm_source	t	141	\N	t	f	t	f	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
156	utm.tag	t	143	1	t	f	f	f	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
157	utm.tag	t	143	3	t	t	t	t	1	2020-01-31 09:41:03.73074	1	2020-01-31 09:41:03.73074
183	mail.message.subtype.all	t	146	\N	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
184	mail.message.subtype.user	t	146	1	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
185	mail.tracking.value.all	t	147	\N	f	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
186	mail.tracking.value.portal	t	147	8	f	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
187	mail.tracking.value.user	t	147	1	f	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
1	decimal.precision configuration	t	93	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
2	ir_attachment group_user	t	27	1	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
3	ir_attachment group_portal_public	t	27	\N	f	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
4	ir_cron group_cron	t	28	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
5	ir_exports group_system	t	32	1	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
6	ir_exports_line group_system	t	33	1	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
7	ir_model group_erp_manager	t	3	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
8	ir_model_constraint group_erp_manager	t	6	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
9	ir_model_relation group_erp_manager	t	7	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
10	ir_model_access_group_erp_manager	t	8	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
11	ir_model_data group_erp_manager	t	9	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
12	ir_model_fields group_erp_manager	t	4	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
13	ir_model_fields_selection group_erp_manager	t	5	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
14	ir_model_all	t	3	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
15	ir_model_data user	t	9	1	t	f	t	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
16	ir_model_fields all	t	4	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
17	ir_model_fields_selection all	t	5	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
18	ir_module_category group_user	t	61	2	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
19	ir_module_module group_user	t	62	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
20	ir_module_module_dependency group_system	t	63	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
21	ir_module_module_exclusion group_system	t	64	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
22	ir_property group_user	t	60	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
611	product.category.user	t	395	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
101	base.import.tests.models.char	t	107	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
102	base.import.tests.models.char.required	t	108	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
103	base.import.tests.models.char.readonly	t	109	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
104	base.import.tests.models.char.states	t	110	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
105	base.import.tests.models.char.noreadonly	t	111	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
106	base.import.tests.models.char.stillreadonly	t	112	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
107	base.import.tests.models.m2o	t	113	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
108	base.import.tests.models.m2o.related	t	114	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
109	base.import.tests.models.m2o.required	t	115	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
110	base.import.tests.models.m2o.required.related	t	116	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
111	base.import.tests.models.o2m	t	117	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
112	base.import.tests.models.o2m.child	t	118	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
113	base.import.tests.models.float	t	120	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
114	base.import.tests.models.preview	t	119	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
115	base.import.mapping	t	105	1	t	t	t	t	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
116	access_base_import_tests_models_complex	t	121	1	t	f	f	f	1	2020-01-30 11:38:41.337091	1	2020-01-30 11:38:41.337091
117	access_web_editor_converter_test	t	123	\N	t	t	t	t	1	2020-01-30 11:38:43.621515	1	2020-01-30 11:38:43.621515
118	access_web_editor_converter_test_sub	t	124	\N	t	t	t	t	1	2020-01-30 11:38:43.621515	1	2020-01-30 11:38:43.621515
119	access_web_tour_tour_admin	t	125	3	t	f	t	f	1	2020-01-30 11:38:46.562637	1	2020-01-30 11:38:46.562637
120	access_web_tour_tour	t	125	\N	t	f	f	f	1	2020-01-30 11:38:46.562637	1	2020-01-30 11:38:46.562637
612	product.template.user	t	394	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
613	product.packaging.user	t	397	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
614	product.supplierinfo.user	t	398	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
615	product.pricelist.user	t	404	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
616	product.pricelist.item.user	t	405	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
617	product.pricelist partner manager	t	404	7	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
618	product.product employee	t	396	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
619	product.attribute	t	399	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
620	product.attribute value	t	400	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
621	product.template.attribute value	t	402	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
622	product..template.attribute exclusion	t	403	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
623	product.template.attribute line	t	401	1	t	f	f	f	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
624	product.category.manager	t	395	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
625	product.template.manager	t	394	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
626	product.packaging.manager	t	397	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
627	product.supplierinfo.manager	t	398	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
628	product.pricelist.manager	t	404	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
629	product.pricelist.item.manager	t	405	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
630	product.product manager	t	396	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
188	mail.tracking.value.system	t	147	3	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
189	mail.thread.all	t	157	\N	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
190	publisher.warranty.contract.all	t	167	\N	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
191	mail.template	t	165	1	t	t	t	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
192	mail.template_system	t	165	3	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
193	mail.shortcode	t	166	1	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
194	mail.shortcode.portal	t	166	8	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
195	mail.activity.all	t	154	\N	f	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
196	mail.activity.user	t	154	1	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
197	mail.activity.type.all	t	153	\N	f	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
198	mail.activity.type.user	t	153	1	t	f	f	f	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
631	product.attribute manager	t	399	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
783	procurement.group	t	502	1	t	t	t	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
784	stock.rule	t	501	1	t	t	t	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
785	stock.warehouse.manager	t	503	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
786	stock.warehouse.user	t	503	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
38	ir_default group_system	t	30	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
39	res_company group_erp_manager	t	87	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
40	res_company group_user	t	87	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
41	res_country group_user_all	t	71	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
787	stock.location.partner.manager	t	492	7	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
788	stock.location.manager	t	492	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
789	stock.location.user	t	492	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
790	stock.picking user	t	498	42	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
791	stock.picking manager	t	498	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
566	access_gender_combo	t	382	\N	t	t	t	t	1	2020-02-06 14:11:04.884387	1	2020-02-17 18:01:59.539543
567	access_noun	t	384	\N	t	t	t	t	1	2020-02-06 14:11:04.884387	1	2020-02-17 18:01:59.539543
877	access_v_nouns_x_genders	t	537	1	t	f	f	f	1	2020-02-12 13:20:41.724351	1	2020-02-17 18:01:59.539543
632	product.attribute value manager	t	400	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
633	product.template.attribute value manager	t	402	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
634	product.template.attribute exclusion manager	t	403	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
635	product.template.attribute line manager	t	401	3	t	t	t	t	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
740	payment.icon.system	t	474	3	t	t	t	t	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
779	barcode.nomenclature.user	t	485	1	t	f	f	f	1	2020-02-11 11:17:22.119845	1	2020-02-11 11:17:22.119845
780	barcode.nomenclature.manager	t	485	2	t	t	t	t	1	2020-02-11 11:17:22.119845	1	2020-02-11 11:17:22.119845
792	stock.picking	t	498	8	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
793	stock.picking.type all users	t	497	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
781	barcode.rule.user	t	486	1	t	f	f	f	1	2020-02-11 11:17:22.119845	1	2020-02-11 11:17:22.119845
23	ir_property group_manager	t	60	7	t	t	t	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
24	ir_rule group_erp_manager	t	34	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
25	ir_sequence group_user	t	11	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
26	ir_sequence group_system	t	11	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
27	ir_sequence_date_range group_user	t	12	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
28	ir_sequence_date_range group_system	t	12	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
29	ir_translation all	t	31	1	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
30	ir_translation group_system	t	31	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
31	ir_ui_menu group_user	t	13	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
32	ir_ui_menu group_system	t	13	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
199	mail.activity.type.system	t	153	3	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
200	access_mail_blacklist_system	t	160	3	t	t	t	t	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
245	crm_lead_tag salesman	t	207	11	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
246	crm_lead_tag manager	t	207	13	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
247	crm.lost.reason.manager	t	208	13	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
248	crm.lost.reason.salesman	t	208	11	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
249	crm.lost.reason.user	t	208	1	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
250	crm.activity.report.user	t	211	1	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
251	calendar.event.manager	t	179	13	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
252	calendar.event	t	179	11	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
253	calendar.event.type.manager	t	178	13	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
254	calendar.event.type.user	t	178	1	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
255	calendar.event.type.salesman	t	178	11	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
256	mail.activity.type.sale.manager	t	153	13	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
257	access_crm_lead_scoring_frequency	t	209	11	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
258	access_crm_lead_scoring_frequency_field	t	210	11	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
259	access.sms.template.sale.manager	t	197	13	t	t	t	t	1	2020-01-31 09:41:25.739339	1	2020-01-31 09:41:25.739339
33	ir_ui_view group_user	t	15	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
34	ir_ui_view group_system	t	15	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
35	ir_ui_view_custom_group_user	t	14	\N	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
36	ir_default all	t	30	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
37	ir_default group_user	t	30	1	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
794	stock.picking.type user	t	497	42	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
795	stock.picking.type manager	t	497	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
796	stock.picking.type portal	t	497	8	f	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
797	stock.production.lot user	t	496	42	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
798	stock.move manager	t	494	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
799	stock.move user	t	494	42	t	t	t	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
800	stock.move	t	494	8	f	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
782	barcode.rule.manager	t	486	2	t	t	t	t	1	2020-02-11 11:17:22.119845	1	2020-02-11 11:17:22.119845
801	stock.inventory user	t	490	42	t	t	t	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
802	stock.inventory manager	t	490	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
803	stock.inventory.line user	t	491	42	t	t	t	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
804	stock.inventory.line manager	t	491	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
805	stock.location stock manager	t	492	43	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
806	product_product_stock_user	t	396	42	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
807	product.template stock user	t	394	42	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
808	uom.category stock_manager	t	387	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
636	product.product.account.user	t	396	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
637	product.product.account.manager	t	396	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
638	product.template.account.manager	t	394	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
639	account.payment.term	t	426	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
640	account.payment.term.line	t	427	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
641	account.account.type	t	411	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
642	account.account.type	t	411	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
643	account.tax internal user	t	420	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
644	account.account	t	414	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
645	account.account	t	414	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
646	account.account user	t	414	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
647	account.account partner manager	t	414	7	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
648	account.group	t	415	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
649	account.group	t	415	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
650	account.root	t	416	33	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
651	account.root	t	416	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
652	account.tax	t	420	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
653	account.account.template	t	437	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
654	account.chart.template	t	438	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
655	account.tax.template	t	439	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
656	account.bank.statement.group.invoice	t	431	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
657	account.bank.statement.line.group.invoice	t	432	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
658	account.bank.statement	t	431	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
659	account.bank.statement.line	t	432	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
660	account.analytic.line manager	t	393	33	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
661	account.analytic.account	t	392	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
662	account.move	t	433	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
663	account.move.line invoice	t	434	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
664	account.move.portal	t	433	8	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
665	account.move.line.portal	t	434	8	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
201	calendar.attendee_portal	t	175	8	t	t	f	f	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
202	calendar.attendee_employee	t	175	1	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
203	calendar.alarm	t	177	1	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
204	calendar.event_all_user	t	179	8	t	f	f	f	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
205	calendar.event_all_employee	t	179	1	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
206	calendar.event.partner.manager	t	179	7	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
207	calendar.event.type.all	t	178	1	t	f	f	f	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
208	calendar.event.type.manager	t	178	3	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
209	access_calendar_alarm_manager	t	176	1	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
210	access_calendar_contacts_all	t	174	1	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
211	access_calendar_contacts	t	174	3	t	t	t	t	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
212	fetchmail.server	t	180	3	t	t	t	t	1	2020-01-31 09:41:15.076282	1	2020-01-31 09:41:15.076282
213	res.partner.autocomplete.sync.all	t	182	\N	t	f	f	f	1	2020-01-31 09:41:16.148376	1	2020-01-31 09:41:16.148376
214	res.partner.autocomplete.sync.portal	t	182	8	t	f	t	f	1	2020-01-31 09:41:16.148376	1	2020-01-31 09:41:16.148376
215	res.partner.autocomplete.sync.user	t	182	1	t	t	t	f	1	2020-01-31 09:41:16.148376	1	2020-01-31 09:41:16.148376
216	res.partner.autocomplete.sync.system	t	182	3	t	t	t	t	1	2020-01-31 09:41:16.148376	1	2020-01-31 09:41:16.148376
217	access.phone.blacklist.all	t	183	\N	f	f	f	f	1	2020-01-31 09:41:16.681251	1	2020-01-31 09:41:16.681251
218	access.phone.blacklist.system	t	183	3	t	t	t	t	1	2020-01-31 09:41:16.681251	1	2020-01-31 09:41:16.681251
219	crm.team	t	186	1	t	f	f	f	1	2020-01-31 09:41:17.144798	1	2020-01-31 09:41:17.144798
220	crm.team.user	t	186	11	t	f	f	f	1	2020-01-31 09:41:17.144798	1	2020-01-31 09:41:17.144798
221	crm.team.manager	t	186	13	t	t	t	t	1	2020-01-31 09:41:17.144798	1	2020-01-31 09:41:17.144798
222	snailmail.letter.all	t	187	\N	t	f	f	f	1	2020-01-31 09:41:17.860225	1	2020-01-31 09:41:17.860225
223	snailmail.letter.portal	t	187	8	t	f	t	f	1	2020-01-31 09:41:17.860225	1	2020-01-31 09:41:17.860225
224	snailmail.letter.user	t	187	1	t	t	t	f	1	2020-01-31 09:41:17.860225	1	2020-01-31 09:41:17.860225
225	snailmail.letter.system	t	187	3	t	t	t	t	1	2020-01-31 09:41:17.860225	1	2020-01-31 09:41:17.860225
226	access.sms.sms.all	t	196	\N	f	f	f	f	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211
227	access.sms.sms.system	t	196	3	t	t	t	t	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211
228	access.sms.template.all	t	197	\N	f	f	f	f	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211
229	access.sms.template.user	t	197	1	t	f	f	f	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211
230	access.sms.template.system	t	197	3	t	t	t	t	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211
231	digest.digest.administration	t	203	2	t	t	t	t	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505
232	digest.digest.user	t	203	1	t	f	f	f	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505
233	digest.tip.administration	t	204	2	t	t	t	t	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505
234	digest.tip.user	t	204	1	f	f	f	f	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505
666	account.payment.term	t	426	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
667	account.payment.term.line	t	427	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
668	account.cash.rounding	t	446	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
669	account.tax	t	420	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
235	crm.lead.manager	t	205	13	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
236	crm.lead	t	205	11	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
237	crm.stage	t	206	\N	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
238	crm.stage	t	206	13	t	t	t	t	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
239	res.partner.crm.manager	t	78	13	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
240	res.partner.category.crm.manager	t	76	13	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
241	res.partner.crm.user	t	78	11	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
242	res.partner.category.crm.user	t	76	11	t	t	t	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
243	crm.lead.partner.manager	t	205	7	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
244	crm_lead_tag	t	207	1	t	f	f	f	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
670	account.journal	t	418	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
671	account.journal	t	418	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
672	account.journal invoice	t	418	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
673	res.currency account manager	t	85	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
674	res.currency.rate account manager	t	86	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
675	account.payment.term partner manager	t	426	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
676	account.payment.term.line partner manager	t	427	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
677	account.fiscal.position account.manager	t	408	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
678	account.fiscal.position.tax account.manager	t	409	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
679	account.fiscal.position account.manager	t	410	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
680	account.fiscal.position all	t	408	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
681	account.fiscal.position.tax all	t	409	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
682	account.fiscal.position all	t	410	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
683	account.fiscal.position.template	t	441	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
684	account.fiscal.position.tax.template	t	442	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
685	account.fiscal.position.account.template	t	443	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
686	account.invoice.report_user	t	461	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
687	account.invoice.report	t	461	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
688	account.invoice.report_billing	t	461	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
689	res_partner group_account_manager	t	78	33	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
690	account.move.line manager	t	434	33	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
691	account.move manager	t	433	33	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
692	account.analytic.line invoice	t	393	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
693	account.account invoice	t	414	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
694	account.analytic.account accountant	t	392	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
695	account.account.type invoice	t	411	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
696	account.account.tag	t	412	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
697	account.account.tag	t	412	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
698	account.reconcile.model.billing	t	422	29	t	f	t	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
699	account.reconcile.model	t	422	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
700	account.reconcile.model.template	t	444	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
701	account.partial.reconcile.group.invoice	t	435	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
702	account.partial.reconcile	t	435	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
703	account.full.reconcile.group.invoice	t	436	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
704	account.full.reconcile	t	436	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
705	account.payment.method	t	423	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
42	res_country_state group_user_all	t	73	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
43	res_country_group group_user_all	t	72	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
44	res_country group_user	t	71	7	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
45	res_country_state group_user	t	73	7	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
46	res_country_group group_user	t	72	7	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
47	res_currency group_all	t	85	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
48	res_currency_rate group_all	t	86	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
49	res_currency group_system	t	85	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
50	res_currency_rate group_system	t	86	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
51	res_groups group_erp_manager	t	88	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
52	res_groups group_user	t	88	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
53	res_lang group_all	t	74	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
54	res_lang group_user	t	74	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
55	res_partner group_public	t	78	9	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
56	res_partner group_portal	t	78	8	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
57	res_partner group_partner_manager	t	78	7	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
58	res_partner group_user	t	78	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
59	res_partner_bank group_user	t	81	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
60	res_partner_bank group_partner_manager	t	81	7	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
61	res_partner_category group_user	t	76	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
62	res_partner_category group_partner_manager	t	76	7	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
63	res_partner_industry group_user	t	79	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
64	res_partner_industry group_system	t	79	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
65	res_partner_title group_partner_manager	t	77	7	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
66	res_partner_title group_user	t	77	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
67	res_users all	t	90	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
68	res_users group_erp_manager	t	90	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
69	res_users_log_all	t	89	\N	t	f	t	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
70	ir_actions_all	t	17	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
71	ir_actions_group_system	t	17	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
72	ir_actions_act_window_all	t	18	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
73	ir_actions_act_window_system	t	18	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
74	ir_actions_act_window_close_all	t	20	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
75	ir_actions_act_window_close_group_system	t	20	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
76	ir_actions_report	t	26	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
77	ir_actions_report_group_system	t	26	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
706	account.payment	t	424	29	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
707	account.bank.statement.cashbox	t	429	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
708	account.bank.statement.cashbox.line	t	428	32	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
709	account.tax.group internal user	t	419	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
710	account.tax.group	t	419	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
711	account.tax.group	t	419	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
712	account.fiscal.year.user	t	445	32	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
713	account.fiscal.year.manager	t	445	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
714	account.incoterms all	t	448	\N	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
715	account.incoterms manager	t	448	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
716	account.journal.group all	t	417	\N	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
717	account.journal.group manager	t	417	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
718	account.tax repartition.line.user	t	421	1	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
719	account.tax repartition.line.invoice	t	421	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
720	account.tax repartition.line.manager	t	421	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
721	account.tax repartition.line.template.manager	t	440	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
722	account.tax.report.line.invoice	t	413	29	t	f	f	f	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
723	account.tax.report.line.ac.user	t	413	33	t	t	t	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
741	purchase.order	t	479	37	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
742	purchase.order	t	479	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
743	purchase.order	t	479	29	t	t	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
744	purchase.order.portal	t	479	8	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
745	purchase.order.line user	t	480	37	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
746	purchase.order.line	t	480	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
747	purchase.order.line	t	480	29	t	t	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
748	purchase.order.line.portal	t	480	8	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
749	account.tax	t	420	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
750	account.tax	t	420	38	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
751	product.product.purchase.user	t	396	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
752	product.product purchase_manager	t	396	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
753	product.template purchase_user	t	394	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
754	account_move purchase	t	433	37	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
755	account_move purchase manager	t	433	38	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
756	account.fiscal.position purchase	t	408	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
757	res.partner purchase	t	78	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
758	account.journal	t	418	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
759	account.journal	t	418	38	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
760	account.move	t	433	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
761	account.move.line	t	434	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
762	account.analytic.line	t	393	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
763	res.partner.purchase.manager	t	78	38	t	t	t	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
764	uom.category purchase_manager	t	387	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
765	uom.uom purchase_manager	t	388	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
766	product.category purchase_manager	t	395	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
767	product.template purchase_manager	t	394	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
768	product.packaging purchase_manager	t	397	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
769	product.supplierinfo purchase_manager	t	398	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
78	ir_actions_todo group system	t	24	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
79	ir_actions_act_window_view_all	t	19	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
80	ir_actions_act_window_view_group_system	t	19	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
81	ir_actions_act_url_all	t	21	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
82	ir_actions_act_url_group_system	t	21	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
83	ir_server_object_lines_all	t	23	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
84	ir_server_object_lines_group_system	t	23	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
85	ir_actions_server_all	t	22	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
86	ir_actions_server_group_system	t	22	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
87	res_bank_group_system	t	80	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
88	res_bank_group_partner_manager	t	80	7	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
89	res_bank user	t	80	1	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
90	ir_filters all	t	29	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
91	ir_filters all	t	29	1	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
92	ir_filters all	t	29	8	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
93	ir_filters all	t	29	9	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
94	ir_config_parameter_system	t	35	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
95	ir_mail_server	t	37	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
96	ir_actions_client all	t	25	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
97	ir_logging admin	t	59	2	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
98	ir_actions_report_paperformat group_portal	t	69	\N	t	f	f	f	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
99	ir_actions_report_paperformat group_system	t	69	3	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
100	access_report_layout	t	68	\N	t	t	t	t	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
770	res_partner group_purchase_manager	t	78	38	t	t	t	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
771	product.pricelist.item purchase_manager	t	405	38	t	t	t	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
772	account.account purchase manager	t	414	38	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
773	account.journal purchase manager	t	418	38	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
774	access_purchase_bill_union	t	482	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
775	purchase.stock.report	t	481	38	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
776	purchase.stock.report user	t	481	37	t	f	f	f	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
777	product.tic.category.user	t	484	1	t	f	f	f	1	2020-02-10 14:36:42.82884	1	2020-02-10 14:36:42.82884
778	product.tic.category salemanager	t	484	3	t	t	t	t	1	2020-02-10 14:36:42.82884	1	2020-02-10 14:36:42.82884
809	uom.uom stock_manager	t	388	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
810	product.category stock_manager	t	395	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
811	product.template stock_manager	t	394	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
812	product.product stock_manager	t	396	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
813	product.packaging stock_manager	t	397	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
814	product.supplierinfo stock_manager	t	398	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
815	product.pricelist stock_manager	t	404	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
816	ir_property group_stock_manager	t	60	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
817	res_partner group_stock_manager	t	78	43	t	t	t	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
818	product.pricelist.item stock_manager	t	405	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
819	stock.warehouse.orderpoint	t	504	42	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
820	stock.warehouse.orderpoint system	t	504	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
821	stock.warehouse.orderpoint	t	504	8	f	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
822	stock.quant manager	t	499	43	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
823	stock.quant user	t	499	42	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
824	stock.quant all users	t	499	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
825	stock.quant.package all users	t	500	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
826	stock.quant.package stock manager	t	500	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
827	stock.quant.package stock user	t	500	42	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
828	stock.package_level all users	t	506	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
829	stock.package_level stock manager	t	506	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
830	stock.package_level stock user	t	506	42	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
831	stock_rule user	t	501	42	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
832	stock_rule manager	t	501	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
833	stock_rule stock manager	t	501	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
834	stock.location.route	t	493	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
835	stock.location.route	t	493	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
836	stock.rule.flow internal	t	501	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
837	stock.move.line manager	t	495	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
838	stock.move.line user	t	495	42	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
839	stock.move.line all users	t	495	1	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
840	stock.putaway.rule all users	t	489	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
841	stock.putaway.rule all managers	t	489	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
842	product.removal all users	t	488	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
843	stock.move.line portal	t	495	8	f	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
844	barcode.nomenclature.stock.user	t	485	42	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
845	barcode.nomenclature.stock.manager	t	485	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
846	barcode.rule.stock.user	t	486	42	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
847	barcode.rule.stock.manager	t	486	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
848	stock.scrap.user	t	505	42	t	t	t	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
849	stock.scrap.manager	t	505	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
850	product.attribute manager	t	399	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
851	product.attribute manager value	t	400	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
852	product.product.attribute manager value	t	402	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
853	product.attribute manager filter line	t	403	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
854	product.attribute manager line	t	401	43	t	t	t	t	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
855	access_report_stock_quantity	t	507	1	t	f	f	f	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
856	access_stock_report	t	527	43	t	f	f	f	1	2020-02-11 11:17:32.651164	1	2020-02-11 11:17:32.651164
857	access_report_stock_quantity	t	507	1	t	f	f	f	1	2020-02-11 11:17:32.651164	1	2020-02-11 11:17:32.651164
858	access.sms.template.stock.manager	t	197	43	t	t	t	t	1	2020-02-11 11:17:33.261454	1	2020-02-11 11:17:33.261454
859	account.account stock manager	t	414	43	t	f	f	f	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
860	stock.picking	t	498	29	t	t	t	f	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
861	stock.move	t	494	29	t	t	t	f	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
862	access_stock_valuation_layer	t	529	43	t	t	t	f	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
863	purchase.order	t	479	42	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
864	purchase.order.line	t	480	42	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
865	stock.location	t	492	37	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
866	stock.warehouse	t	503	37	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
867	stock.picking	t	498	37	t	t	t	t	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
868	stock.move	t	494	37	t	t	t	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
869	stock.location	t	492	38	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
870	stock.warehouse	t	503	38	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
871	stock.picking	t	498	38	t	t	t	t	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
872	stock.move	t	494	38	t	t	t	t	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
873	stock.location purchase manager	t	492	38	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
874	stock.warehouse.orderpoint	t	504	38	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
875	stock.warehouse.orderpoint	t	504	37	t	f	f	f	1	2020-02-11 11:17:35.484673	1	2020-02-11 11:17:35.484673
561	access_mot_de_langue	t	383	\N	t	f	f	f	1	2020-02-06 14:11:04.884387	1	2020-02-17 18:01:59.539543
562	access_grammar_type	t	380	\N	t	t	t	t	1	2020-02-06 14:11:04.884387	1	2020-02-17 18:01:59.539543
564	Vocabulary Editor 77	t	383	20	t	t	t	t	1	2020-02-06 14:11:04.884387	1	2020-02-17 18:01:59.539543
565	access_mots_learners	t	385	\N	t	t	t	t	1	2020-02-06 14:11:04.884387	1	2020-02-17 18:01:59.539543
933	access_vv_learning_session	t	570	1	t	t	t	t	1	2020-02-14 10:08:30.916445	1	2020-02-17 18:01:59.539543
966	access_openacademy_course	t	638	2	t	f	f	f	1	2020-02-18 13:09:17.72003	2	2020-02-18 14:01:13.338133
914	access_account_transfer_model	t	572	32	t	f	f	f	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082
915	access_account_transfer_model_manager	t	572	33	t	t	t	t	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082
916	access_account_transfer_model_invoicing_payment	t	572	29	t	f	t	f	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082
917	access_account_transfer_model_line	t	573	32	t	f	f	f	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082
918	access_account_transfer_model_line_manager	t	573	33	t	t	t	t	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082
919	access_account_transfer_model_line_invoicing_payment	t	573	29	t	f	t	f	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082
920	account.financial.html.report	t	578	33	t	t	t	t	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
921	account.financial.html.report invoice	t	578	29	t	f	f	f	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
922	account.financial.html.report.line	t	579	33	t	t	t	t	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
923	account.financial.html.report.line invoice	t	579	29	t	f	f	f	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
924	account.report_manager	t	574	29	t	t	t	t	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
925	account.report_footnote	t	575	32	t	t	t	t	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
926	account.report_footnote	t	575	29	t	f	f	f	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249
927	account.asset	t	592	32	t	f	f	f	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
928	account.asset	t	592	33	t	t	t	t	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
929	account.asset	t	592	29	t	f	t	f	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
930	account_followup.followup.line	t	597	29	t	f	f	f	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
931	account_followup.followup.line.manager	t	597	33	t	t	t	t	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
932	access.sms.template.account.manager	t	197	33	t	t	t	t	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
934	website	t	605	\N	t	f	f	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
935	website	t	605	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
936	access_website_menu	t	606	\N	t	f	f	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
937	Web Menu Manager	t	606	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
938	access_website_rewrite	t	609	\N	f	f	f	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
939	Web Rewrite Manager	t	609	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
940	access_website_page	t	607	\N	t	f	f	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
941	Web Page Manager	t	607	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
942	web menu manager	t	605	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
943	access_website_ir_ui_view	t	15	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
944	access_seo_public	t	601	\N	t	f	f	f	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
945	access_seo_manager	t	601	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
946	access_seo_designer	t	601	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
947	access_website_visitor_designer	t	611	58	t	t	f	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
948	access_website_track_designer	t	610	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
949	access_website_track_system	t	610	3	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
950	access_website_designer_route	t	608	58	t	t	t	t	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
951	access_theme_ir_ui_view	t	612	3	t	t	t	t	1	2020-02-14 11:31:14.678612	1	2020-02-14 11:31:14.678612
952	access_theme_ir_attachment	t	613	3	t	t	t	t	1	2020-02-14 11:31:14.678612	1	2020-02-14 11:31:14.678612
953	access_theme_website_menu	t	614	3	t	t	t	t	1	2020-02-14 11:31:14.678612	1	2020-02-14 11:31:14.678612
954	access_theme_website_page	t	615	3	t	t	t	t	1	2020-02-14 11:31:14.678612	1	2020-02-14 11:31:14.678612
955	access_website_visitor_salesman	t	611	11	t	f	f	f	1	2020-02-14 11:31:15.854012	1	2020-02-14 11:31:15.854012
956	access_website_track_salesman	t	610	11	t	f	f	f	1	2020-02-14 11:31:15.854012	1	2020-02-14 11:31:15.854012
968	course manager	t	638	60	t	t	t	t	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
969	session manager	t	639	60	t	t	t	t	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:53:51.884787
967	access_openacademy_session	t	639	2	t	f	f	f	1	2020-02-18 13:09:17.72003	2	2020-02-18 14:01:17.102128
897	hr.expense.employee	t	550	1	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
898	hr.expense.sheet.employee	t	551	1	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
899	hr.expense.user	t	550	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
900	hr.expense.sheet.user	t	551	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
901	hr.expense.manager	t	550	55	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
902	hr.expense.sheet.manager	t	551	55	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
903	product.product.hr.expense.user	t	396	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
904	product.template.hr.expense.user	t	394	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
905	uom.uom.hr.expense.user	t	388	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
906	account.journal.user	t	418	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
907	account.journal.employee	t	418	1	t	f	f	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
908	account.invoice.user	t	433	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
909	account.invoice.line.user	t	434	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
910	account.move.user	t	433	53	t	f	f	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
911	account.move.line.user	t	434	53	t	f	f	f	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
912	account.analytic.line.user	t	393	53	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
913	mail.activity.type.expense.user	t	153	55	t	t	t	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
878	hr.employee.category.user	t	540	50	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
879	hr.employee.category.emp	t	540	1	t	f	f	f	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
880	hr.employee user	t	539	50	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
881	hr.employee system user	t	539	1	f	f	f	f	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
882	hr.employee_public	t	541	1	t	f	f	f	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
883	resource.resource.user	t	136	50	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
884	hr.department.user	t	542	50	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
885	hr.department.employee	t	542	1	t	f	f	f	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
886	hr.job user	t	543	50	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
887	ir_property hr_user	t	60	50	t	t	t	f	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
888	access_hr_plan_activity_type	t	544	1	t	f	f	f	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
889	access_hr_plan_employee	t	545	1	t	f	f	f	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
890	access_hr_plan_activity_type	t	544	50	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
891	access_hr_plan_hr_user	t	545	50	t	t	t	t	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
892	hr.employee.resource.manager	t	136	51	t	t	t	t	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135
893	hr.employee.resource.calendar.user	t	134	50	t	t	t	t	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135
894	hr.employee.resource.calendar.attendance.user	t	135	50	t	t	t	t	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135
895	hr.contract.manager	t	548	52	t	t	t	t	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135
896	hr.contract.employee.report	t	549	52	t	t	t	t	1	2020-02-13 10:46:48.825666	1	2020-02-13 10:46:48.825666
\.


--
-- Name: ir_model_access_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_model_access_id_seq', 969, true);


--
-- Name: ir_model_access ir_model_access_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_pkey PRIMARY KEY (id);


--
-- Name: ir_model_access_group_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_access_group_id_index ON public.ir_model_access USING btree (group_id);


--
-- Name: ir_model_access_model_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_access_model_id_index ON public.ir_model_access USING btree (model_id);


--
-- Name: ir_model_access_name_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_access_name_index ON public.ir_model_access USING btree (name);


--
-- Name: ir_model_access ir_model_access_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_access ir_model_access_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: ir_model_access ir_model_access_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_model_access ir_model_access_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
