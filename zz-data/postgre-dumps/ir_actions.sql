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
-- Name: ir_actions; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_actions (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    help text,
    binding_model_id integer,
    binding_type character varying NOT NULL,
    binding_view_types character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_actions OWNER TO odoo;

--
-- Name: COLUMN ir_actions.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.name IS 'Name';


--
-- Name: COLUMN ir_actions.type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.type IS 'Action Type';


--
-- Name: COLUMN ir_actions.help; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.help IS 'Action Description';


--
-- Name: COLUMN ir_actions.binding_model_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.binding_model_id IS 'Binding Model';


--
-- Name: COLUMN ir_actions.binding_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.binding_type IS 'Binding Type';


--
-- Name: COLUMN ir_actions.binding_view_types; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.binding_view_types IS 'Binding View Types';


--
-- Name: COLUMN ir_actions.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.create_uid IS 'Created by';


--
-- Name: COLUMN ir_actions.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.create_date IS 'Created on';


--
-- Name: COLUMN ir_actions.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_actions.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions.write_date IS 'Last Updated on';


--
-- Name: ir_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_actions_id_seq OWNER TO odoo;

--
-- Name: ir_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_actions_id_seq OWNED BY public.ir_actions.id;


--
-- Name: ir_actions id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Data for Name: ir_actions; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_actions (id, name, type, help, binding_model_id, binding_type, binding_view_types, create_uid, create_date, write_uid, write_date) FROM stdin;
\.


--
-- Name: ir_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_actions_id_seq', 575, true);


--
-- Name: ir_actions ir_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions
    ADD CONSTRAINT ir_actions_pkey PRIMARY KEY (id);


--
-- Name: ir_actions ir_actions_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions
    ADD CONSTRAINT ir_actions_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_actions ir_actions_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions
    ADD CONSTRAINT ir_actions_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_actions ir_actions_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions
    ADD CONSTRAINT ir_actions_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
