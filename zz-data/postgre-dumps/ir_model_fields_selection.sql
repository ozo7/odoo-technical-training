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
-- Name: ir_model_fields_selection; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_model_fields_selection (
    id integer NOT NULL,
    field_id integer NOT NULL,
    value character varying NOT NULL,
    name character varying NOT NULL,
    sequence integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_model_fields_selection OWNER TO odoo;

--
-- Name: TABLE ir_model_fields_selection; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_model_fields_selection IS 'Fields Selection';


--
-- Name: COLUMN ir_model_fields_selection.field_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_fields_selection.field_id IS 'Field';


--
-- Name: COLUMN ir_model_fields_selection.value; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_fields_selection.value IS 'Value';


--
-- Name: COLUMN ir_model_fields_selection.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_fields_selection.name IS 'Name';


--
-- Name: COLUMN ir_model_fields_selection.sequence; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_fields_selection.sequence IS 'Sequence';


--
-- Name: COLUMN ir_model_fields_selection.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_fields_selection.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_fields_selection.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_fields_selection.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_fields_selection.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_fields_selection.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_fields_selection.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_model_fields_selection.write_date IS 'Last Updated on';


--
-- Name: ir_model_fields_selection_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_model_fields_selection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_fields_selection_id_seq OWNER TO odoo;

--
-- Name: ir_model_fields_selection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_model_fields_selection_id_seq OWNED BY public.ir_model_fields_selection.id;


--
-- Name: ir_model_fields_selection id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_fields_selection ALTER COLUMN id SET DEFAULT nextval('public.ir_model_fields_selection_id_seq'::regclass);


--
-- Data for Name: ir_model_fields_selection; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_model_fields_selection (id, field_id, value, name, sequence, create_uid, create_date, write_uid, write_date) FROM stdin;
1	12	manual	Custom Object	0	\N	\N	\N	\N
2	12	base	Base Object	1	\N	\N	\N	\N
3	35	many2one_reference	many2one_reference	10	\N	\N	\N	\N
4	35	many2many	many2many	8	\N	\N	\N	\N
5	35	one2many	one2many	12	\N	\N	\N	\N
6	35	reference	reference	13	\N	\N	\N	\N
7	35	integer	integer	7	\N	\N	\N	\N
8	35	many2one	many2one	9	\N	\N	\N	\N
9	35	binary	binary	0	\N	\N	\N	\N
10	35	html	html	6	\N	\N	\N	\N
11	35	monetary	monetary	11	\N	\N	\N	\N
12	35	selection	selection	14	\N	\N	\N	\N
13	35	float	float	5	\N	\N	\N	\N
14	35	text	text	15	\N	\N	\N	\N
15	35	datetime	datetime	4	\N	\N	\N	\N
16	35	boolean	boolean	1	\N	\N	\N	\N
17	35	char	char	2	\N	\N	\N	\N
18	35	date	date	3	\N	\N	\N	\N
19	46	manual	Custom Field	0	\N	\N	\N	\N
20	46	base	Base Field	1	\N	\N	\N	\N
21	47	set null	Set NULL	1	\N	\N	\N	\N
22	47	cascade	Cascade	0	\N	\N	\N	\N
23	47	restrict	Restrict	2	\N	\N	\N	\N
24	141	standard	Standard	0	\N	\N	\N	\N
25	141	no_gap	No gap	1	\N	\N	\N	\N
26	180	ir.actions.report	ir.actions.report	0	\N	\N	\N	\N
27	180	ir.actions.act_window	ir.actions.act_window	1	\N	\N	\N	\N
28	180	ir.actions.server	ir.actions.server	3	\N	\N	\N	\N
29	180	ir.actions.act_url	ir.actions.act_url	2	\N	\N	\N	\N
30	180	ir.actions.client	ir.actions.client	4	\N	\N	\N	\N
31	203	diagram	Diagram	5	\N	\N	\N	\N
32	203	calendar	Calendar	4	\N	\N	\N	\N
33	203	graph	Graph	2	\N	\N	\N	\N
34	203	search	Search	8	\N	\N	\N	\N
35	203	kanban	Kanban	7	\N	\N	\N	\N
36	203	pivot	Pivot	3	\N	\N	\N	\N
37	203	gantt	Gantt	6	\N	\N	\N	\N
38	203	form	Form	1	\N	\N	\N	\N
39	203	tree	Tree	0	\N	\N	\N	\N
40	203	qweb	QWeb	9	\N	\N	\N	\N
41	217	extension	Extension View	1	\N	\N	\N	\N
42	217	primary	Base view	0	\N	\N	\N	\N
43	229	soft	Restore previous version (soft reset).	0	\N	\N	\N	\N
44	229	hard	Reset to file version (hard reset).	1	\N	\N	\N	\N
45	242	report	Report	1	\N	\N	\N	\N
46	242	action	Action	0	\N	\N	\N	\N
47	258	main	Main action of Current Window	4	\N	\N	\N	\N
48	258	new	New Window	1	\N	\N	\N	\N
49	258	fullscreen	Full Screen	3	\N	\N	\N	\N
50	258	current	Current Window	0	\N	\N	\N	\N
51	258	inline	Inline Edit	2	\N	\N	\N	\N
52	271	report	Report	1	\N	\N	\N	\N
53	271	action	Action	0	\N	\N	\N	\N
54	282	calendar	Calendar	4	\N	\N	\N	\N
55	282	graph	Graph	2	\N	\N	\N	\N
56	282	kanban	Kanban	6	\N	\N	\N	\N
57	282	pivot	Pivot	3	\N	\N	\N	\N
58	282	gantt	Gantt	5	\N	\N	\N	\N
59	282	form	Form	1	\N	\N	\N	\N
60	282	tree	Tree	0	\N	\N	\N	\N
61	297	report	Report	1	\N	\N	\N	\N
62	297	action	Action	0	\N	\N	\N	\N
63	309	new	New Window	0	\N	\N	\N	\N
64	309	self	This Window	1	\N	\N	\N	\N
65	313	report	Report	1	\N	\N	\N	\N
66	313	action	Action	0	\N	\N	\N	\N
67	324	ir_cron	Scheduled Action	1	\N	\N	\N	\N
68	324	ir_actions_server	Server Action	0	\N	\N	\N	\N
69	325	multi	Execute several actions	3	\N	\N	\N	\N
70	325	object_write	Update the Record	2	\N	\N	\N	\N
71	325	object_create	Create a new Record	1	\N	\N	\N	\N
72	325	code	Execute Python Code	0	\N	\N	\N	\N
73	339	report	Report	1	\N	\N	\N	\N
74	339	action	Action	0	\N	\N	\N	\N
75	351	reference	Reference	1	\N	\N	\N	\N
76	351	value	Value	0	\N	\N	\N	\N
77	351	equation	Python expression	2	\N	\N	\N	\N
78	362	done	Done	1	\N	\N	\N	\N
79	362	open	To Do	0	\N	\N	\N	\N
80	374	main	Main action of Current Window	3	\N	\N	\N	\N
81	374	new	New Window	1	\N	\N	\N	\N
82	374	current	Current Window	0	\N	\N	\N	\N
83	374	fullscreen	Full Screen	2	\N	\N	\N	\N
84	382	report	Report	1	\N	\N	\N	\N
85	382	action	Action	0	\N	\N	\N	\N
86	393	report	Report	1	\N	\N	\N	\N
87	393	action	Action	0	\N	\N	\N	\N
88	396	qweb-html	HTML	0	\N	\N	\N	\N
89	396	qweb-text	Text	2	\N	\N	\N	\N
90	396	qweb-pdf	PDF	1	\N	\N	\N	\N
91	423	url	URL	0	\N	\N	\N	\N
92	423	binary	File	1	\N	\N	\N	\N
93	446	hours	Hours	1	\N	\N	\N	\N
94	446	days	Days	2	\N	\N	\N	\N
95	446	weeks	Weeks	3	\N	\N	\N	\N
96	446	minutes	Minutes	0	\N	\N	\N	\N
97	446	months	Months	4	\N	\N	\N	\N
98	509	model	Model Field	0	\N	\N	\N	\N
99	509	model_terms	Structured Model Field	1	\N	\N	\N	\N
100	509	code	Code	2	\N	\N	\N	\N
101	513	to_translate	To Translate	0	\N	\N	\N	\N
102	513	inprogress	Translation in Progress	1	\N	\N	\N	\N
103	513	translated	Translated	2	\N	\N	\N	\N
104	571	ssl	SSL/TLS	2	\N	\N	\N	\N
105	571	starttls	TLS (STARTTLS)	1	\N	\N	\N	\N
106	571	none	None	0	\N	\N	\N	\N
107	650	server	Server	1	\N	\N	\N	\N
108	650	client	Client	0	\N	\N	\N	\N
109	670	integer	Integer	3	\N	\N	\N	\N
110	670	many2one	Many2One	6	\N	\N	\N	\N
111	670	binary	Binary	5	\N	\N	\N	\N
112	670	selection	Selection	9	\N	\N	\N	\N
113	670	float	Float	1	\N	\N	\N	\N
114	670	text	Text	4	\N	\N	\N	\N
115	670	boolean	Boolean	2	\N	\N	\N	\N
116	670	datetime	DateTime	8	\N	\N	\N	\N
117	670	char	Char	0	\N	\N	\N	\N
118	670	date	Date	7	\N	\N	\N	\N
119	713	to remove	To be removed	4	\N	\N	\N	\N
120	713	uninstallable	Uninstallable	0	\N	\N	\N	\N
121	713	uninstalled	Not Installed	1	\N	\N	\N	\N
122	713	to upgrade	To be upgraded	3	\N	\N	\N	\N
123	713	to install	To be installed	5	\N	\N	\N	\N
124	713	installed	Installed	2	\N	\N	\N	\N
125	715	GPL-3 or any later version	GPL-3 or later version	3	\N	\N	\N	\N
126	715	Other OSI approved licence	Other OSI Approved License	6	\N	\N	\N	\N
127	715	AGPL-3	Affero GPL-3	4	\N	\N	\N	\N
128	715	GPL-3	GPL Version 3	2	\N	\N	\N	\N
129	715	OEEL-1	Odoo Enterprise Edition License v1.0	7	\N	\N	\N	\N
130	715	Other proprietary	Other Proprietary	9	\N	\N	\N	\N
131	715	GPL-2 or any later version	GPL-2 or later version	1	\N	\N	\N	\N
132	715	LGPL-3	LGPL Version 3	5	\N	\N	\N	\N
133	715	OPL-1	Odoo Proprietary License v1.0	8	\N	\N	\N	\N
134	715	GPL-2	GPL Version 2	0	\N	\N	\N	\N
135	733	to remove	To be removed	4	\N	\N	\N	\N
136	733	uninstallable	Uninstallable	0	\N	\N	\N	\N
137	733	uninstalled	Not Installed	1	\N	\N	\N	\N
138	733	to upgrade	To be upgraded	3	\N	\N	\N	\N
139	733	to install	To be installed	5	\N	\N	\N	\N
140	733	unknown	Unknown	6	\N	\N	\N	\N
141	733	installed	Installed	2	\N	\N	\N	\N
142	745	to remove	To be removed	4	\N	\N	\N	\N
143	745	uninstallable	Uninstallable	0	\N	\N	\N	\N
144	745	uninstalled	Not Installed	1	\N	\N	\N	\N
145	745	to upgrade	To be upgraded	3	\N	\N	\N	\N
146	745	to install	To be installed	5	\N	\N	\N	\N
147	745	unknown	Unknown	6	\N	\N	\N	\N
148	745	installed	Installed	2	\N	\N	\N	\N
149	792	B1	B1  15  707 x 1000 mm	11	\N	\N	\N	\N
150	792	DLE	DLE 26 110 x 220 mm	23	\N	\N	\N	\N
151	792	B10	B10    16  31 x 44 mm	20	\N	\N	\N	\N
152	792	A9	A9  13  37 x 52 mm	9	\N	\N	\N	\N
153	792	B6	B6  20  125 x 176 mm	16	\N	\N	\N	\N
154	792	A8	A8  12  52 x 74 mm	8	\N	\N	\N	\N
155	792	Letter	Letter 2 8.5 x 11 inches, 215.9 x 279.4 mm	28	\N	\N	\N	\N
156	792	B8	B8  22  62 x 88 mm	18	\N	\N	\N	\N
157	792	A6	A6  10  105 x 148 mm	6	\N	\N	\N	\N
158	792	A4	A4  0   210 x 297 mm, 8.26 x 11.69 inches	4	\N	\N	\N	\N
159	792	custom	Custom	30	\N	\N	\N	\N
160	792	Comm10E	Comm10E 25  105 x 241 mm, U.S. Common 10 Envelope	22	\N	\N	\N	\N
161	792	Ledger	Ledger  28  431.8 x 279.4 mm	26	\N	\N	\N	\N
162	792	Executive	Executive 4   7.5 x 10 inches, 190.5 x 254 mm	24	\N	\N	\N	\N
163	792	A0	A0  5   841 x 1189 mm	0	\N	\N	\N	\N
164	792	B2	B2  17  500 x 707 mm	12	\N	\N	\N	\N
165	792	A2	A2  7   420 x 594 mm	2	\N	\N	\N	\N
166	792	A1	A1  6   594 x 841 mm	1	\N	\N	\N	\N
167	792	Folio	Folio 27  210 x 330 mm	25	\N	\N	\N	\N
168	792	B0	B0  14  1000 x 1414 mm	10	\N	\N	\N	\N
169	792	B7	B7  21  88 x 125 mm	17	\N	\N	\N	\N
170	792	Legal	Legal    3   8.5 x 14 inches, 215.9 x 355.6 mm	27	\N	\N	\N	\N
171	792	A5	A5  9   148 x 210 mm	5	\N	\N	\N	\N
172	792	B5	B5  1   176 x 250 mm, 6.93 x 9.84 inches	15	\N	\N	\N	\N
173	792	A3	A3  8   297 x 420 mm	3	\N	\N	\N	\N
174	792	B4	B4  19  250 x 353 mm	14	\N	\N	\N	\N
175	792	Tabloid	Tabloid 29 279.4 x 431.8 mm	29	\N	\N	\N	\N
176	792	B3	B3  18  353 x 500 mm	13	\N	\N	\N	\N
177	792	C5E	C5E 24  163 x 229 mm	21	\N	\N	\N	\N
178	792	B9	B9  23  33 x 62 mm	19	\N	\N	\N	\N
179	792	A7	A7  11  74 x 105 mm	7	\N	\N	\N	\N
180	799	Landscape	Landscape	0	\N	\N	\N	\N
181	799	Portrait	Portrait	1	\N	\N	\N	\N
182	830	before	Before Address	0	\N	\N	\N	\N
183	830	after	After Address	1	\N	\N	\N	\N
184	863	rtl	Right-to-Left	1	\N	\N	\N	\N
185	863	ltr	Left-to-Right	0	\N	\N	\N	\N
186	866	2	Tuesday	1	\N	\N	\N	\N
187	866	6	Saturday	5	\N	\N	\N	\N
188	866	7	Sunday	6	\N	\N	\N	\N
189	866	3	Wednesday	2	\N	\N	\N	\N
190	866	4	Thursday	3	\N	\N	\N	\N
191	866	1	Monday	0	\N	\N	\N	\N
192	866	5	Friday	4	\N	\N	\N	\N
193	926	other	Other Address	3	\N	\N	\N	\N
194	926	invoice	Invoice Address	1	\N	\N	\N	\N
195	926	delivery	Delivery Address	2	\N	\N	\N	\N
196	926	contact	Contact	0	\N	\N	\N	\N
197	926	private	Private Address	4	\N	\N	\N	\N
198	941	person	Individual	0	\N	\N	\N	\N
199	941	company	Company	1	\N	\N	\N	\N
200	1037	before	Before Amount	1	\N	\N	\N	\N
201	1037	after	After Amount	0	\N	\N	\N	\N
202	1085	done	Done	2	\N	\N	\N	\N
203	1085	just_done	Just done	1	\N	\N	\N	\N
204	1085	not_done	Not done	0	\N	\N	\N	\N
205	1087	Lato	Lato	0	\N	\N	\N	\N
206	1087	Oswald	Oswald	4	\N	\N	\N	\N
207	1087	Montserrat	Montserrat	3	\N	\N	\N	\N
208	1087	Roboto	Roboto	1	\N	\N	\N	\N
209	1087	Open_Sans	Open Sans	2	\N	\N	\N	\N
210	1087	Raleway	Raleway	5	\N	\N	\N	\N
211	1232	init	init	0	\N	\N	\N	\N
212	1232	done	done	1	\N	\N	\N	\N
213	1242	init	init	0	\N	\N	\N	\N
214	1242	done	done	1	\N	\N	\N	\N
215	1283	tgz	TGZ Archive	2	\N	\N	\N	\N
216	1283	csv	CSV File	0	\N	\N	\N	\N
217	1283	po	PO File	1	\N	\N	\N	\N
218	1286	choose	choose	0	\N	\N	\N	\N
219	1286	get	get	1	\N	\N	\N	\N
220	1317	selection	Selection	1	\N	\N	\N	\N
221	1317	option	Option	0	\N	\N	\N	\N
222	1317	finished	Finished	2	\N	\N	\N	\N
223	282	qweb	QWeb	7	\N	\N	\N	\N
224	282	cohort	Cohort	8	\N	\N	\N	\N
225	203	cohort	Cohort	10	\N	\N	\N	\N
226	1522	D	La réponse D	3	\N	\N	\N	\N
227	1522	A	Qu'il n'est pas arrivé à Toronto	0	\N	\N	\N	\N
228	1522	B	Qu'il était supposé arriver à Toronto	1	\N	\N	\N	\N
229	1522	C	Qu'est-ce qu'il fout ce maudit pancake, tabernacle ?	2	\N	\N	\N	\N
232	1643	offline	Offline	2	\N	\N	\N	\N
233	1643	online	Online	0	\N	\N	\N	\N
234	1643	away	Away	1	\N	\N	\N	\N
235	1673	1	Tuesday	1	\N	\N	\N	\N
236	1673	3	Thursday	3	\N	\N	\N	\N
237	1673	5	Saturday	5	\N	\N	\N	\N
238	1673	2	Wednesday	2	\N	\N	\N	\N
239	1673	0	Monday	0	\N	\N	\N	\N
240	1673	4	Friday	4	\N	\N	\N	\N
241	1673	6	Sunday	6	\N	\N	\N	\N
242	1679	morning	Morning	0	\N	\N	\N	\N
243	1679	afternoon	Afternoon	1	\N	\N	\N	\N
244	1681	1	Odd week	0	\N	\N	\N	\N
245	1681	0	Even week	1	\N	\N	\N	\N
246	1683	line_section	Section	0	\N	\N	\N	\N
247	1695	user	Human	0	\N	\N	\N	\N
248	1695	material	Material	1	\N	\N	\N	\N
249	1713	other	Other	1	\N	\N	\N	\N
250	1713	leave	Time Off	0	\N	\N	\N	\N
253	1850	partners	Authenticated Partners	1	\N	\N	\N	\N
254	1850	followers	Followers only	2	\N	\N	\N	\N
255	1850	everyone	Everyone	0	\N	\N	\N	\N
256	1886	inbox	Inbox	0	\N	\N	\N	\N
257	1886	email	Email	1	\N	\N	\N	\N
258	1887	exception	Exception	3	\N	\N	\N	\N
259	1887	canceled	Canceled	4	\N	\N	\N	\N
260	1887	sent	Sent	1	\N	\N	\N	\N
261	1887	ready	Ready to Send	0	\N	\N	\N	\N
262	1887	bounce	Bounced	2	\N	\N	\N	\N
263	1889	UNKNOWN	Unknown error	3	\N	\N	\N	\N
264	1889	SMTP	Connection failed (outgoing mail server problem)	0	\N	\N	\N	\N
265	1889	RECIPIENT	Invalid email address	1	\N	\N	\N	\N
266	1889	BOUNCE	Email address rejected by destination	2	\N	\N	\N	\N
267	1904	comment	Comment	1	\N	\N	\N	\N
268	1904	user_notification	User Specific Notification	3	\N	\N	\N	\N
269	1904	email	Email	0	\N	\N	\N	\N
270	1904	notification	System notification	2	\N	\N	\N	\N
271	1923	rejected	Rejected	2	\N	\N	\N	\N
272	1923	pending_moderation	Pending Moderation	0	\N	\N	\N	\N
273	1923	accepted	Accepted	1	\N	\N	\N	\N
274	1943	months	months	2	\N	\N	\N	\N
275	1943	weeks	weeks	1	\N	\N	\N	\N
276	1943	days	days	0	\N	\N	\N	\N
277	1944	previous_activity	after previous activity deadline	1	\N	\N	\N	\N
278	1944	current_date	after validation date	0	\N	\N	\N	\N
279	1946	danger	Error	1	\N	\N	\N	\N
280	1946	warning	Alert	0	\N	\N	\N	\N
281	1952	upload_file	Upload Document	1	\N	\N	\N	\N
282	1952	default	None	0	\N	\N	\N	\N
283	1977	overdue	Overdue	0	\N	\N	\N	\N
284	1977	today	Today	1	\N	\N	\N	\N
285	1977	planned	Planned	2	\N	\N	\N	\N
286	1992	overdue	Overdue	0	\N	\N	\N	\N
287	1992	today	Today	1	\N	\N	\N	\N
288	1992	planned	Planned	2	\N	\N	\N	\N
289	1997	danger	Error	1	\N	\N	\N	\N
290	1997	warning	Alert	0	\N	\N	\N	\N
291	2010	cancel	Cancelled	4	\N	\N	\N	\N
292	2010	exception	Delivery Failed	3	\N	\N	\N	\N
293	2010	received	Received	2	\N	\N	\N	\N
294	2010	sent	Sent	1	\N	\N	\N	\N
295	2010	outgoing	Outgoing	0	\N	\N	\N	\N
296	2140	folded	Folded	1	\N	\N	\N	\N
297	2140	open	Open	0	\N	\N	\N	\N
298	2140	closed	Closed	2	\N	\N	\N	\N
299	2151	allow	Always Allow	0	\N	\N	\N	\N
300	2151	ban	Permanent Ban	1	\N	\N	\N	\N
301	2161	chat	Chat Discussion	0	\N	\N	\N	\N
302	2161	channel	Channel	1	\N	\N	\N	\N
303	2170	groups	Selected group of users	2	\N	\N	\N	\N
304	2170	public	Everyone	0	\N	\N	\N	\N
305	2170	private	Invited people only	1	\N	\N	\N	\N
306	2258	overdue	Overdue	0	\N	\N	\N	\N
307	2258	today	Today	1	\N	\N	\N	\N
308	2258	planned	Planned	2	\N	\N	\N	\N
309	2263	danger	Error	1	\N	\N	\N	\N
310	2263	warning	Alert	0	\N	\N	\N	\N
311	2284	inbox	Handle in Odoo	1	\N	\N	\N	\N
312	2284	email	Handle by Emails	0	\N	\N	\N	\N
313	282	activity	Activity	11	\N	\N	\N	\N
314	325	followers	Add Followers	5	\N	\N	\N	\N
315	325	email	Send Email	4	\N	\N	\N	\N
316	325	next_activity	Create Next Activity	6	\N	\N	\N	\N
317	2327	months	Months	2	\N	\N	\N	\N
318	2327	weeks	Weeks	1	\N	\N	\N	\N
319	2327	days	Days	0	\N	\N	\N	\N
320	2328	specific	Specific User	0	\N	\N	\N	\N
321	2328	generic	Generic User From Record	1	\N	\N	\N	\N
322	203	activity	Activity	13	\N	\N	\N	\N
323	2357	comment	Comment	0	\N	\N	\N	\N
324	2357	notification	System notification	1	\N	\N	\N	\N
325	282	map	Map	12	\N	\N	\N	\N
326	203	map	Map	14	\N	\N	\N	\N
327	2469	b2b	On invitation	0	\N	\N	\N	\N
328	2469	b2c	Free sign up	1	\N	\N	\N	\N
329	2476	active	Confirmed	1	\N	\N	\N	\N
330	2476	new	Never Connected	0	\N	\N	\N	\N
331	2492	declined	Declined	2	\N	\N	\N	\N
332	2492	needsAction	Needs Action	0	\N	\N	\N	\N
333	2492	accepted	Accepted	3	\N	\N	\N	\N
334	2492	tentative	Uncertain	1	\N	\N	\N	\N
335	2496	free	Free	0	\N	\N	\N	\N
336	2496	busy	Busy	1	\N	\N	\N	\N
337	2510	email	Email	1	\N	\N	\N	\N
338	2510	notification	Notification	0	\N	\N	\N	\N
339	2512	minutes	Minutes	0	\N	\N	\N	\N
340	2512	hours	Hours	1	\N	\N	\N	\N
341	2512	days	Days	2	\N	\N	\N	\N
342	2542	draft	Unconfirmed	0	\N	\N	\N	\N
343	2542	open	Confirmed	1	\N	\N	\N	\N
344	2544	declined	Declined	2	\N	\N	\N	\N
345	2544	needsAction	Needs Action	0	\N	\N	\N	\N
346	2544	accepted	Accepted	3	\N	\N	\N	\N
347	2544	tentative	Uncertain	1	\N	\N	\N	\N
348	2557	confidential	Only internal users	2	\N	\N	\N	\N
349	2557	public	Everyone	0	\N	\N	\N	\N
350	2557	private	Only me	1	\N	\N	\N	\N
351	2559	free	Free	0	\N	\N	\N	\N
352	2559	busy	Busy	1	\N	\N	\N	\N
353	2566	yearly	Years	3	\N	\N	\N	\N
354	2566	daily	Days	0	\N	\N	\N	\N
355	2566	weekly	Weeks	1	\N	\N	\N	\N
356	2566	monthly	Months	2	\N	\N	\N	\N
357	2570	end_date	End date	1	\N	\N	\N	\N
358	2570	count	Number of repetitions	0	\N	\N	\N	\N
359	2580	day	Day of month	1	\N	\N	\N	\N
360	2580	date	Date of month	0	\N	\N	\N	\N
361	2582	SA	Saturday	5	\N	\N	\N	\N
362	2582	TH	Thursday	3	\N	\N	\N	\N
363	2582	MO	Monday	0	\N	\N	\N	\N
364	2582	TU	Tuesday	1	\N	\N	\N	\N
365	2582	WE	Wednesday	2	\N	\N	\N	\N
366	2582	FR	Friday	4	\N	\N	\N	\N
367	2582	SU	Sunday	6	\N	\N	\N	\N
368	2583	1	First	0	\N	\N	\N	\N
369	2583	3	Third	2	\N	\N	\N	\N
370	2583	5	Fifth	4	\N	\N	\N	\N
371	2583	2	Second	1	\N	\N	\N	\N
372	2583	4	Fourth	3	\N	\N	\N	\N
373	2583	-1	Last	5	\N	\N	\N	\N
374	1952	meeting	Meeting	2	\N	\N	\N	\N
375	2605	draft	Not Confirmed	0	\N	\N	\N	\N
376	2605	done	Confirmed	1	\N	\N	\N	\N
377	2608	pop	POP Server	0	\N	\N	\N	\N
378	2608	imap	IMAP Server	1	\N	\N	\N	\N
379	2608	local	Local Server	2	\N	\N	\N	\N
380	2631	idle	Idle	5	\N	\N	\N	\N
381	2631	onboarding_emoji	Onboarding emoji	1	\N	\N	\N	\N
382	2631	onboarding_command	Onboarding command	3	\N	\N	\N	\N
383	2631	disabled	Disabled	6	\N	\N	\N	\N
384	2631	onboarding_ping	Onboarding ping	4	\N	\N	\N	\N
385	2631	not_initialized	Not initialized	0	\N	\N	\N	\N
386	2631	onboarding_attachement	Onboarding attachement	2	\N	\N	\N	\N
387	2743	canceled	Canceled	3	\N	\N	\N	\N
388	2743	sent	Sent	1	\N	\N	\N	\N
389	2743	error	Error	2	\N	\N	\N	\N
390	2743	pending	In Queue	0	\N	\N	\N	\N
391	2744	MISSING_REQUIRED_FIELDS	MISSING_REQUIRED_FIELDS	0	\N	\N	\N	\N
392	2744	NO_PRICE_AVAILABLE	NO_PRICE_AVAILABLE	3	\N	\N	\N	\N
393	2744	UNKNOWN_ERROR	UNKNOWN_ERROR	5	\N	\N	\N	\N
394	2744	FORMAT_ERROR	FORMAT_ERROR	4	\N	\N	\N	\N
395	2744	CREDIT_ERROR	CREDIT_ERROR	1	\N	\N	\N	\N
396	2744	TRIAL_ERROR	TRIAL_ERROR	2	\N	\N	\N	\N
397	1904	snailmail	Snailmail	4	\N	\N	\N	\N
398	325	sms	Send SMS Text Message	7	\N	\N	\N	\N
399	1904	sms	SMS	5	\N	\N	\N	\N
400	1886	sms	SMS	2	\N	\N	\N	\N
401	1889	sms_number_missing	Missing Number	4	\N	\N	\N	\N
402	1889	sms_credit	Insufficient Credit	6	\N	\N	\N	\N
403	1889	sms_server	Server Error	7	\N	\N	\N	\N
404	1889	sms_number_format	Wrong Number Format	5	\N	\N	\N	\N
405	2869	canceled	Canceled	3	\N	\N	\N	\N
406	2869	outgoing	In Queue	0	\N	\N	\N	\N
407	2869	sent	Sent	1	\N	\N	\N	\N
408	2869	error	Error	2	\N	\N	\N	\N
409	2870	sms_number_missing	Missing Number	0	\N	\N	\N	\N
410	2870	sms_credit	Insufficient Credit	2	\N	\N	\N	\N
411	2870	sms_blacklist	Blacklisted	4	\N	\N	\N	\N
412	2870	sms_duplicate	Duplicate	5	\N	\N	\N	\N
413	2870	sms_server	Server Error	3	\N	\N	\N	\N
414	2870	sms_number_format	Wrong Number Format	1	\N	\N	\N	\N
415	2905	mass	Send SMS in batch	2	\N	\N	\N	\N
416	2905	comment	Post on a document	1	\N	\N	\N	\N
417	2905	numbers	Send to numbers	0	\N	\N	\N	\N
418	2510	sms	SMS Text Message	2	\N	\N	\N	\N
419	2991	quarterly	Quarterly	2	\N	\N	\N	\N
420	2991	monthly	Monthly	1	\N	\N	\N	\N
421	2991	weekly	Weekly	0	\N	\N	\N	\N
422	2998	deactivated	Deactivated	1	\N	\N	\N	\N
423	2998	activated	Activated	0	\N	\N	\N	\N
424	3048	overdue	Overdue	0	\N	\N	\N	\N
425	3048	today	Today	1	\N	\N	\N	\N
426	3048	planned	Planned	2	\N	\N	\N	\N
427	3050	danger	Error	1	\N	\N	\N	\N
428	3050	warning	Alert	0	\N	\N	\N	\N
429	3078	red	Next activity late	1	\N	\N	\N	\N
430	3078	green	Next activity is planned	2	\N	\N	\N	\N
431	3078	grey	No next activity planned	0	\N	\N	\N	\N
432	3083	opportunity	Opportunity	1	\N	\N	\N	\N
433	3083	lead	Lead	0	\N	\N	\N	\N
434	3084	1	Medium	1	\N	\N	\N	\N
435	3084	0	Low	0	\N	\N	\N	\N
436	3084	2	High	2	\N	\N	\N	\N
437	3084	3	Very High	3	\N	\N	\N	\N
438	3097	correct	Correct	0	\N	\N	\N	\N
439	3097	incorrect	Incorrect	1	\N	\N	\N	\N
440	3098	correct	Correct	0	\N	\N	\N	\N
441	3098	incorrect	Incorrect	1	\N	\N	\N	\N
442	3175	manual	Enrich leads on demand only	0	\N	\N	\N	\N
443	3175	auto	Enrich all leads automatically	1	\N	\N	\N	\N
444	3229	opportunity	Opportunity	1	\N	\N	\N	\N
445	3229	lead	Lead	0	\N	\N	\N	\N
446	3242	nothing	Do not link to a customer	2	\N	\N	\N	\N
447	3242	create	Create a new customer	0	\N	\N	\N	\N
448	3242	exist	Link to an existing customer	1	\N	\N	\N	\N
449	3251	merge	Merge with existing opportunities	1	\N	\N	\N	\N
450	3251	convert	Convert to opportunity	0	\N	\N	\N	\N
451	3255	nothing	Do not link to a customer	2	\N	\N	\N	\N
452	3255	create	Create a new customer	0	\N	\N	\N	\N
453	3255	exist	Link to an existing customer	1	\N	\N	\N	\N
454	3267	nothing	Do not link to a customer	3	\N	\N	\N	\N
455	3267	each_exist_or_create	Use existing partner or create	2	\N	\N	\N	\N
456	3267	create	Create a new customer	0	\N	\N	\N	\N
457	3267	exist	Link to an existing customer	1	\N	\N	\N	\N
687	6379	just_done	Just done	1	\N	\N	\N	\N
458	3269	merge	Merge with existing opportunities	1	\N	\N	\N	\N
459	3269	convert	Convert to opportunity	0	\N	\N	\N	\N
460	3290	lost	Lost	1	\N	\N	\N	\N
461	3290	won	Won	0	\N	\N	\N	\N
462	3290	pending	Pending	2	\N	\N	\N	\N
463	3293	lost	Lost	1	\N	\N	\N	\N
464	3293	won	Won	0	\N	\N	\N	\N
465	3293	pending	Pending	2	\N	\N	\N	\N
469	4934	weight	Default Weight	1	\N	\N	\N	\N
470	4934	volume	Default Volume	4	\N	\N	\N	\N
471	4934	length	Default Length	3	\N	\N	\N	\N
472	4934	unit	Default Units	0	\N	\N	\N	\N
473	4934	working_time	Default Working Time	2	\N	\N	\N	\N
474	4948	reference	Reference Unit of Measure for this category	1	\N	\N	\N	\N
475	4948	bigger	Bigger than the reference Unit of Measure	0	\N	\N	\N	\N
476	4948	smaller	Smaller than the reference Unit of Measure	2	\N	\N	\N	\N
477	5056	basic	Multiple prices per product	0	\N	\N	\N	\N
478	5056	advanced	Advanced price rules (discounts, formulas)	1	\N	\N	\N	\N
479	5057	1	Pound	1	\N	\N	\N	\N
480	5057	0	Kilogram	0	\N	\N	\N	\N
481	5058	1	Cubic Feet	1	\N	\N	\N	\N
482	5058	0	Cubic Meters	0	\N	\N	\N	\N
483	5061	planned	Planned	2	\N	\N	\N	\N
484	5061	overdue	Overdue	0	\N	\N	\N	\N
485	5061	today	Today	1	\N	\N	\N	\N
486	5063	warning	Alert	0	\N	\N	\N	\N
487	5063	danger	Error	1	\N	\N	\N	\N
488	5085	service	Service	1	\N	\N	\N	\N
489	5085	consu	Consumable	0	\N	\N	\N	\N
490	5149	planned	Planned	2	\N	\N	\N	\N
491	5149	overdue	Overdue	0	\N	\N	\N	\N
492	5149	today	Today	1	\N	\N	\N	\N
493	5151	warning	Alert	0	\N	\N	\N	\N
494	5151	danger	Error	1	\N	\N	\N	\N
495	5276	no_variant	Never	2	\N	\N	\N	\N
496	5276	dynamic	Dynamically	1	\N	\N	\N	\N
497	5276	always	Instantly	0	\N	\N	\N	\N
498	5343	without_discount	Show public price & discount to the customer	1	\N	\N	\N	\N
499	5343	with_discount	Discount included in the price	0	\N	\N	\N	\N
500	5356	1_product	Product	2	\N	\N	\N	\N
501	5356	2_product_category	 Product Category	1	\N	\N	\N	\N
502	5356	0_product_variant	Product Variant	3	\N	\N	\N	\N
503	5356	3_global	All Products	0	\N	\N	\N	\N
504	5357	standard_price	Cost	1	\N	\N	\N	\N
505	5357	list_price	Sales Price	0	\N	\N	\N	\N
506	5357	pricelist	Other Pricelist	2	\N	\N	\N	\N
507	5370	fixed	Fixed Price	0	\N	\N	\N	\N
508	5370	percentage	Percentage (discount)	1	\N	\N	\N	\N
509	5370	formula	Formula	2	\N	\N	\N	\N
510	5459	good	Good Debtor	0	\N	\N	\N	\N
511	5459	normal	Normal Debtor	1	\N	\N	\N	\N
512	5459	bad	Bad Debtor	2	\N	\N	\N	\N
513	5460	warning	Warning	1	\N	\N	\N	\N
514	5460	block	Blocking Message	2	\N	\N	\N	\N
515	5460	no-message	No Message	0	\N	\N	\N	\N
516	5466	payable	Payable	2	\N	\N	\N	\N
517	5466	liquidity	Liquidity	3	\N	\N	\N	\N
518	5466	other	Regular	0	\N	\N	\N	\N
519	5466	receivable	Receivable	1	\N	\N	\N	\N
520	5467	liability	Liability	2	\N	\N	\N	\N
521	5467	income	Income	3	\N	\N	\N	\N
522	5467	asset	Asset	1	\N	\N	\N	\N
523	5467	expense	Expense	4	\N	\N	\N	\N
524	5467	off_balance	Off Balance	5	\N	\N	\N	\N
525	5467	equity	Equity	0	\N	\N	\N	\N
526	5477	taxes	Taxes	1	\N	\N	\N	\N
527	5477	accounts	Accounts	0	\N	\N	\N	\N
528	5561	planned	Planned	2	\N	\N	\N	\N
529	5561	overdue	Overdue	0	\N	\N	\N	\N
530	5561	today	Today	1	\N	\N	\N	\N
531	5563	warning	Alert	0	\N	\N	\N	\N
532	5563	danger	Error	1	\N	\N	\N	\N
533	5583	general	Miscellaneous	4	\N	\N	\N	\N
534	5583	bank	Bank	3	\N	\N	\N	\N
535	5583	cash	Cash	2	\N	\N	\N	\N
536	5583	sale	Sales	0	\N	\N	\N	\N
537	5583	purchase	Purchase	1	\N	\N	\N	\N
538	5594	invoice	Based on Invoice	2	\N	\N	\N	\N
539	5594	partner	Based on Customer	1	\N	\N	\N	\N
540	5594	none	Free	0	\N	\N	\N	\N
541	5595	odoo	Odoo	0	\N	\N	\N	\N
542	5595	euro	European	1	\N	\N	\N	\N
543	5610	bank_rec	Bank Reconciliation	1	\N	\N	\N	\N
544	5610	pay_val	Payment Validation	0	\N	\N	\N	\N
545	5645	purchase	Purchases	1	\N	\N	\N	\N
546	5645	sale	Sales	0	\N	\N	\N	\N
547	5645	none	None	2	\N	\N	\N	\N
548	5646	fixed	Fixed	1	\N	\N	\N	\N
549	5646	percent	Percentage of Price	2	\N	\N	\N	\N
550	5646	group	Group of Taxes	0	\N	\N	\N	\N
551	5646	division	Percentage of Price Tax Included	3	\N	\N	\N	\N
552	5658	on_invoice	Based on Invoice	0	\N	\N	\N	\N
553	5658	on_payment	Based on Payment	1	\N	\N	\N	\N
554	5673	base	Base	0	\N	\N	\N	\N
555	5673	tax	of tax	1	\N	\N	\N	\N
556	5692	invoice_matching	Match existing invoices/bills.	2	\N	\N	\N	\N
557	5692	writeoff_button	Manually create a write-off on clicked button.	0	\N	\N	\N	\N
558	5692	writeoff_suggestion	Suggest counterpart values.	1	\N	\N	\N	\N
559	5696	both	Amount Paid/Received	2	\N	\N	\N	\N
560	5696	amount_received	Amount Received	0	\N	\N	\N	\N
561	5696	amount_paid	Amount Paid	1	\N	\N	\N	\N
562	5697	between	Is Between	2	\N	\N	\N	\N
563	5697	greater	Is Greater Than	1	\N	\N	\N	\N
564	5697	lower	Is Lower Than	0	\N	\N	\N	\N
565	5700	match_regex	Match Regex	2	\N	\N	\N	\N
566	5700	not_contains	Not Contains	1	\N	\N	\N	\N
567	5700	contains	Contains	0	\N	\N	\N	\N
568	5702	match_regex	Match Regex	2	\N	\N	\N	\N
569	5702	not_contains	Not Contains	1	\N	\N	\N	\N
570	5702	contains	Contains	0	\N	\N	\N	\N
571	5704	match_regex	Match Regex	2	\N	\N	\N	\N
572	5704	not_contains	Not Contains	1	\N	\N	\N	\N
573	5704	contains	Contains	0	\N	\N	\N	\N
574	5715	fixed	Fixed	0	\N	\N	\N	\N
575	5715	percentage	Percentage of balance	1	\N	\N	\N	\N
576	5715	regex	From label	2	\N	\N	\N	\N
577	5728	fixed	Fixed	0	\N	\N	\N	\N
578	5728	percentage	Percentage of balance	1	\N	\N	\N	\N
579	5728	regex	From label	2	\N	\N	\N	\N
580	5746	outbound	Outbound	1	\N	\N	\N	\N
581	5746	inbound	Inbound	0	\N	\N	\N	\N
582	5755	planned	Planned	2	\N	\N	\N	\N
583	5755	overdue	Overdue	0	\N	\N	\N	\N
584	5755	today	Today	1	\N	\N	\N	\N
585	5757	warning	Alert	0	\N	\N	\N	\N
586	5757	danger	Error	1	\N	\N	\N	\N
587	5785	sent	Sent	2	\N	\N	\N	\N
588	5785	reconciled	Reconciled	3	\N	\N	\N	\N
589	5785	cancelled	Cancelled	4	\N	\N	\N	\N
590	5785	posted	Validated	1	\N	\N	\N	\N
591	5785	draft	Draft	0	\N	\N	\N	\N
592	5786	transfer	Internal Transfer	2	\N	\N	\N	\N
593	5786	outbound	Send Money	0	\N	\N	\N	\N
594	5786	inbound	Receive Money	1	\N	\N	\N	\N
595	5789	supplier	Vendor	1	\N	\N	\N	\N
596	5789	customer	Customer	0	\N	\N	\N	\N
597	5799	open	Keep open	0	\N	\N	\N	\N
598	5799	reconcile	Mark invoice as fully paid	1	\N	\N	\N	\N
599	5840	fixed	Fixed Amount	2	\N	\N	\N	\N
600	5840	balance	Balance	0	\N	\N	\N	\N
601	5840	percent	Percent	1	\N	\N	\N	\N
602	5844	day_current_month	of the current month	2	\N	\N	\N	\N
603	5844	day_following_month	of the following month	1	\N	\N	\N	\N
604	5844	day_after_invoice_date	days after the invoice date	0	\N	\N	\N	\N
605	5907	open	New	0	\N	\N	\N	\N
606	5907	confirm	Validated	1	\N	\N	\N	\N
607	5959	planned	Planned	2	\N	\N	\N	\N
608	5959	overdue	Overdue	0	\N	\N	\N	\N
609	5959	today	Today	1	\N	\N	\N	\N
610	5961	warning	Alert	0	\N	\N	\N	\N
611	5961	danger	Error	1	\N	\N	\N	\N
612	5985	draft	Draft	0	\N	\N	\N	\N
613	5985	cancel	Cancelled	2	\N	\N	\N	\N
614	5985	posted	Posted	1	\N	\N	\N	\N
615	5986	in_receipt	Purchase Receipt	6	\N	\N	\N	\N
616	5986	out_receipt	Sales Receipt	5	\N	\N	\N	\N
617	5986	out_invoice	Customer Invoice	1	\N	\N	\N	\N
618	5986	entry	Journal Entry	0	\N	\N	\N	\N
619	5986	out_refund	Customer Credit Note	2	\N	\N	\N	\N
620	5986	in_invoice	Vendor Bill	3	\N	\N	\N	\N
621	5986	in_refund	Vendor Credit Note	4	\N	\N	\N	\N
622	6011	not_paid	Not Paid	0	\N	\N	\N	\N
623	6011	paid	Paid	2	\N	\N	\N	\N
624	6011	in_payment	In Payment	1	\N	\N	\N	\N
625	6101	line_section	Section	0	\N	\N	\N	\N
626	6101	line_note	Note	1	\N	\N	\N	\N
627	6196	purchase	Purchases	1	\N	\N	\N	\N
628	6196	sale	Sales	0	\N	\N	\N	\N
629	6196	none	None	2	\N	\N	\N	\N
630	6197	fixed	Fixed	1	\N	\N	\N	\N
631	6197	percent	Percentage of Price	2	\N	\N	\N	\N
632	6197	group	Group of Taxes	0	\N	\N	\N	\N
633	6197	division	Percentage of Price Tax Included	3	\N	\N	\N	\N
634	6209	on_invoice	Based on Invoice	0	\N	\N	\N	\N
635	6209	on_payment	Based on Payment	1	\N	\N	\N	\N
636	6220	base	Base	0	\N	\N	\N	\N
637	6220	tax	of tax	1	\N	\N	\N	\N
638	6277	invoice_matching	Match existing invoices/bills.	2	\N	\N	\N	\N
639	6277	writeoff_button	Manually create a write-off on clicked button.	0	\N	\N	\N	\N
640	6277	writeoff_suggestion	Suggest a write-off.	1	\N	\N	\N	\N
641	6281	both	Amount Paid/Received	2	\N	\N	\N	\N
642	6281	amount_received	Amount Received	0	\N	\N	\N	\N
643	6281	amount_paid	Amount Paid	1	\N	\N	\N	\N
644	6282	between	Is Between	2	\N	\N	\N	\N
645	6282	greater	Is Greater Than	1	\N	\N	\N	\N
646	6282	lower	Is Lower Than	0	\N	\N	\N	\N
647	6285	match_regex	Match Regex	2	\N	\N	\N	\N
648	6285	not_contains	Not Contains	1	\N	\N	\N	\N
649	6285	contains	Contains	0	\N	\N	\N	\N
650	6287	match_regex	Match Regex	2	\N	\N	\N	\N
651	6287	not_contains	Not Contains	1	\N	\N	\N	\N
652	6287	contains	Contains	0	\N	\N	\N	\N
653	6289	match_regex	Match Regex	2	\N	\N	\N	\N
654	6289	not_contains	Not Contains	1	\N	\N	\N	\N
655	6289	contains	Contains	0	\N	\N	\N	\N
656	6299	fixed	Fixed	0	\N	\N	\N	\N
657	6299	percentage	Percentage of balance	1	\N	\N	\N	\N
658	6299	regex	From label	2	\N	\N	\N	\N
659	6308	fixed	Fixed	0	\N	\N	\N	\N
660	6308	percentage	Percentage of amount	1	\N	\N	\N	\N
661	6308	regex	From label	2	\N	\N	\N	\N
662	6343	4	April	3	\N	\N	\N	\N
663	6343	6	June	5	\N	\N	\N	\N
664	6343	3	March	2	\N	\N	\N	\N
665	6343	10	October	9	\N	\N	\N	\N
666	6343	9	September	8	\N	\N	\N	\N
667	6343	1	January	0	\N	\N	\N	\N
668	6343	8	August	7	\N	\N	\N	\N
669	6343	11	November	10	\N	\N	\N	\N
670	6343	2	February	1	\N	\N	\N	\N
671	6343	12	December	11	\N	\N	\N	\N
672	6343	7	July	6	\N	\N	\N	\N
673	6343	5	May	4	\N	\N	\N	\N
674	6358	round_globally	Round Globally	1	\N	\N	\N	\N
675	6358	round_per_line	Round per Line	0	\N	\N	\N	\N
676	6376	done	Done	2	\N	\N	\N	\N
677	6376	not_done	Not done	0	\N	\N	\N	\N
678	6376	just_done	Just done	1	\N	\N	\N	\N
679	6377	done	Done	2	\N	\N	\N	\N
680	6377	not_done	Not done	0	\N	\N	\N	\N
681	6377	just_done	Just done	1	\N	\N	\N	\N
682	6378	done	Done	2	\N	\N	\N	\N
683	6378	not_done	Not done	0	\N	\N	\N	\N
684	6378	just_done	Just done	1	\N	\N	\N	\N
685	6379	done	Done	2	\N	\N	\N	\N
686	6379	not_done	Not done	0	\N	\N	\N	\N
688	6380	done	Done	2	\N	\N	\N	\N
689	6380	not_done	Not done	0	\N	\N	\N	\N
690	6380	just_done	Just done	1	\N	\N	\N	\N
691	6381	done	Done	2	\N	\N	\N	\N
692	6381	not_done	Not done	0	\N	\N	\N	\N
693	6381	just_done	Just done	1	\N	\N	\N	\N
694	6382	done	Done	2	\N	\N	\N	\N
695	6382	not_done	Not done	0	\N	\N	\N	\N
696	6382	just_done	Just done	1	\N	\N	\N	\N
697	6382	closed	Closed	3	\N	\N	\N	\N
698	6383	done	Done	2	\N	\N	\N	\N
699	6383	not_done	Not done	0	\N	\N	\N	\N
700	6383	just_done	Just done	1	\N	\N	\N	\N
701	6383	closed	Closed	3	\N	\N	\N	\N
702	6405	tax_excluded	Tax-Excluded	0	\N	\N	\N	\N
703	6405	tax_included	Tax-Included	1	\N	\N	\N	\N
704	6437	biggest_tax	Modify tax amount	0	\N	\N	\N	\N
705	6437	add_invoice_line	Add a rounding line	1	\N	\N	\N	\N
706	6439	UP	UP	0	\N	\N	\N	\N
707	6439	DOWN	DOWN	1	\N	\N	\N	\N
708	6439	HALF-UP	HALF-UP	2	\N	\N	\N	\N
709	6486	income	Revenue	0	\N	\N	\N	\N
710	6486	expense	Expense	1	\N	\N	\N	\N
711	6527	refund	Partial Refund	0	\N	\N	\N	\N
712	6527	cancel	Full Refund	1	\N	\N	\N	\N
713	6527	modify	Full refund and new draft invoice	2	\N	\N	\N	\N
714	6543	all	All Entries	1	\N	\N	\N	\N
715	6543	posted	All Posted Entries	0	\N	\N	\N	\N
716	6556	all	All Entries	1	\N	\N	\N	\N
717	6556	posted	All Posted Entries	0	\N	\N	\N	\N
718	6564	date	Date	0	\N	\N	\N	\N
719	6564	move_name	Journal Entry Number	1	\N	\N	\N	\N
720	6570	all	All Entries	1	\N	\N	\N	\N
721	6570	posted	All Posted Entries	0	\N	\N	\N	\N
722	6622	debit	Applied on debit journal item	0	\N	\N	\N	\N
723	6622	credit	Applied on credit journal item	1	\N	\N	\N	\N
724	6681	out_invoice	Customer Invoice	0	\N	\N	\N	\N
725	6681	in_refund	Vendor Credit Note	3	\N	\N	\N	\N
726	6681	in_invoice	Vendor Bill	1	\N	\N	\N	\N
727	6681	out_refund	Customer Credit Note	2	\N	\N	\N	\N
728	6682	draft	Draft	0	\N	\N	\N	\N
729	6682	cancel	Cancelled	2	\N	\N	\N	\N
730	6682	posted	Open	1	\N	\N	\N	\N
731	6683	not_paid	Not Paid	0	\N	\N	\N	\N
732	6683	paid	paid	2	\N	\N	\N	\N
733	6683	in_payment	In Payment	1	\N	\N	\N	\N
734	6819	extract_not_ready	waiting extraction, but it is not ready	4	\N	\N	\N	\N
735	6819	waiting_validation	Waiting validation	5	\N	\N	\N	\N
736	6819	done	Completed flow	6	\N	\N	\N	\N
737	6819	error_status	An error occurred	2	\N	\N	\N	\N
738	6819	waiting_extraction	Waiting extraction	3	\N	\N	\N	\N
739	6819	no_extract_requested	No extract requested	0	\N	\N	\N	\N
740	6819	not_enough_credit	Not enough credit	1	\N	\N	\N	\N
741	6828	auto_send	Digitalize all bills automatically	2	\N	\N	\N	\N
742	6828	no_send	Do not digitalize bills	0	\N	\N	\N	\N
743	6828	manual_send	Digitalize bills on demand only	1	\N	\N	\N	\N
744	6881	link	Link to existing journal	1	\N	\N	\N	\N
745	6881	create	Create new journal	0	\N	\N	\N	\N
746	6881	drop	Do not link	2	\N	\N	\N	\N
747	6896	failed	Failed	1	\N	\N	\N	\N
748	6896	success	Success	0	\N	\N	\N	\N
749	6896	cancelled	Cancelled	2	\N	\N	\N	\N
750	6897	add	add	0	\N	\N	\N	\N
751	6897	refresh	refresh	2	\N	\N	\N	\N
752	6897	edit	edit	1	\N	\N	\N	\N
753	6921	daily	Daily	1	\N	\N	\N	\N
754	6921	weekly	Weekly	2	\N	\N	\N	\N
755	6921	manually	Manually	0	\N	\N	\N	\N
756	6921	monthly	Monthly	3	\N	\N	\N	\N
757	6923	banxico	Mexican Bank	2	\N	\N	\N	\N
758	6923	boc	Bank Of Canada	3	\N	\N	\N	\N
759	6923	fta	Federal Tax Administration (Switzerland)	1	\N	\N	\N	\N
760	6923	ecb	European Central Bank	0	\N	\N	\N	\N
761	6923	xe_com	xe.com	4	\N	\N	\N	\N
762	6932	manual	Custom Payment Form	0	\N	\N	\N	\N
763	6936	disabled	Disabled	0	\N	\N	\N	\N
764	6936	test	Test Mode	2	\N	\N	\N	\N
765	6936	enabled	Enabled	1	\N	\N	\N	\N
766	6946	none	Never	0	\N	\N	\N	\N
767	6946	ask	Let the customer decide	1	\N	\N	\N	\N
768	6946	always	Always	2	\N	\N	\N	\N
769	6961	s2s	Payment from Odoo	1	\N	\N	\N	\N
770	6961	form	Redirection to the acquirer website	0	\N	\N	\N	\N
771	6984	validation	Validation of the bank card	0	\N	\N	\N	\N
772	6984	form	Form	2	\N	\N	\N	\N
773	6984	form_save	Form with tokenization	3	\N	\N	\N	\N
774	6984	server2server	Server To Server	1	\N	\N	\N	\N
775	6985	done	Done	3	\N	\N	\N	\N
776	6985	cancel	Canceled	4	\N	\N	\N	\N
777	6985	authorized	Authorized	2	\N	\N	\N	\N
778	6985	error	Error	5	\N	\N	\N	\N
779	6985	pending	Pending	1	\N	\N	\N	\N
780	6985	draft	Draft	0	\N	\N	\N	\N
781	7041	done	Done	2	\N	\N	\N	\N
782	7041	not_done	Not done	0	\N	\N	\N	\N
783	7041	just_done	Just done	1	\N	\N	\N	\N
784	7042	manual	Manual	2	\N	\N	\N	\N
785	7042	stripe	Stripe	1	\N	\N	\N	\N
786	7042	other	Other	3	\N	\N	\N	\N
787	7042	paypal	PayPal	0	\N	\N	\N	\N
788	7043	manual	Custom payment instructions	3	\N	\N	\N	\N
789	7043	stripe	Credit card (via Stripe)	1	\N	\N	\N	\N
790	7043	other	Other payment acquirer	2	\N	\N	\N	\N
791	7043	paypal	PayPal	0	\N	\N	\N	\N
792	7044	existing_user	I have a Paypal account	1	\N	\N	\N	\N
793	7044	new_user	I don't have a Paypal account	0	\N	\N	\N	\N
794	7083	planned	Planned	2	\N	\N	\N	\N
795	7083	overdue	Overdue	0	\N	\N	\N	\N
796	7083	today	Today	1	\N	\N	\N	\N
797	7085	warning	Alert	0	\N	\N	\N	\N
798	7085	danger	Error	1	\N	\N	\N	\N
799	7113	done	Locked	4	\N	\N	\N	\N
800	7113	cancel	Cancelled	5	\N	\N	\N	\N
801	7113	sent	RFQ Sent	1	\N	\N	\N	\N
802	7113	to approve	To Approve	2	\N	\N	\N	\N
803	7113	draft	RFQ	0	\N	\N	\N	\N
804	7113	purchase	Purchase Order	3	\N	\N	\N	\N
805	7118	no	Nothing to Bill	0	\N	\N	\N	\N
806	7118	to invoice	Waiting Bills	1	\N	\N	\N	\N
807	7118	invoiced	Fully Billed	2	\N	\N	\N	\N
808	7161	manual	Manual	0	\N	\N	\N	\N
809	7167	line_section	Section	0	\N	\N	\N	\N
810	7167	line_note	Note	1	\N	\N	\N	\N
811	7177	receive	On received quantities	1	\N	\N	\N	\N
812	7177	purchase	On ordered quantities	0	\N	\N	\N	\N
813	7178	warning	Warning	1	\N	\N	\N	\N
814	7178	block	Blocking Message	2	\N	\N	\N	\N
815	7178	no-message	No Message	0	\N	\N	\N	\N
816	7187	edit	Allow to edit purchase orders	0	\N	\N	\N	\N
817	7187	lock	Confirmed purchase orders are not editable	1	\N	\N	\N	\N
818	7188	one_step	Confirm purchase orders in one step	0	\N	\N	\N	\N
819	7188	two_step	Get 2 levels of approvals to confirm a purchase order	1	\N	\N	\N	\N
820	7196	receive	Received quantities	1	\N	\N	\N	\N
821	7196	purchase	Ordered quantities	0	\N	\N	\N	\N
822	7206	warning	Warning	1	\N	\N	\N	\N
823	7206	block	Blocking Message	2	\N	\N	\N	\N
824	7206	no-message	No Message	0	\N	\N	\N	\N
825	7209	done	Done	4	\N	\N	\N	\N
826	7209	cancel	Cancelled	5	\N	\N	\N	\N
827	7209	sent	RFQ Sent	1	\N	\N	\N	\N
828	7209	to approve	To Approve	2	\N	\N	\N	\N
829	7209	draft	Draft RFQ	0	\N	\N	\N	\N
830	7209	purchase	Purchase Order	3	\N	\N	\N	\N
831	6846	plaid	Plaid	0	\N	\N	\N	\N
832	6846	ponto	Ponto	1	\N	\N	\N	\N
833	6846	yodlee	Yodlee	2	\N	\N	\N	\N
834	6932	transfer	Manual Payment	1	\N	\N	\N	\N
835	7280	disabled	None	0	\N	\N	\N	\N
836	7280	action_print_check_bottom	check on bottom	3	\N	\N	\N	\N
837	7280	action_print_check_top	check on top	1	\N	\N	\N	\N
838	7280	action_print_check_middle	check in middle	2	\N	\N	\N	\N
839	7329	none	Never	0	\N	\N	\N	\N
840	7329	upc2ean	UPC-A to EAN-13	2	\N	\N	\N	\N
841	7329	always	Always	3	\N	\N	\N	\N
842	7329	ean2upc	EAN-13 to UPC-A	1	\N	\N	\N	\N
843	7340	upca	UPC-A	3	\N	\N	\N	\N
844	7340	any	Any	0	\N	\N	\N	\N
845	7340	ean13	EAN-13	1	\N	\N	\N	\N
846	7340	ean8	EAN-8	2	\N	\N	\N	\N
847	7341	product	Unit Product	1	\N	\N	\N	\N
848	7341	alias	Alias	0	\N	\N	\N	\N
849	7341	lot	Lot	4	\N	\N	\N	\N
850	7341	location	Location	3	\N	\N	\N	\N
851	7341	package	Package	5	\N	\N	\N	\N
852	7341	weight	Weighted Product	2	\N	\N	\N	\N
853	7383	no-message	No Message	0	\N	\N	\N	\N
854	7383	block	Blocking Message	2	\N	\N	\N	\N
855	7383	warning	Warning	1	\N	\N	\N	\N
856	7385	1	Immediately after sales order confirmation	0	\N	\N	\N	\N
857	7385	0	Manually or based on automatic scheduler	1	\N	\N	\N	\N
858	7411	confirm	In Progress	2	\N	\N	\N	\N
859	7411	cancel	Cancelled	1	\N	\N	\N	\N
860	7411	draft	Draft	0	\N	\N	\N	\N
861	7411	done	Validated	3	\N	\N	\N	\N
862	7416	zero	Default to zero	1	\N	\N	\N	\N
863	7416	counted	Default to stock on hand	0	\N	\N	\N	\N
864	7451	supplier	Vendor Location	0	\N	\N	\N	\N
865	7451	view	View	1	\N	\N	\N	\N
866	7451	inventory	Inventory Loss	4	\N	\N	\N	\N
867	7451	internal	Internal Location	2	\N	\N	\N	\N
868	7451	production	Production	5	\N	\N	\N	\N
869	7451	transit	Transit Location	6	\N	\N	\N	\N
870	7451	customer	Customer Location	3	\N	\N	\N	\N
871	7496	1	Normal	1	\N	\N	\N	\N
872	7496	0	Not urgent	0	\N	\N	\N	\N
873	7496	3	Very Urgent	3	\N	\N	\N	\N
874	7496	2	Urgent	2	\N	\N	\N	\N
875	7516	waiting	Waiting Another Move	2	\N	\N	\N	\N
876	7516	assigned	Available	5	\N	\N	\N	\N
877	7516	confirmed	Waiting Availability	3	\N	\N	\N	\N
878	7516	partially_available	Partially Available	4	\N	\N	\N	\N
879	7516	cancel	Cancelled	1	\N	\N	\N	\N
880	7516	draft	New	0	\N	\N	\N	\N
881	7516	done	Done	6	\N	\N	\N	\N
882	7520	make_to_order	Advanced: Apply Procurement Rules	1	\N	\N	\N	\N
883	7520	make_to_stock	Default: Take From Stock	0	\N	\N	\N	\N
884	7604	planned	Planned	2	\N	\N	\N	\N
885	7604	overdue	Overdue	0	\N	\N	\N	\N
886	7604	today	Today	1	\N	\N	\N	\N
887	7606	warning	Alert	0	\N	\N	\N	\N
888	7606	danger	Error	1	\N	\N	\N	\N
889	7649	incoming	Receipt	0	\N	\N	\N	\N
890	7649	outgoing	Delivery	1	\N	\N	\N	\N
891	7649	internal	Internal Transfer	2	\N	\N	\N	\N
892	7676	planned	Planned	2	\N	\N	\N	\N
893	7676	overdue	Overdue	0	\N	\N	\N	\N
894	7676	today	Today	1	\N	\N	\N	\N
895	7678	warning	Alert	0	\N	\N	\N	\N
896	7678	danger	Error	1	\N	\N	\N	\N
897	7700	direct	As soon as possible	0	\N	\N	\N	\N
898	7700	one	When all products are ready	1	\N	\N	\N	\N
899	7701	waiting	Waiting Another Operation	1	\N	\N	\N	\N
900	7701	assigned	Ready	3	\N	\N	\N	\N
901	7701	confirmed	Waiting	2	\N	\N	\N	\N
902	7701	cancel	Cancelled	5	\N	\N	\N	\N
903	7701	draft	Draft	0	\N	\N	\N	\N
904	7701	done	Done	4	\N	\N	\N	\N
905	7703	1	Normal	1	\N	\N	\N	\N
906	7703	0	Not urgent	0	\N	\N	\N	\N
907	7703	3	Very Urgent	3	\N	\N	\N	\N
908	7703	2	Urgent	2	\N	\N	\N	\N
909	7783	none	Leave Empty	0	\N	\N	\N	\N
910	7783	fixed	Fixed	2	\N	\N	\N	\N
911	7783	propagate	Propagate	1	\N	\N	\N	\N
912	7785	pull	Pull From	0	\N	\N	\N	\N
913	7785	pull_push	Pull & Push	2	\N	\N	\N	\N
914	7785	push	Push To	1	\N	\N	\N	\N
915	7791	make_to_order	Trigger Another Rule	1	\N	\N	\N	\N
916	7791	make_to_stock	Take From Stock	0	\N	\N	\N	\N
917	7791	mts_else_mto	Take From Stock, if unavailable, Trigger Another Rule	2	\N	\N	\N	\N
918	7799	transparent	Automatic No Step Added	1	\N	\N	\N	\N
919	7799	manual	Manual Operation	0	\N	\N	\N	\N
920	7813	direct	Partial	0	\N	\N	\N	\N
921	7813	one	All at once	1	\N	\N	\N	\N
922	7829	one_step	Receive goods directly (1 step)	0	\N	\N	\N	\N
923	7829	three_steps	Receive goods in input, then quality and then stock (3 steps)	2	\N	\N	\N	\N
924	7829	two_steps	Receive goods in input and then stock (2 steps)	1	\N	\N	\N	\N
925	7830	pick_ship	Send goods in output and then deliver (2 steps)	1	\N	\N	\N	\N
926	7830	pick_pack_ship	Pack goods, send goods in output and then deliver (3 steps)	2	\N	\N	\N	\N
927	7830	ship_only	Deliver goods directly (1 step)	0	\N	\N	\N	\N
928	7869	net	Days to get the products	0	\N	\N	\N	\N
929	7869	supplier	Days to purchase	1	\N	\N	\N	\N
930	7908	draft	Draft	0	\N	\N	\N	\N
931	7908	done	Done	1	\N	\N	\N	\N
932	5085	product	Storable Product	2	\N	\N	\N	\N
933	7945	none	No Tracking	2	\N	\N	\N	\N
934	7945	serial	By Unique Serial Number	0	\N	\N	\N	\N
935	7945	lot	By Lots	1	\N	\N	\N	\N
936	7971	assigned	Reserved	2	\N	\N	\N	\N
937	7971	confirmed	Confirmed	1	\N	\N	\N	\N
938	7971	new	New	3	\N	\N	\N	\N
939	7971	cancel	Cancelled	5	\N	\N	\N	\N
940	7971	draft	Draft	0	\N	\N	\N	\N
941	7971	done	Done	4	\N	\N	\N	\N
942	7987	forecast	Forecasted Stock	0	\N	\N	\N	\N
943	7987	out	Forecasted Deliveries	2	\N	\N	\N	\N
944	7987	in	Forecasted Receipts	1	\N	\N	\N	\N
945	8148	serial	Tracked by serial number	1	\N	\N	\N	\N
946	8148	lot	Tracked by lot	0	\N	\N	\N	\N
947	8186	incoming	Vendors	0	\N	\N	\N	\N
948	8186	outgoing	Customers	1	\N	\N	\N	\N
949	8186	internal	Internal	2	\N	\N	\N	\N
950	8193	waiting	Waiting Another Move	2	\N	\N	\N	\N
951	8193	assigned	Available	5	\N	\N	\N	\N
952	8193	confirmed	Waiting Availability	3	\N	\N	\N	\N
953	8193	partially_available	Partially Available	4	\N	\N	\N	\N
954	8193	cancel	Cancelled	1	\N	\N	\N	\N
955	8193	draft	New	0	\N	\N	\N	\N
956	8193	done	Done	6	\N	\N	\N	\N
957	8226	manual_periodic	Manual	0	\N	\N	\N	\N
958	8226	real_time	Automated	1	\N	\N	\N	\N
959	8227	fifo	First In First Out (FIFO)	1	\N	\N	\N	\N
960	8227	standard	Standard Price	0	\N	\N	\N	\N
961	8227	average	Average Cost (AVCO)	2	\N	\N	\N	\N
962	7161	stock_moves	Stock Moves	1	\N	\N	\N	\N
963	7785	buy	Buy	3	\N	\N	\N	\N
967	8400	present	Present	0	\N	\N	\N	\N
968	8400	absent	Absent	1	\N	\N	\N	\N
969	8400	to_define	To Define	2	\N	\N	\N	\N
970	8407	overdue	Overdue	0	\N	\N	\N	\N
971	8407	planned	Planned	2	\N	\N	\N	\N
972	8407	today	Today	1	\N	\N	\N	\N
973	8409	warning	Alert	0	\N	\N	\N	\N
974	8409	danger	Error	1	\N	\N	\N	\N
975	8433	male	Male	0	\N	\N	\N	\N
976	8433	female	Female	1	\N	\N	\N	\N
977	8433	other	Other	2	\N	\N	\N	\N
978	8434	single	Single	0	\N	\N	\N	\N
979	8434	married	Married	1	\N	\N	\N	\N
980	8434	widower	Widower	3	\N	\N	\N	\N
981	8434	cohabitant	Legal Cohabitant	2	\N	\N	\N	\N
982	8434	divorced	Divorced	4	\N	\N	\N	\N
983	8450	master	Master	1	\N	\N	\N	\N
984	8450	other	Other	2	\N	\N	\N	\N
985	8450	bachelor	Bachelor	0	\N	\N	\N	\N
986	8464	retired	Retired	2	\N	\N	\N	\N
987	8464	resigned	Resigned	1	\N	\N	\N	\N
988	8464	fired	Fired	0	\N	\N	\N	\N
989	8488	present	Present	0	\N	\N	\N	\N
990	8488	absent	Absent	1	\N	\N	\N	\N
991	8488	to_define	To Define	2	\N	\N	\N	\N
992	8533	present	Present	0	\N	\N	\N	\N
993	8533	absent	Absent	1	\N	\N	\N	\N
994	8533	to_define	To Define	2	\N	\N	\N	\N
995	8600	recruit	Recruitment in Progress	0	\N	\N	\N	\N
996	8600	open	Not Recruiting	1	\N	\N	\N	\N
997	8610	other	Other	3	\N	\N	\N	\N
998	8610	coach	Coach	0	\N	\N	\N	\N
999	8610	manager	Manager	1	\N	\N	\N	\N
1000	8610	employee	Employee	2	\N	\N	\N	\N
1001	1850	employees	Authenticated Employees	3	\N	\N	\N	\N
1002	8698	retired	Retired	2	\N	\N	\N	\N
1003	8698	resigned	Resigned	1	\N	\N	\N	\N
1004	8698	fired	Fired	0	\N	\N	\N	\N
1005	8717	overdue	Overdue	0	\N	\N	\N	\N
1006	8717	planned	Planned	2	\N	\N	\N	\N
1007	8717	today	Today	1	\N	\N	\N	\N
1008	8719	warning	Alert	0	\N	\N	\N	\N
1009	8719	danger	Error	1	\N	\N	\N	\N
1010	8748	draft	New	0	\N	\N	\N	\N
1011	8748	close	Expired	2	\N	\N	\N	\N
1012	8748	cancel	Cancelled	3	\N	\N	\N	\N
1013	8748	open	Running	1	\N	\N	\N	\N
1014	8750	done	Green	1	\N	\N	\N	\N
1015	8750	blocked	Red	2	\N	\N	\N	\N
1016	8750	normal	Grey	0	\N	\N	\N	\N
1017	8787	retired	Retired	2	\N	\N	\N	\N
1018	8787	resigned	Resigned	1	\N	\N	\N	\N
1019	8787	fired	Fired	0	\N	\N	\N	\N
1020	8797	overdue	Overdue	0	\N	\N	\N	\N
1021	8797	planned	Planned	2	\N	\N	\N	\N
1022	8797	today	Today	1	\N	\N	\N	\N
1023	8799	warning	Alert	0	\N	\N	\N	\N
1024	8799	danger	Error	1	\N	\N	\N	\N
1025	8835	company_account	Company	1	\N	\N	\N	\N
1026	8835	own_account	Employee (to reimburse)	0	\N	\N	\N	\N
1027	8837	draft	To Submit	0	\N	\N	\N	\N
1028	8837	done	Paid	3	\N	\N	\N	\N
1029	8837	reported	Submitted	1	\N	\N	\N	\N
1030	8837	approved	Approved	2	\N	\N	\N	\N
1031	8837	refused	Refused	4	\N	\N	\N	\N
1032	8854	overdue	Overdue	0	\N	\N	\N	\N
1033	8854	planned	Planned	2	\N	\N	\N	\N
1034	8854	today	Today	1	\N	\N	\N	\N
1035	8856	warning	Alert	0	\N	\N	\N	\N
1036	8856	danger	Error	1	\N	\N	\N	\N
1037	8875	draft	Draft	0	\N	\N	\N	\N
1038	8875	submit	Submitted	1	\N	\N	\N	\N
1039	8875	approve	Approved	2	\N	\N	\N	\N
1040	8875	cancel	Refused	5	\N	\N	\N	\N
1041	8875	post	Posted	3	\N	\N	\N	\N
1042	8875	done	Paid	4	\N	\N	\N	\N
1043	9225	month	Monthly	0	\N	\N	\N	\N
1044	9225	year	Yearly	2	\N	\N	\N	\N
1045	9225	quarter	Quarterly	1	\N	\N	\N	\N
1046	9231	disabled	Disabled	0	\N	\N	\N	\N
1047	9231	in_progress	Running	1	\N	\N	\N	\N
1048	9312	percents	Percents	1	\N	\N	\N	\N
1049	9312	float	Float	0	\N	\N	\N	\N
1050	9312	no_unit	No Unit	2	\N	\N	\N	\N
1051	9316	from_fiscalyear	From the beginning of the fiscal year	4	\N	\N	\N	\N
1052	9316	from_beginning	From the beginning	0	\N	\N	\N	\N
1053	9316	to_beginning_of_period	At the beginning of the period	1	\N	\N	\N	\N
1054	9316	strict_range	Force given dates for all accounts and account types	3	\N	\N	\N	\N
1055	9316	normal	Use given dates	2	\N	\N	\N	\N
1056	9317	always	Always	0	\N	\N	\N	\N
1057	9317	foldable	Foldable	2	\N	\N	\N	\N
1058	9317	never	Never	1	\N	\N	\N	\N
1059	9344	monthly	monthly	1	\N	\N	\N	\N
1060	9344	trimester	trimester	0	\N	\N	\N	\N
1061	1952	tax_report	Tax report	3	\N	\N	\N	\N
1062	9398	no	No	0	\N	\N	\N	\N
1063	9398	validate	Create and validate	2	\N	\N	\N	\N
1064	9398	draft	Create in draft	1	\N	\N	\N	\N
1065	9401	purchase	Asset	2	\N	\N	\N	\N
1066	9401	expense	Deferred Expense	1	\N	\N	\N	\N
1067	9401	sale	Deferred Revenue	0	\N	\N	\N	\N
1068	9403	planned	Planned	2	\N	\N	\N	\N
1069	9403	overdue	Overdue	0	\N	\N	\N	\N
1070	9403	today	Today	1	\N	\N	\N	\N
1071	9405	warning	Alert	0	\N	\N	\N	\N
1072	9405	danger	Error	1	\N	\N	\N	\N
1073	9428	draft	Draft	1	\N	\N	\N	\N
1074	9428	close	Closed	4	\N	\N	\N	\N
1075	9428	open	Running	2	\N	\N	\N	\N
1076	9428	model	Model	0	\N	\N	\N	\N
1077	9428	paused	On Hold	3	\N	\N	\N	\N
1078	9430	purchase	Purchase: Asset	1	\N	\N	\N	\N
1079	9430	expense	Deferred Expense	2	\N	\N	\N	\N
1080	9430	sale	Sale: Revenue Recognition	0	\N	\N	\N	\N
1081	9431	degressive_then_linear	Accelerated Degressive	2	\N	\N	\N	\N
1082	9431	degressive	Degressive	1	\N	\N	\N	\N
1083	9431	linear	Linear	0	\N	\N	\N	\N
1084	9433	12	Years	1	\N	\N	\N	\N
1085	9433	1	Months	0	\N	\N	\N	\N
1086	9487	12	Years	1	\N	\N	\N	\N
1087	9487	1	Months	0	\N	\N	\N	\N
1088	9516	dispose	Dispose	1	\N	\N	\N	\N
1089	9516	sell	Sell	0	\N	\N	\N	\N
1090	9522	no	No	2	\N	\N	\N	\N
1091	9522	gain	Gain	0	\N	\N	\N	\N
1092	9522	loss	Loss	1	\N	\N	\N	\N
1093	9565	no_action_needed	No action needed	2	\N	\N	\N	\N
1094	9565	in_need_of_action	In need of action	0	\N	\N	\N	\N
1095	9565	with_overdue_invoices	With overdue invoices	1	\N	\N	\N	\N
1096	9660	b2c	Free sign up	1	\N	\N	\N	\N
1097	9660	b2b	On invitation	0	\N	\N	\N	\N
1098	9753	301	301 Moved permanently	1	\N	\N	\N	\N
1099	9753	404	404 Not Found	0	\N	\N	\N	\N
1100	9753	302	302 Moved temporarily	2	\N	\N	\N	\N
1101	9753	308	308 Redirect / Rewrite	3	\N	\N	\N	\N
230	203	grid	Grid	12	\N	\N	\N	\N
252	203	dashboard	Dashboard	11	\N	\N	\N	\N
231	282	grid	Grid	10	\N	\N	\N	\N
251	282	dashboard	Dashboard	9	\N	\N	\N	\N
1102	9885	primary	Base view	0	\N	\N	\N	\N
1103	9885	extension	Extension View	1	\N	\N	\N	\N
1104	9889	theme.ir.ui.view	theme.ir.ui.view	1	\N	\N	\N	\N
1105	9889	ir.ui.view	ir.ui.view	0	\N	\N	\N	\N
1124	10286	in_progress	Running	1	\N	\N	\N	\N
1125	10286	start	Start	0	\N	\N	\N	\N
\.


--
-- Name: ir_model_fields_selection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_model_fields_selection_id_seq', 1134, true);


--
-- Name: ir_model_fields_selection ir_model_fields_selection_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_fields_selection
    ADD CONSTRAINT ir_model_fields_selection_pkey PRIMARY KEY (id);


--
-- Name: ir_model_fields_selection ir_model_fields_selection_selection_field_uniq; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_fields_selection
    ADD CONSTRAINT ir_model_fields_selection_selection_field_uniq UNIQUE (field_id, value);


--
-- Name: CONSTRAINT ir_model_fields_selection_selection_field_uniq ON ir_model_fields_selection; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON CONSTRAINT ir_model_fields_selection_selection_field_uniq ON public.ir_model_fields_selection IS 'unique(field_id, value)';


--
-- Name: ir_model_fields_selection_field_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_model_fields_selection_field_id_index ON public.ir_model_fields_selection USING btree (field_id);


--
-- Name: ir_model_fields_selection ir_model_fields_selection_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_fields_selection
    ADD CONSTRAINT ir_model_fields_selection_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_fields_selection ir_model_fields_selection_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_fields_selection
    ADD CONSTRAINT ir_model_fields_selection_field_id_fkey FOREIGN KEY (field_id) REFERENCES public.ir_model_fields(id) ON DELETE CASCADE;


--
-- Name: ir_model_fields_selection ir_model_fields_selection_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_model_fields_selection
    ADD CONSTRAINT ir_model_fields_selection_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
