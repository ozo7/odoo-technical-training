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
-- Name: ir_sequence_date_range; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_sequence_date_range (
    id integer NOT NULL,
    date_from date NOT NULL,
    date_to date NOT NULL,
    sequence_id integer NOT NULL,
    number_next integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_sequence_date_range OWNER TO odoo;

--
-- Name: TABLE ir_sequence_date_range; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_sequence_date_range IS 'Sequence Date Range';


--
-- Name: COLUMN ir_sequence_date_range.date_from; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence_date_range.date_from IS 'From';


--
-- Name: COLUMN ir_sequence_date_range.date_to; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence_date_range.date_to IS 'To';


--
-- Name: COLUMN ir_sequence_date_range.sequence_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence_date_range.sequence_id IS 'Main Sequence';


--
-- Name: COLUMN ir_sequence_date_range.number_next; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence_date_range.number_next IS 'Next Number';


--
-- Name: COLUMN ir_sequence_date_range.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence_date_range.create_uid IS 'Created by';


--
-- Name: COLUMN ir_sequence_date_range.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence_date_range.create_date IS 'Created on';


--
-- Name: COLUMN ir_sequence_date_range.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence_date_range.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_sequence_date_range.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_sequence_date_range.write_date IS 'Last Updated on';


--
-- Name: ir_sequence_date_range_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_sequence_date_range_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_sequence_date_range_id_seq OWNER TO odoo;

--
-- Name: ir_sequence_date_range_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_sequence_date_range_id_seq OWNED BY public.ir_sequence_date_range.id;


--
-- Name: ir_sequence_date_range id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence_date_range ALTER COLUMN id SET DEFAULT nextval('public.ir_sequence_date_range_id_seq'::regclass);


--
-- Data for Name: ir_sequence_date_range; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_sequence_date_range (id, date_from, date_to, sequence_id, number_next, create_uid, create_date, write_uid, write_date) FROM stdin;
2	2020-01-01	2020-12-31	9	1	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
4	2020-01-01	2020-12-31	12	1	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
5	2020-01-01	2020-12-31	14	1	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
6	2020-01-01	2020-12-31	16	1	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
7	2020-01-01	2020-12-31	18	1	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
8	2020-01-01	2020-12-31	20	1	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
9	2020-01-01	2020-12-31	22	2	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
1	2020-01-01	2020-12-31	8	5	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
10	2018-01-01	2018-12-31	11	2	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
11	2020-01-01	2020-12-31	47	1	1	2020-02-11 11:17:33.825783	1	2020-02-11 11:17:33.825783
12	2020-01-01	2020-12-31	50	1	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
13	2020-01-01	2020-12-31	51	1	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336
3	2020-01-01	2020-12-31	11	2	1	2020-02-10 14:36:40.532686	1	2020-02-10 14:36:40.532686
14	2020-01-01	2020-12-31	53	1	1	2020-02-13 17:20:27.410002	1	2020-02-13 17:20:27.410002
\.


--
-- Name: ir_sequence_date_range_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_sequence_date_range_id_seq', 14, true);


--
-- Name: ir_sequence_date_range ir_sequence_date_range_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence_date_range
    ADD CONSTRAINT ir_sequence_date_range_pkey PRIMARY KEY (id);


--
-- Name: ir_sequence_date_range ir_sequence_date_range_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence_date_range
    ADD CONSTRAINT ir_sequence_date_range_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_sequence_date_range ir_sequence_date_range_sequence_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence_date_range
    ADD CONSTRAINT ir_sequence_date_range_sequence_id_fkey FOREIGN KEY (sequence_id) REFERENCES public.ir_sequence(id) ON DELETE CASCADE;


--
-- Name: ir_sequence_date_range ir_sequence_date_range_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_sequence_date_range
    ADD CONSTRAINT ir_sequence_date_range_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
