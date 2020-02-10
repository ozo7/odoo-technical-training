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
-- Name: vv_gender_combo; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.vv_gender_combo (
    id integer NOT NULL,
    fr character varying,
    de character varying,
    combo character varying
);


ALTER TABLE public.vv_gender_combo OWNER TO odoo;

--
-- Name: TABLE vv_gender_combo; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.vv_gender_combo IS 'gender combinations table as reference for nouns';


--
-- Name: COLUMN vv_gender_combo.fr; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_gender_combo.fr IS 'French';


--
-- Name: COLUMN vv_gender_combo.de; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_gender_combo.de IS 'German';


--
-- Name: COLUMN vv_gender_combo.combo; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_gender_combo.combo IS 'combo';


--
-- Name: vv_gender_combo_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.vv_gender_combo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vv_gender_combo_id_seq OWNER TO odoo;

--
-- Name: vv_gender_combo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.vv_gender_combo_id_seq OWNED BY public.vv_gender_combo.id;


--
-- Name: vv_gender_combo id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_gender_combo ALTER COLUMN id SET DEFAULT nextval('public.vv_gender_combo_id_seq'::regclass);


--
-- Data for Name: vv_gender_combo; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.vv_gender_combo (id, fr, de, combo) FROM stdin;
5	m	m	mm
6	m	f	mf
7	f	m	fm
8	f	f	ff
9	m	n	mn
10	f	n	fn
\.


--
-- Name: vv_gender_combo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.vv_gender_combo_id_seq', 10, true);


--
-- Name: vv_gender_combo vv_gender_combo_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_gender_combo
    ADD CONSTRAINT vv_gender_combo_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
