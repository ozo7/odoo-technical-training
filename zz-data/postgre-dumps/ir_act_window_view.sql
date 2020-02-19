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
-- Name: ir_act_window_view; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_act_window_view (
    id integer NOT NULL,
    sequence integer,
    view_id integer,
    view_mode character varying NOT NULL,
    act_window_id integer,
    multi boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_act_window_view OWNER TO odoo;

--
-- Name: TABLE ir_act_window_view; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_act_window_view IS 'Action Window View';


--
-- Name: COLUMN ir_act_window_view.sequence; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.sequence IS 'Sequence';


--
-- Name: COLUMN ir_act_window_view.view_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.view_id IS 'View';


--
-- Name: COLUMN ir_act_window_view.view_mode; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.view_mode IS 'View Type';


--
-- Name: COLUMN ir_act_window_view.act_window_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.act_window_id IS 'Action';


--
-- Name: COLUMN ir_act_window_view.multi; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.multi IS 'On Multiple Doc.';


--
-- Name: COLUMN ir_act_window_view.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.create_uid IS 'Created by';


--
-- Name: COLUMN ir_act_window_view.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.create_date IS 'Created on';


--
-- Name: COLUMN ir_act_window_view.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_act_window_view.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_window_view.write_date IS 'Last Updated on';


--
-- Name: ir_act_window_view_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_act_window_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_act_window_view_id_seq OWNER TO odoo;

--
-- Name: ir_act_window_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_act_window_view_id_seq OWNED BY public.ir_act_window_view.id;


--
-- Name: ir_act_window_view id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_window_view ALTER COLUMN id SET DEFAULT nextval('public.ir_act_window_view_id_seq'::regclass);


--
-- Data for Name: ir_act_window_view; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_act_window_view (id, sequence, view_id, view_mode, act_window_id, multi, create_uid, create_date, write_uid, write_date) FROM stdin;
46	0	530	kanban	186	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
47	1	532	tree	186	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
48	1	562	dashboard	192	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
49	2	534	pivot	192	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
50	3	558	graph	192	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
51	4	564	cohort	192	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
52	5	532	tree	192	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
53	1	563	dashboard	193	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
54	2	559	pivot	193	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
55	3	560	graph	193	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
56	7	562	dashboard	177	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
57	6	564	cohort	177	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
58	7	561	map	177	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
59	6	\N	dashboard	175	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
60	7	\N	cohort	175	\N	1	2020-01-31 09:41:25.371908	1	2020-01-31 09:41:25.371908
9	1	124	kanban	59	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
10	2	117	tree	59	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
11	3	121	form	59	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
12	10	157	tree	74	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
13	20	156	form	74	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
14	10	161	form	75	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
74	1	758	tree	303	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
75	2	760	form	303	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
76	\N	636	tree	234	\N	1	2020-02-10 14:36:23.852697	1	2020-02-10 14:36:23.852697
77	\N	645	kanban	234	\N	1	2020-02-10 14:36:23.852697	1	2020-02-10 14:36:23.852697
78	\N	641	form	234	\N	1	2020-02-10 14:36:23.852697	1	2020-02-10 14:36:23.852697
79	\N	643	graph	234	\N	1	2020-02-10 14:36:23.852697	1	2020-02-10 14:36:23.852697
1	1	12	tree	7	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
2	2	13	form	7	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
3	0	124	kanban	57	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
4	2	121	form	57	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
5	1	117	tree	57	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
6	1	124	kanban	58	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
7	2	117	tree	58	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
80	\N	644	pivot	234	\N	1	2020-02-10 14:36:23.852697	1	2020-02-10 14:36:23.852697
81	\N	881	grid	234	\N	1	2020-02-10 14:36:23.852697	1	2020-02-10 14:36:23.852697
82	\N	1042	tree	412	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
83	\N	1041	form	412	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
84	1	1100	tree	438	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
85	3	1108	form	438	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
86	3	1098	pivot	438	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
87	3	1099	graph	438	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
15	1	421	calendar	133	\N	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
16	2	419	tree	133	\N	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
17	3	420	form	133	\N	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
18	0	124	kanban	135	\N	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
19	1	117	tree	135	\N	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
20	2	121	form	135	\N	1	2020-01-31 09:41:14.870151	1	2020-01-31 09:41:14.870151
21	3	463	map	135	\N	1	2020-01-31 09:41:18.584597	1	2020-01-31 09:41:18.584597
22	1	525	tree	174	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
23	2	526	kanban	174	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
24	3	527	calendar	174	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
25	4	534	pivot	174	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
26	5	533	graph	174	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
27	0	530	kanban	175	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
28	1	532	tree	175	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
8	3	121	form	58	\N	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
61	\N	651	tree	237	\N	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
62	\N	652	form	237	\N	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
63	\N	\N	tree	240	\N	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
64	\N	657	form	240	\N	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
65	\N	\N	kanban	240	\N	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
66	\N	665	tree	243	\N	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
67	\N	667	form	243	\N	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
68	\N	748	tree	297	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
69	\N	749	kanban	297	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
70	\N	750	form	297	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
71	\N	742	tree	299	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
72	\N	743	kanban	299	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
73	\N	747	form	299	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
29	3	533	graph	175	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
30	4	534	pivot	175	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
31	5	527	calendar	175	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
32	0	530	kanban	177	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
33	1	532	tree	177	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
34	2	527	calendar	177	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
35	3	534	pivot	177	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
36	5	533	graph	177	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
37	0	530	kanban	180	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
38	1	532	tree	180	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
39	\N	549	graph	183	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
40	\N	547	pivot	183	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
41	\N	532	tree	183	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
42	\N	550	graph	184	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
43	\N	548	pivot	184	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
44	\N	525	tree	185	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
45	\N	526	kanban	185	\N	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
88	4	1102	kanban	438	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
89	\N	1110	tree	439	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
90	\N	1111	kanban	439	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
92	2	\N	tree	481	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
93	1	\N	kanban	481	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
94	3	1277	form	481	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
95	\N	1355	tree	524	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
96	\N	\N	kanban	524	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
97	\N	1353	form	524	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
98	\N	1356	tree	525	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
99	\N	\N	kanban	525	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
100	\N	1353	form	525	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
101	\N	1359	tree	526	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
102	\N	\N	kanban	526	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
103	\N	1362	form	526	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
104	\N	1360	tree	527	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
105	\N	\N	kanban	527	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
106	\N	1362	form	527	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
107	\N	1363	tree	528	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
108	\N	\N	kanban	528	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
109	\N	1366	form	528	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
110	\N	1364	tree	529	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
111	\N	\N	kanban	529	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
112	\N	1366	form	529	\N	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436
113	\N	1373	tree	533	\N	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
114	\N	1372	form	533	\N	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
91	10	1205	form	456	\N	1	2020-02-13 10:26:17.570798	1	2020-02-17 18:01:59.539543
115	\N	1498	tree	548	\N	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
116	\N	1499	graph	548	\N	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
117	\N	1506	tree	551	\N	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
118	\N	1507	graph	551	\N	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
\.


--
-- Name: ir_act_window_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_act_window_view_id_seq', 118, true);


--
-- Name: ir_act_window_view ir_act_window_view_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_pkey PRIMARY KEY (id);


--
-- Name: act_window_view_unique_mode_per_action; Type: INDEX; Schema: public; Owner: odoo
--

CREATE UNIQUE INDEX act_window_view_unique_mode_per_action ON public.ir_act_window_view USING btree (act_window_id, view_mode);


--
-- Name: ir_act_window_view ir_act_window_view_act_window_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_act_window_id_fkey FOREIGN KEY (act_window_id) REFERENCES public.ir_act_window(id) ON DELETE CASCADE;


--
-- Name: ir_act_window_view ir_act_window_view_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_window_view ir_act_window_view_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_view_id_fkey FOREIGN KEY (view_id) REFERENCES public.ir_ui_view(id) ON DELETE SET NULL;


--
-- Name: ir_act_window_view ir_act_window_view_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
