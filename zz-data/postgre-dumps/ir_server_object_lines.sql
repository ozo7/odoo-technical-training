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
-- Name: ir_server_object_lines; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_server_object_lines (
    id integer NOT NULL,
    server_id integer,
    col1 integer NOT NULL,
    value text NOT NULL,
    evaluation_type character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_server_object_lines OWNER TO odoo;

--
-- Name: TABLE ir_server_object_lines; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_server_object_lines IS 'Server Action value mapping';


--
-- Name: COLUMN ir_server_object_lines.server_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_server_object_lines.server_id IS 'Related Server Action';


--
-- Name: COLUMN ir_server_object_lines.col1; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_server_object_lines.col1 IS 'Field';


--
-- Name: COLUMN ir_server_object_lines.value; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_server_object_lines.value IS 'Value';


--
-- Name: COLUMN ir_server_object_lines.evaluation_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_server_object_lines.evaluation_type IS 'Evaluation Type';


--
-- Name: COLUMN ir_server_object_lines.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_server_object_lines.create_uid IS 'Created by';


--
-- Name: COLUMN ir_server_object_lines.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_server_object_lines.create_date IS 'Created on';


--
-- Name: COLUMN ir_server_object_lines.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_server_object_lines.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_server_object_lines.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_server_object_lines.write_date IS 'Last Updated on';


--
-- Name: ir_server_object_lines_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_server_object_lines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_server_object_lines_id_seq OWNER TO odoo;

--
-- Name: ir_server_object_lines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_server_object_lines_id_seq OWNED BY public.ir_server_object_lines.id;


--
-- Name: ir_server_object_lines id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_server_object_lines ALTER COLUMN id SET DEFAULT nextval('public.ir_server_object_lines_id_seq'::regclass);


--
-- Data for Name: ir_server_object_lines; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_server_object_lines (id, server_id, col1, value, evaluation_type, create_uid, create_date, write_uid, write_date) FROM stdin;
\.


--
-- Name: ir_server_object_lines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_server_object_lines_id_seq', 1, false);


--
-- Name: ir_server_object_lines ir_server_object_lines_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_pkey PRIMARY KEY (id);


--
-- Name: ir_server_object_lines ir_server_object_lines_col1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_col1_fkey FOREIGN KEY (col1) REFERENCES public.ir_model_fields(id) ON DELETE RESTRICT;


--
-- Name: ir_server_object_lines ir_server_object_lines_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_server_object_lines ir_server_object_lines_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.ir_act_server(id) ON DELETE CASCADE;


--
-- Name: ir_server_object_lines ir_server_object_lines_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
