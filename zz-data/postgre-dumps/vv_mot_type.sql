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
-- Name: vv_mot_type; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.vv_mot_type (
    id integer NOT NULL,
    mottype character varying,
    explanation character varying
);


ALTER TABLE public.vv_mot_type OWNER TO odoo;

--
-- Name: TABLE vv_mot_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.vv_mot_type IS 'basic grammar type of word';


--
-- Name: COLUMN vv_mot_type.mottype; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_type.mottype IS 'type of word';


--
-- Name: COLUMN vv_mot_type.explanation; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_type.explanation IS 'explanation';


--
-- Name: vv_mot_type_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.vv_mot_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vv_mot_type_id_seq OWNER TO odoo;

--
-- Name: vv_mot_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.vv_mot_type_id_seq OWNED BY public.vv_mot_type.id;


--
-- Name: vv_mot_type id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mot_type ALTER COLUMN id SET DEFAULT nextval('public.vv_mot_type_id_seq'::regclass);


--
-- Data for Name: vv_mot_type; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.vv_mot_type (id, mottype, explanation) FROM stdin;
1	noun	people, objects or situations that are the source or the subject of actions
2	verb	word defining the action of the phrase, it also contains the time information (past, present, future)
3	adjective	specifying nouns, does not destroy the sentence if omitted
4	adverb	specifying verbs or the overall context of the phrase, does not destroy the sentence if omitted
5	other	anything else like complete phrases or numbers that are outside of the context of sentence grammar.
\.


--
-- Name: vv_mot_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.vv_mot_type_id_seq', 5, true);


--
-- Name: vv_mot_type vv_mot_type_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mot_type
    ADD CONSTRAINT vv_mot_type_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
