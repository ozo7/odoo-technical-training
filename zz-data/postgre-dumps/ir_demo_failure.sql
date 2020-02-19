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
-- Name: ir_demo_failure; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_demo_failure (
    id integer NOT NULL,
    module_id integer NOT NULL,
    error character varying,
    wizard_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_demo_failure OWNER TO odoo;

--
-- Name: TABLE ir_demo_failure; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_demo_failure IS 'Demo failure';


--
-- Name: COLUMN ir_demo_failure.module_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_demo_failure.module_id IS 'Module';


--
-- Name: COLUMN ir_demo_failure.error; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_demo_failure.error IS 'Error';


--
-- Name: COLUMN ir_demo_failure.wizard_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_demo_failure.wizard_id IS 'Wizard';


--
-- Name: COLUMN ir_demo_failure.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_demo_failure.create_uid IS 'Created by';


--
-- Name: COLUMN ir_demo_failure.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_demo_failure.create_date IS 'Created on';


--
-- Name: COLUMN ir_demo_failure.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_demo_failure.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_demo_failure.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_demo_failure.write_date IS 'Last Updated on';


--
-- Name: ir_demo_failure_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_demo_failure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_demo_failure_id_seq OWNER TO odoo;

--
-- Name: ir_demo_failure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_demo_failure_id_seq OWNED BY public.ir_demo_failure.id;


--
-- Name: ir_demo_failure id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_demo_failure ALTER COLUMN id SET DEFAULT nextval('public.ir_demo_failure_id_seq'::regclass);


--
-- Data for Name: ir_demo_failure; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_demo_failure (id, module_id, error, wizard_id, create_uid, create_date, write_uid, write_date) FROM stdin;
2	564	File not found: openacademy/demo/demo.xml	\N	1	2020-02-18 12:54:10.686114	1	2020-02-18 12:54:10.686114
3	564	File not found: openacademy/demo/demo.xml	\N	1	2020-02-18 13:09:17.72003	1	2020-02-18 13:09:17.72003
\.


--
-- Name: ir_demo_failure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_demo_failure_id_seq', 3, true);


--
-- Name: ir_demo_failure ir_demo_failure_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_pkey PRIMARY KEY (id);


--
-- Name: ir_demo_failure ir_demo_failure_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_demo_failure ir_demo_failure_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_module_id_fkey FOREIGN KEY (module_id) REFERENCES public.ir_module_module(id) ON DELETE CASCADE;


--
-- Name: ir_demo_failure ir_demo_failure_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_wizard_id_fkey FOREIGN KEY (wizard_id) REFERENCES public.ir_demo_failure_wizard(id) ON DELETE SET NULL;


--
-- Name: ir_demo_failure ir_demo_failure_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
