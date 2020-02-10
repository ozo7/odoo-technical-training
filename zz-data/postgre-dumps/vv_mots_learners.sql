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
-- Name: vv_mots_learners; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.vv_mots_learners (
    id integer NOT NULL,
    mot_de_langue_id integer NOT NULL,
    res_partner_id integer NOT NULL,
    "timesLearnt" integer
);


ALTER TABLE public.vv_mots_learners OWNER TO odoo;

--
-- Name: TABLE vv_mots_learners; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.vv_mots_learners IS 'Words N Learners Relations';


--
-- Name: COLUMN vv_mots_learners.mot_de_langue_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mots_learners.mot_de_langue_id IS 'word ID';


--
-- Name: COLUMN vv_mots_learners.res_partner_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mots_learners.res_partner_id IS 'learner ID';


--
-- Name: COLUMN vv_mots_learners."timesLearnt"; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mots_learners."timesLearnt" IS 'Timeslearnt';


--
-- Name: vv_mots_learners_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.vv_mots_learners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vv_mots_learners_id_seq OWNER TO odoo;

--
-- Name: vv_mots_learners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.vv_mots_learners_id_seq OWNED BY public.vv_mots_learners.id;


--
-- Name: vv_mots_learners id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mots_learners ALTER COLUMN id SET DEFAULT nextval('public.vv_mots_learners_id_seq'::regclass);


--
-- Data for Name: vv_mots_learners; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.vv_mots_learners (id, mot_de_langue_id, res_partner_id, "timesLearnt") FROM stdin;
\.


--
-- Name: vv_mots_learners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.vv_mots_learners_id_seq', 1, false);


--
-- Name: vv_mots_learners vv_mots_learners_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mots_learners
    ADD CONSTRAINT vv_mots_learners_pkey PRIMARY KEY (id);


--
-- Name: vv_mots_learners vv_mots_learners_mot_de_langue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mots_learners
    ADD CONSTRAINT vv_mots_learners_mot_de_langue_id_fkey FOREIGN KEY (mot_de_langue_id) REFERENCES public.vv_mot_de_langue(id) ON DELETE RESTRICT;


--
-- Name: vv_mots_learners vv_mots_learners_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mots_learners
    ADD CONSTRAINT vv_mots_learners_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--
