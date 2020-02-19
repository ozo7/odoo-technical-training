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
-- Name: ir_module_module_exclusion; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_module_module_exclusion (
    id integer NOT NULL,
    name character varying,
    module_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_module_module_exclusion OWNER TO odoo;

--
-- Name: TABLE ir_module_module_exclusion; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_module_module_exclusion IS 'Module exclusion';


--
-- Name: COLUMN ir_module_module_exclusion.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_module_exclusion.name IS 'Name';


--
-- Name: COLUMN ir_module_module_exclusion.module_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_module_exclusion.module_id IS 'Module';


--
-- Name: COLUMN ir_module_module_exclusion.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_module_exclusion.create_uid IS 'Created by';


--
-- Name: COLUMN ir_module_module_exclusion.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_module_exclusion.create_date IS 'Created on';


--
-- Name: COLUMN ir_module_module_exclusion.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_module_exclusion.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_module_module_exclusion.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_module_module_exclusion.write_date IS 'Last Updated on';


--
-- Name: ir_module_module_exclusion_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_module_module_exclusion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_module_exclusion_id_seq OWNER TO odoo;

--
-- Name: ir_module_module_exclusion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_module_module_exclusion_id_seq OWNED BY public.ir_module_module_exclusion.id;


--
-- Name: ir_module_module_exclusion id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_module_exclusion ALTER COLUMN id SET DEFAULT nextval('public.ir_module_module_exclusion_id_seq'::regclass);


--
-- Data for Name: ir_module_module_exclusion; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_module_module_exclusion (id, name, module_id, create_uid, create_date, write_uid, write_date) FROM stdin;
1	pos_discount	100	\N	\N	\N	\N
2	pos_reprint	100	\N	\N	\N	\N
\.


--
-- Name: ir_module_module_exclusion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_module_module_exclusion_id_seq', 2, true);


--
-- Name: ir_module_module_exclusion ir_module_module_exclusion_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_module_exclusion
    ADD CONSTRAINT ir_module_module_exclusion_pkey PRIMARY KEY (id);


--
-- Name: ir_module_module_exclusion_name_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_module_module_exclusion_name_index ON public.ir_module_module_exclusion USING btree (name);


--
-- Name: ir_module_module_exclusion ir_module_module_exclusion_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_module_exclusion
    ADD CONSTRAINT ir_module_module_exclusion_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_module_exclusion ir_module_module_exclusion_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_module_exclusion
    ADD CONSTRAINT ir_module_module_exclusion_module_id_fkey FOREIGN KEY (module_id) REFERENCES public.ir_module_module(id) ON DELETE CASCADE;


--
-- Name: ir_module_module_exclusion ir_module_module_exclusion_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_module_module_exclusion
    ADD CONSTRAINT ir_module_module_exclusion_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
