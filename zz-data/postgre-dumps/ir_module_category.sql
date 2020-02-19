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
-- Name: ir_module_category; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_module_category (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    parent_id integer,
    name character varying NOT NULL,
    description text,
    sequence integer,
    visible boolean,
    exclusive boolean
);


ALTER TABLE public.ir_module_category OWNER TO odoo;

--
-- Name: COLUMN ir_module_category.description; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_category.description IS 'Description';


--
-- Name: COLUMN ir_module_category.sequence; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_category.sequence IS 'Sequence';


--
-- Name: COLUMN ir_module_category.visible; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_category.visible IS 'Visible';


--
-- Name: COLUMN ir_module_category.exclusive; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_category.exclusive IS 'Exclusive';


--
-- Name: ir_module_category_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_module_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_category_id_seq OWNER TO odoo;

--
-- Name: ir_module_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_module_category_id_seq OWNED BY public.ir_module_category.id;


--
-- Name: ir_module_category id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_category ALTER COLUMN id SET DEFAULT nextval('public.ir_module_category_id_seq'::regclass);


--
-- Data for Name: ir_module_category; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_module_category (id, create_uid, create_date, write_date, write_uid, parent_id, name, description, sequence, visible, exclusive) FROM stdin;
45	\N	\N	2020-02-13 10:46:42.952277	1	1	Employees	Helps you manage your employees.	9	t	\N
44	\N	\N	2020-02-13 10:46:46.83135	1	1	Contracts	Helps you manage your contracts.	10	t	\N
49	\N	\N	2020-02-13 10:46:49.176336	1	2	Expenses	Helps you manage your expenses.	12	t	\N
2	\N	\N	\N	\N	\N	Accounting	\N	\N	t	\N
3	\N	\N	2020-02-13 17:20:18.484061	1	2	Accounting	Helps you handle your accounting needs, if you are not an accountant, we suggest you to install only the Invoicing.	7	t	\N
10	\N	\N	2020-02-14 11:31:03.924193	1	9	Website	\N	23	t	\N
8	\N	\N	\N	\N	\N	Tools	\N	\N	t	\N
12	\N	\N	\N	\N	11	Survey	\N	\N	t	\N
14	\N	\N	\N	\N	13	Project	\N	\N	t	\N
15	\N	\N	\N	\N	2	Payment	\N	\N	t	\N
16	\N	\N	\N	\N	11	Events	\N	\N	t	\N
17	\N	\N	\N	\N	4	Point Of Sale	\N	\N	t	\N
19	\N	\N	\N	\N	13	Documents	\N	\N	t	\N
20	\N	\N	\N	\N	\N	Mobile	\N	\N	t	\N
22	\N	\N	\N	\N	21	Manufacturing	\N	\N	t	\N
23	\N	\N	\N	\N	11	Email Marketing	\N	\N	t	\N
24	\N	\N	\N	\N	\N	Tests	\N	\N	t	\N
25	\N	\N	\N	\N	4	Subscription	\N	\N	t	\N
26	\N	\N	\N	\N	\N	Productivity	\N	\N	t	\N
27	\N	\N	\N	\N	9	Live Chat	\N	\N	t	\N
28	\N	\N	\N	\N	21	Quality	\N	\N	t	\N
29	\N	\N	\N	\N	\N	Discuss	\N	\N	t	\N
30	\N	\N	\N	\N	\N	Social	\N	\N	t	\N
31	\N	\N	\N	\N	1	Payroll	\N	\N	t	\N
32	\N	\N	\N	\N	4	CRM	\N	\N	t	\N
33	\N	\N	\N	\N	11	Social	\N	\N	t	\N
34	\N	\N	\N	\N	11	Marketing Automation	\N	\N	t	\N
37	\N	\N	\N	\N	13	Field Service	\N	\N	t	\N
38	\N	\N	\N	\N	1	Planning	\N	\N	t	\N
5	\N	\N	2020-01-31 09:41:17.144798	1	4	Sales	Helps you handle your quotations, sale orders and invoicing.	1	t	\N
40	\N	\N	\N	\N	18	Delivery	\N	\N	t	\N
41	\N	\N	\N	\N	1	Recruitment	\N	\N	t	\N
46	\N	\N	\N	\N	1	Attendances	\N	\N	t	\N
47	\N	\N	\N	\N	13	Timesheets	\N	\N	t	\N
48	\N	\N	\N	\N	21	PLM	\N	\N	t	\N
50	\N	\N	\N	\N	11	Online Appointment	\N	\N	t	\N
51	\N	\N	\N	\N	1	Referrals	\N	\N	t	\N
52	\N	\N	\N	\N	1	Lunch	\N	\N	t	\N
53	\N	\N	\N	\N	1	Time Off	\N	\N	t	\N
54	\N	\N	\N	\N	1	Approvals	\N	\N	t	\N
56	\N	\N	\N	\N	13	Maintenance	\N	\N	t	\N
57	\N	\N	\N	\N	1	Fleet	\N	\N	t	\N
58	\N	\N	\N	\N	\N	Uncategorized	\N	\N	t	\N
7	\N	\N	2020-01-31 09:58:20.76856	1	\N	Technical Settings	\N	0	f	\N
6	\N	\N	2020-01-31 09:58:20.76856	1	\N	Localization	\N	\N	f	\N
42	\N	\N	2020-01-31 09:58:20.76856	1	\N	Payroll Localization	\N	\N	f	\N
59	1	2020-01-30 11:38:26.99497	2020-01-31 09:58:20.76856	1	6	Account Charts	\N	\N	f	\N
60	1	2020-01-30 11:38:26.99497	2020-01-31 09:58:20.76856	1	\N	User types	Helps you manage users.	9	t	\N
4	\N	\N	2020-01-31 09:58:20.76856	1	\N	Sales	\N	6	t	\N
1	\N	\N	2020-01-31 09:58:20.76856	1	\N	Human Resources	\N	8	t	\N
13	\N	\N	2020-01-31 09:58:20.76856	1	\N	Operations	\N	10	t	\N
11	\N	\N	2020-01-31 09:58:20.76856	1	\N	Marketing	\N	12	t	\N
21	\N	\N	2020-01-31 09:58:20.76856	1	\N	Manufacturing	\N	14	t	\N
9	\N	\N	2020-01-31 09:58:20.76856	1	\N	Website	\N	16	t	\N
43	\N	\N	2020-01-31 09:58:20.76856	1	\N	Theme	\N	50	t	f
61	1	2020-01-30 11:38:26.99497	2020-01-31 09:58:20.76856	1	\N	Administration	\N	100	t	\N
36	\N	\N	2020-02-10 14:36:28.146491	1	13	Purchase	Helps you manage your purchase-related processes such as requests for quotations, supplier bills, etc...	8	t	\N
18	\N	\N	2020-02-11 11:17:24.480949	1	13	Inventory	Helps you manage your inventory and main stock operations: delivery orders, receptions, etc.	4	t	\N
55	\N	\N	2020-01-31 09:58:20.76856	1	1	Appraisals	Helps you manage your appraisals.	15	t	\N
35	\N	\N	2020-01-31 09:58:20.76856	1	4	Sign	Helps you sign and complete your documents easily.	25	t	\N
39	\N	\N	2020-01-31 09:58:20.76856	1	13	Helpdesk	After-sales services	14	t	\N
62	1	2020-01-30 11:38:26.99497	2020-01-31 09:58:20.76856	1	61	Administration	\N	\N	t	\N
63	1	2020-01-30 11:38:26.99497	2020-01-31 09:58:20.76856	1	\N	Extra Rights	\N	101	t	\N
64	1	2020-01-30 11:38:26.99497	2020-01-31 09:58:20.76856	1	\N	Other Extra Rights	\N	102	t	\N
65	\N	\N	\N	\N	\N	Document Management	\N	\N	\N	\N
66	\N	\N	\N	\N	\N	Extra Tools	\N	\N	\N	\N
\.


--
-- Name: ir_module_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_module_category_id_seq', 83, true);


--
-- Name: ir_module_category ir_module_category_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_category
    ADD CONSTRAINT ir_module_category_pkey PRIMARY KEY (id);


--
-- Name: ir_module_category_name_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_module_category_name_index ON public.ir_module_category USING btree (name);


--
-- Name: ir_module_category_parent_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_module_category_parent_id_index ON public.ir_module_category USING btree (parent_id);


--
-- Name: ir_module_category ir_module_category_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_category
    ADD CONSTRAINT ir_module_category_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_category ir_module_category_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_category
    ADD CONSTRAINT ir_module_category_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.ir_module_category(id) ON DELETE SET NULL;


--
-- Name: ir_module_category ir_module_category_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_category
    ADD CONSTRAINT ir_module_category_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
