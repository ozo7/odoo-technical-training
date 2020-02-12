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
-- Name: vv_noun; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.vv_noun (
    id integer NOT NULL,
    vv_mot_de_langue_id integer NOT NULL,
    gender_combo integer
);


ALTER TABLE public.vv_noun OWNER TO odoo;

--
-- Name: TABLE vv_noun; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.vv_noun IS 'noun that as a word specialty can have a gender';


--
-- Name: COLUMN vv_noun.vv_mot_de_langue_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_noun.vv_mot_de_langue_id IS 'I am part of this vocabulary word record';


--
-- Name: COLUMN vv_noun.gender_combo; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_noun.gender_combo IS 'gender sequence for the different languages';


--
-- Name: vv_noun_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.vv_noun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vv_noun_id_seq OWNER TO odoo;

--
-- Name: vv_noun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.vv_noun_id_seq OWNED BY public.vv_noun.id;


--
-- Name: vv_noun id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_noun ALTER COLUMN id SET DEFAULT nextval('public.vv_noun_id_seq'::regclass);


--
-- Data for Name: vv_noun; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.vv_noun (id, vv_mot_de_langue_id, gender_combo) FROM stdin;
1	24	6
2	22	5
3	23	8
4	28	9
5	29	9
6	30	9
7	31	5
\.


--
-- Name: vv_noun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.vv_noun_id_seq', 7, true);


--
-- Name: vv_noun vv_noun_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_noun
    ADD CONSTRAINT vv_noun_pkey PRIMARY KEY (id);


--
-- Name: vv_noun vv_noun_gender_combo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_noun
    ADD CONSTRAINT vv_noun_gender_combo_fkey FOREIGN KEY (gender_combo) REFERENCES public.vv_gender_combo(id) ON DELETE SET NULL;


--
-- Name: vv_noun vv_noun_vv_mot_de_langue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_noun
    ADD CONSTRAINT vv_noun_vv_mot_de_langue_id_fkey FOREIGN KEY (vv_mot_de_langue_id) REFERENCES public.vv_mot_de_langue(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
