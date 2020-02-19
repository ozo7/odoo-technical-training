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
-- Name: ir_exports; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_exports (
    id integer NOT NULL,
    name character varying,
    resource character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_exports OWNER TO odoo;

--
-- Name: TABLE ir_exports; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_exports IS 'Exports';


--
-- Name: COLUMN ir_exports.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_exports.name IS 'Export Name';


--
-- Name: COLUMN ir_exports.resource; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_exports.resource IS 'Resource';


--
-- Name: COLUMN ir_exports.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_exports.create_uid IS 'Created by';


--
-- Name: COLUMN ir_exports.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_exports.create_date IS 'Created on';


--
-- Name: COLUMN ir_exports.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_exports.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_exports.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_exports.write_date IS 'Last Updated on';


--
-- Name: ir_exports_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_exports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_exports_id_seq OWNER TO odoo;

--
-- Name: ir_exports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_exports_id_seq OWNED BY public.ir_exports.id;


--
-- Name: ir_exports id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_exports ALTER COLUMN id SET DEFAULT nextval('public.ir_exports_id_seq'::regclass);


--
-- Data for Name: ir_exports; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_exports (id, name, resource, create_uid, create_date, write_uid, write_date) FROM stdin;
\.


--
-- Name: ir_exports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_exports_id_seq', 1, false);


--
-- Name: ir_exports ir_exports_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_exports
    ADD CONSTRAINT ir_exports_pkey PRIMARY KEY (id);


--
-- Name: ir_exports_resource_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_exports_resource_index ON public.ir_exports USING btree (resource);


--
-- Name: ir_exports ir_exports_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_exports
    ADD CONSTRAINT ir_exports_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_exports ir_exports_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_exports
    ADD CONSTRAINT ir_exports_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
