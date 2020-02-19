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
-- Name: ir_sequence; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_sequence (
    id integer NOT NULL,
    name character varying NOT NULL,
    code character varying,
    implementation character varying NOT NULL,
    active boolean,
    prefix character varying,
    suffix character varying,
    number_next integer NOT NULL,
    number_increment integer NOT NULL,
    padding integer NOT NULL,
    company_id integer,
    use_date_range boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_sequence OWNER TO odoo;

--
-- Name: TABLE ir_sequence; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_sequence IS 'Sequence';


--
-- Name: COLUMN ir_sequence.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.name IS 'Name';


--
-- Name: COLUMN ir_sequence.code; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.code IS 'Sequence Code';


--
-- Name: COLUMN ir_sequence.implementation; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.implementation IS 'Implementation';


--
-- Name: COLUMN ir_sequence.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.active IS 'Active';


--
-- Name: COLUMN ir_sequence.prefix; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.prefix IS 'Prefix';


--
-- Name: COLUMN ir_sequence.suffix; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.suffix IS 'Suffix';


--
-- Name: COLUMN ir_sequence.number_next; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.number_next IS 'Next Number';


--
-- Name: COLUMN ir_sequence.number_increment; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.number_increment IS 'Step';


--
-- Name: COLUMN ir_sequence.padding; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.padding IS 'Sequence Size';


--
-- Name: COLUMN ir_sequence.company_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.company_id IS 'Company';


--
-- Name: COLUMN ir_sequence.use_date_range; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.use_date_range IS 'Use subsequences per date_range';


--
-- Name: COLUMN ir_sequence.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.create_uid IS 'Created by';


--
-- Name: COLUMN ir_sequence.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.create_date IS 'Created on';


--
-- Name: COLUMN ir_sequence.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_sequence.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence.write_date IS 'Last Updated on';


--
-- Name: ir_sequence_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_sequence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_sequence_id_seq OWNER TO odoo;

--
-- Name: ir_sequence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_sequence_id_seq OWNED BY public.ir_sequence.id;


--
-- Name: ir_sequence id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence ALTER COLUMN id SET DEFAULT nextval('public.ir_sequence_id_seq'::regclass);


--
-- Data for Name: ir_sequence; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_sequence (id, name, code, implementation, active, prefix, suffix, number_next, number_increment, padding, company_id, use_date_range, create_uid, create_date, write_uid, write_date) FROM stdin;
1	Account reconcile sequence	account.reconcile	standard	t	A	\N	1	1	0	\N	\N	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
2	Payments customer invoices sequence	account.payment.customer.invoice	standard	t	CUST.IN/%(range_year)s/	\N	1	1	4	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
3	Payments customer credit notes sequence	account.payment.customer.refund	standard	t	CUST.OUT/%(range_year)s/	\N	1	1	4	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
4	Payments supplier invoices sequence	account.payment.supplier.invoice	standard	t	SUPP.OUT/%(range_year)s/	\N	1	1	4	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
5	Payments supplier credit notes sequence	account.payment.supplier.refund	standard	t	SUPP.IN/%(range_year)s/	\N	1	1	4	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
6	Payments transfer sequence	account.payment.transfer	standard	t	TRANS/%(range_year)s/	\N	1	1	4	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
7	Purchase Order	purchase.order	standard	t	P	\N	1	1	5	\N	\N	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
8	INV Sequence	\N	no_gap	t	INV/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
9	INV: Refund Sequence	\N	no_gap	t	RINV/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
10	Customer Invoices : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
11	BILL Sequence	\N	no_gap	t	BILL/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
12	BILL: Refund Sequence	\N	no_gap	t	RBILL/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
13	Vendor Bills : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
14	MISC Sequence	\N	no_gap	t	MISC/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
15	Miscellaneous Operations : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
16	EXCH Sequence	\N	no_gap	t	EXCH/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
17	Exchange Difference : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
18	CABA Sequence	\N	no_gap	t	CABA/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
19	Cash Basis Taxes : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
20	CSH1 Sequence	\N	no_gap	t	CSH1/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
21	Cash : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
22	BNK1 Sequence	\N	no_gap	t	BNK1/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
23	Bank : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
24	Procurement Group	procurement.group	standard	t	PG/	\N	1	1	6	1	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
25	YourCompany Sequence in	\N	standard	t	WH/IN/	\N	1	1	5	1	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
26	YourCompany Sequence out	\N	standard	t	WH/OUT/	\N	1	1	5	1	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
27	YourCompany Sequence picking	\N	standard	t	WH/PICK/	\N	1	1	5	1	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
28	YourCompany Sequence packing	\N	standard	t	WH/PACK/	\N	1	1	5	1	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
29	YourCompany Sequence internal	\N	standard	t	WH/INT/	\N	1	1	5	1	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
30	Stock orderpoint	stock.orderpoint	standard	t	OP/	\N	1	1	5	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
31	YourCompany Sequence scrap	stock.scrap	standard	t	SP/	\N	1	1	5	1	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
32	Picking INT	stock.picking	standard	t	INT/	\N	1	1	5	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
33	Serial Numbers	stock.lot.serial	standard	t		\N	1	1	7	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
34	Packs	stock.lot.tracking	standard	t		\N	1	1	7	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
35	Packages	stock.quant.package	standard	t	PACK	\N	1	1	7	\N	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
36	My Company (Chicago) Sequence scrap	stock.scrap	standard	t	SP/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
37	My Company (Chicago) Sequence in	\N	standard	t	My Co/IN/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
38	My Company (Chicago) Sequence out	\N	standard	t	My Co/OUT/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
39	My Company (Chicago) Sequence picking	\N	standard	t	My Co/PICK/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
40	My Company (Chicago) Sequence packing	\N	standard	t	My Co/PACK/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
41	My Company (Chicago) Sequence internal	\N	standard	t	My Co/INT/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
42	Chicago Warehouse Sequence in	\N	standard	t	Chic/IN/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
43	Chicago Warehouse Sequence out	\N	standard	t	Chic/OUT/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
44	Chicago Warehouse Sequence picking	\N	standard	t	Chic/PICK/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
45	Chicago Warehouse Sequence packing	\N	standard	t	Chic/PACK/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
46	Chicago Warehouse Sequence internal	\N	standard	t	Chic/INT/	\N	1	1	5	2	\N	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
47	STJ Sequence	\N	no_gap	t	STJ/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
48	Inventory Valuation : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
49	Expense invoice	hr.expense.invoice	standard	t	EXP/	\N	1	1	3	1	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
50	EXP Sequence	\N	no_gap	t	EXP/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
51	EXP: Refund Sequence	\N	no_gap	t	REXP/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
52	Expense : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
53	IFRS Sequence	\N	no_gap	t	IFRS/%(range_year)s/	\N	1	1	4	1	t	1	2020-02-13 17:20:27.410002	1	2020-02-13 17:20:27.410002
54	IFRS Automatic Transfers : Check Number Sequence	\N	no_gap	t	\N	\N	1	1	5	1	\N	1	2020-02-13 17:20:27.410002	1	2020-02-13 17:20:27.410002
\.


--
-- Name: ir_sequence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_sequence_id_seq', 54, true);


--
-- Name: ir_sequence ir_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_pkey PRIMARY KEY (id);


--
-- Name: ir_sequence ir_sequence_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: ir_sequence ir_sequence_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_sequence ir_sequence_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
