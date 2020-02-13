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
-- Name: vv_learning_session; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.vv_learning_session (
    id integer NOT NULL,
    learner integer,
    started date,
    finished date,
    mot1 integer,
    mot2 integer,
    mot3 integer,
    mot1c integer,
    mot2c integer,
    mot3c integer,
    mot1ok integer,
    mot2ok integer,
    mot3ok integer
);


ALTER TABLE public.vv_learning_session OWNER TO odoo;

--
-- Name: TABLE vv_learning_session; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.vv_learning_session IS 'learn session, up to 3 words to learn for a single user, with start and end date';


--
-- Name: COLUMN vv_learning_session.learner; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.learner IS 'learner';


--
-- Name: COLUMN vv_learning_session.started; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.started IS 'Started';


--
-- Name: COLUMN vv_learning_session.finished; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.finished IS 'Finished';


--
-- Name: COLUMN vv_learning_session.mot1; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot1 IS 'Mot1';


--
-- Name: COLUMN vv_learning_session.mot2; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot2 IS 'Mot2';


--
-- Name: COLUMN vv_learning_session.mot3; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot3 IS 'Mot3';


--
-- Name: COLUMN vv_learning_session.mot1c; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot1c IS 'Mot1C';


--
-- Name: COLUMN vv_learning_session.mot2c; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot2c IS 'Mot2C';


--
-- Name: COLUMN vv_learning_session.mot3c; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot3c IS 'Mot3C';


--
-- Name: COLUMN vv_learning_session.mot1ok; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot1ok IS 'Mot1Ok';


--
-- Name: COLUMN vv_learning_session.mot2ok; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot2ok IS 'Mot2Ok';


--
-- Name: COLUMN vv_learning_session.mot3ok; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_learning_session.mot3ok IS 'Mot3Ok';


--
-- Name: vv_learning_session_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.vv_learning_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vv_learning_session_id_seq OWNER TO odoo;

--
-- Name: vv_learning_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.vv_learning_session_id_seq OWNED BY public.vv_learning_session.id;


--
-- Name: vv_learning_session id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_learning_session ALTER COLUMN id SET DEFAULT nextval('public.vv_learning_session_id_seq'::regclass);


--
-- Data for Name: vv_learning_session; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.vv_learning_session (id, learner, started, finished, mot1, mot2, mot3, mot1c, mot2c, mot3c, mot1ok, mot2ok, mot3ok) FROM stdin;
\.


--
-- Name: vv_learning_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.vv_learning_session_id_seq', 1, false);


--
-- Name: vv_learning_session vv_learning_session_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_learning_session
    ADD CONSTRAINT vv_learning_session_pkey PRIMARY KEY (id);


--
-- Name: vv_learning_session vv_learning_session_learner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_learning_session
    ADD CONSTRAINT vv_learning_session_learner_fkey FOREIGN KEY (learner) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: vv_learning_session vv_learning_session_mot1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_learning_session
    ADD CONSTRAINT vv_learning_session_mot1_fkey FOREIGN KEY (mot1) REFERENCES public.vv_mot_de_langue(id) ON DELETE SET NULL;


--
-- Name: vv_learning_session vv_learning_session_mot2_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_learning_session
    ADD CONSTRAINT vv_learning_session_mot2_fkey FOREIGN KEY (mot2) REFERENCES public.vv_mot_de_langue(id) ON DELETE SET NULL;


--
-- Name: vv_learning_session vv_learning_session_mot3_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_learning_session
    ADD CONSTRAINT vv_learning_session_mot3_fkey FOREIGN KEY (mot3) REFERENCES public.vv_mot_de_langue(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
