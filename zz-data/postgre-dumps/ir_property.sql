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
-- Name: ir_property; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_property (
    id integer NOT NULL,
    name character varying,
    res_id character varying,
    company_id integer,
    fields_id integer NOT NULL,
    value_float double precision,
    value_integer integer,
    value_text text,
    value_binary bytea,
    value_reference character varying,
    value_datetime timestamp without time zone,
    type character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_property OWNER TO odoo;

--
-- Name: TABLE ir_property; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_property IS 'Company Property';


--
-- Name: COLUMN ir_property.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.name IS 'Name';


--
-- Name: COLUMN ir_property.res_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.res_id IS 'Resource';


--
-- Name: COLUMN ir_property.company_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.company_id IS 'Company';


--
-- Name: COLUMN ir_property.fields_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.fields_id IS 'Field';


--
-- Name: COLUMN ir_property.value_float; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.value_float IS 'Value Float';


--
-- Name: COLUMN ir_property.value_integer; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.value_integer IS 'Value Integer';


--
-- Name: COLUMN ir_property.value_text; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.value_text IS 'Value Text';


--
-- Name: COLUMN ir_property.value_binary; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.value_binary IS 'Value Binary';


--
-- Name: COLUMN ir_property.value_reference; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.value_reference IS 'Value Reference';


--
-- Name: COLUMN ir_property.value_datetime; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.value_datetime IS 'Value Datetime';


--
-- Name: COLUMN ir_property.type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.type IS 'Type';


--
-- Name: COLUMN ir_property.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.create_uid IS 'Created by';


--
-- Name: COLUMN ir_property.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.create_date IS 'Created on';


--
-- Name: COLUMN ir_property.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_property.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_property.write_date IS 'Last Updated on';


--
-- Name: ir_property_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_property_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_property_id_seq OWNER TO odoo;

--
-- Name: ir_property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_property_id_seq OWNED BY public.ir_property.id;


--
-- Name: ir_property id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_property ALTER COLUMN id SET DEFAULT nextval('public.ir_property_id_seq'::regclass);


--
-- Data for Name: ir_property; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_property (id, name, res_id, company_id, fields_id, value_float, value_integer, value_text, value_binary, value_reference, value_datetime, type, create_uid, create_date, write_uid, write_date) FROM stdin;
1	standard_price	product.product,1	1	5180	8	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
2	standard_price	product.product,2	1	5180	400	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
3	standard_price	product.product,3	1	5180	20.5	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
4	standard_price	product.product,4	1	5180	25.5	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
5	standard_price	product.product,5	1	5180	55	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
6	standard_price	product.product,6	1	5180	35	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
7	standard_price	product.product,7	1	5180	235	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
8	standard_price	product.product,8	1	5180	300	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
10	standard_price	product.product,12	1	5180	500	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
11	standard_price	product.product,13	1	5180	500	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
12	standard_price	product.product,14	1	5180	500	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
13	standard_price	product.product,15	1	5180	500	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
14	standard_price	product.product,16	1	5180	600	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
15	standard_price	product.product,17	1	5180	800	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
16	standard_price	product.product,18	1	5180	70	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
17	standard_price	product.product,19	1	5180	1299	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
18	standard_price	product.product,20	1	5180	10	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
19	standard_price	product.product,21	1	5180	12.5	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
21	standard_price	product.product,25	1	5180	18	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
22	standard_price	product.product,26	1	5180	78	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
23	standard_price	product.product,27	1	5180	20	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
24	standard_price	product.product,28	1	5180	1700	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
25	standard_price	product.product,29	1	5180	2010	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
26	standard_price	product.product,30	1	5180	876	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
27	standard_price	product.product,31	1	5180	2870	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
28	standard_price	product.product,32	1	5180	3300	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
29	standard_price	product.product,33	1	5180	25000	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
30	standard_price	product.product,34	1	5180	45000	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
31	standard_price	product.product,35	1	5180	65000	\N	\N	\N	\N	\N	float	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
32	property_product_pricelist	res.partner,7	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054
33	Followup Trust Property	\N	\N	5459	\N	\N	normal	\N	\N	\N	selection	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
34	property_payment_term_id	res.partner,10	1	5451	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
35	property_product_pricelist	res.partner,35	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
36	property_product_pricelist	res.partner,18	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
37	property_product_pricelist	res.partner,19	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
38	property_payment_term_id	res.partner,35	1	5451	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
39	property_payment_term_id	res.partner,18	1	5451	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
40	property_payment_term_id	res.partner,19	1	5451	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
41	property_payment_term_id	res.partner,14	1	5451	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
42	property_supplier_payment_term_id	res.partner,14	1	5452	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
43	property_product_pricelist	res.partner,26	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
44	property_product_pricelist	res.partner,33	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
45	property_product_pricelist	res.partner,27	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
46	property_payment_term_id	res.partner,26	1	5451	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
47	property_payment_term_id	res.partner,33	1	5451	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
48	property_payment_term_id	res.partner,27	1	5451	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
49	property_supplier_payment_term_id	res.partner,26	1	5452	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
50	property_supplier_payment_term_id	res.partner,33	1	5452	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
51	property_supplier_payment_term_id	res.partner,27	1	5452	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
52	property_supplier_payment_term_id	res.partner,12	1	5452	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
53	property_product_pricelist	res.partner,21	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
54	property_product_pricelist	res.partner,25	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
55	property_product_pricelist	res.partner,37	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
56	property_product_pricelist	res.partner,24	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
57	property_product_pricelist	res.partner,36	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
58	property_product_pricelist	res.partner,30	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
59	property_product_pricelist	res.partner,38	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
60	property_supplier_payment_term_id	res.partner,21	1	5452	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
61	property_supplier_payment_term_id	res.partner,25	1	5452	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
62	property_supplier_payment_term_id	res.partner,37	1	5452	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
63	property_supplier_payment_term_id	res.partner,24	1	5452	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
64	property_supplier_payment_term_id	res.partner,36	1	5452	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
65	property_supplier_payment_term_id	res.partner,30	1	5452	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
66	property_supplier_payment_term_id	res.partner,38	1	5452	\N	\N	\N	\N	account.payment.term,4	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
67	property_supplier_payment_term_id	res.partner,9	1	5452	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
68	property_product_pricelist	res.partner,17	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
69	property_product_pricelist	res.partner,32	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
70	property_product_pricelist	res.partner,16	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
71	property_supplier_payment_term_id	res.partner,17	1	5452	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
72	property_supplier_payment_term_id	res.partner,32	1	5452	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
73	property_supplier_payment_term_id	res.partner,16	1	5452	\N	\N	\N	\N	account.payment.term,7	\N	many2one	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
74	property_account_receivable_id	\N	1	5449	\N	\N	\N	\N	account.account,6	\N	many2one	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
75	property_account_payable_id	\N	1	5448	\N	\N	\N	\N	account.account,13	\N	many2one	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
76	property_account_expense_categ_id	\N	1	6326	\N	\N	\N	\N	account.account,24	\N	many2one	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
77	property_account_income_categ_id	\N	1	6325	\N	\N	\N	\N	account.account,19	\N	many2one	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
78	property_stock_supplier	\N	\N	7382	\N	\N	\N	\N	stock.location,4	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
79	property_stock_customer	\N	\N	7381	\N	\N	\N	\N	stock.location,5	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
80	property_stock_customer	res.partner,1	1	7381	\N	\N	\N	\N	stock.location,13	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
81	property_stock_supplier	res.partner,1	1	7382	\N	\N	\N	\N	stock.location,13	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
82	property_stock_inventory_YourCompany	\N	1	7943	\N	\N	\N	\N	stock.location,14	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
83	property_stock_inventory_YourCompany	\N	1	7942	\N	\N	\N	\N	stock.location,15	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
84	property_product_pricelist	res.partner,45	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
85	property_product_pricelist	\N	2	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
86	property_stock_customer	res.partner,44	2	7381	\N	\N	\N	\N	stock.location,19	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
87	property_stock_supplier	res.partner,44	2	7382	\N	\N	\N	\N	stock.location,19	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
88	property_stock_inventory_My Company (Chicago)	\N	2	7943	\N	\N	\N	\N	stock.location,20	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
89	property_stock_inventory_My Company (Chicago)	\N	2	7942	\N	\N	\N	\N	stock.location,21	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
90	property_stock_customer	res.partner,45	2	7381	\N	\N	\N	\N	stock.location,19	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
91	property_stock_supplier	res.partner,45	2	7382	\N	\N	\N	\N	stock.location,19	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
92	responsible_id	product.template,29	1	7941	\N	\N	\N	\N	res.users,1	\N	many2one	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
93	standard_price	product.product,37	1	5180	70	\N	\N	\N	\N	\N	float	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
94	Cost Method Property	\N	\N	8227	\N	\N	standard	\N	\N	\N	selection	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
95	Valuation Property	\N	\N	8226	\N	\N	manual_periodic	\N	\N	\N	selection	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
98	property_stock_journal	\N	1	8228	\N	\N	\N	\N	account.journal,8	\N	many2one	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
97	property_stock_account_input_categ_id	\N	1	8229	\N	\N	\N	\N	account.account,4	\N	many2one	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
96	property_stock_account_output_categ_id	\N	1	8230	\N	\N	\N	\N	account.account,5	\N	many2one	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
99	property_stock_valuation_account_id	\N	1	8231	\N	\N	\N	\N	account.account,3	\N	many2one	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
100	property_stock_valuation_account_id	\N	1	8231	\N	\N	\N	\N	account.account,2	\N	many2one	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
101	property_product_pricelist	res.partner,46	1	5382	\N	\N	\N	\N	product.pricelist,1	\N	many2one	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
102	responsible_id	product.template,30	1	7941	\N	\N	\N	\N	res.users,1	\N	many2one	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
103	standard_price	product.product,38	1	5180	0.320000000000000007	\N	\N	\N	\N	\N	float	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
104	responsible_id	product.template,31	1	7941	\N	\N	\N	\N	res.users,1	\N	many2one	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
105	standard_price	product.product,39	1	5180	700	\N	\N	\N	\N	\N	float	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
106	responsible_id	product.template,32	1	7941	\N	\N	\N	\N	res.users,1	\N	many2one	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
107	standard_price	product.product,40	1	5180	1	\N	\N	\N	\N	\N	float	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
108	payment_next_action_date	\N	\N	9560	\N	\N	\N	\N	\N	\N	many2one	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
\.


--
-- Name: ir_property_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_property_id_seq', 108, true);


--
-- Name: ir_property ir_property_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_pkey PRIMARY KEY (id);


--
-- Name: ir_property_company_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_property_company_id_index ON public.ir_property USING btree (company_id);


--
-- Name: ir_property_fields_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_property_fields_id_index ON public.ir_property USING btree (fields_id);


--
-- Name: ir_property_name_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_property_name_index ON public.ir_property USING btree (name);


--
-- Name: ir_property_res_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_property_res_id_index ON public.ir_property USING btree (res_id);


--
-- Name: ir_property_type_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_property_type_index ON public.ir_property USING btree (type);


--
-- Name: ir_property ir_property_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: ir_property ir_property_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_property ir_property_fields_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_fields_id_fkey FOREIGN KEY (fields_id) REFERENCES public.ir_model_fields(id) ON DELETE CASCADE;


--
-- Name: ir_property ir_property_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
