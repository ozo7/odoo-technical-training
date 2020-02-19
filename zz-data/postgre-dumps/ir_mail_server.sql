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
-- Name: ir_mail_server; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_mail_server (
    id integer NOT NULL,
    name character varying NOT NULL,
    smtp_host character varying NOT NULL,
    smtp_port integer NOT NULL,
    smtp_user character varying,
    smtp_pass character varying,
    smtp_encryption character varying NOT NULL,
    smtp_debug boolean,
    sequence integer,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_mail_server OWNER TO odoo;

--
-- Name: TABLE ir_mail_server; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_mail_server IS 'Mail Server';


--
-- Name: COLUMN ir_mail_server.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.name IS 'Description';


--
-- Name: COLUMN ir_mail_server.smtp_host; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.smtp_host IS 'SMTP Server';


--
-- Name: COLUMN ir_mail_server.smtp_port; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.smtp_port IS 'SMTP Port';


--
-- Name: COLUMN ir_mail_server.smtp_user; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.smtp_user IS 'Username';


--
-- Name: COLUMN ir_mail_server.smtp_pass; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.smtp_pass IS 'Password';


--
-- Name: COLUMN ir_mail_server.smtp_encryption; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.smtp_encryption IS 'Connection Security';


--
-- Name: COLUMN ir_mail_server.smtp_debug; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.smtp_debug IS 'Debugging';


--
-- Name: COLUMN ir_mail_server.sequence; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.sequence IS 'Priority';


--
-- Name: COLUMN ir_mail_server.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.active IS 'Active';


--
-- Name: COLUMN ir_mail_server.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.create_uid IS 'Created by';


--
-- Name: COLUMN ir_mail_server.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.create_date IS 'Created on';


--
-- Name: COLUMN ir_mail_server.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_mail_server.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_mail_server.write_date IS 'Last Updated on';


--
-- Name: ir_mail_server_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_mail_server_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_mail_server_id_seq OWNER TO odoo;

--
-- Name: ir_mail_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_mail_server_id_seq OWNED BY public.ir_mail_server.id;


--
-- Name: ir_mail_server id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_mail_server ALTER COLUMN id SET DEFAULT nextval('public.ir_mail_server_id_seq'::regclass);


--
-- Data for Name: ir_mail_server; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_mail_server (id, name, smtp_host, smtp_port, smtp_user, smtp_pass, smtp_encryption, smtp_debug, sequence, active, create_uid, create_date, write_uid, write_date) FROM stdin;
\.


--
-- Name: ir_mail_server_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_mail_server_id_seq', 1, false);


--
-- Name: ir_mail_server ir_mail_server_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_mail_server
    ADD CONSTRAINT ir_mail_server_pkey PRIMARY KEY (id);


--
-- Name: ir_mail_server_name_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_mail_server_name_index ON public.ir_mail_server USING btree (name);


--
-- Name: ir_mail_server ir_mail_server_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_mail_server
    ADD CONSTRAINT ir_mail_server_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_mail_server ir_mail_server_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_mail_server
    ADD CONSTRAINT ir_mail_server_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
