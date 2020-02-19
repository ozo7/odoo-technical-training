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
-- Name: ir_actions_todo; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_actions_todo (
    id integer NOT NULL,
    action_id integer NOT NULL,
    sequence integer,
    state character varying NOT NULL,
    name character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_actions_todo OWNER TO odoo;

--
-- Name: TABLE ir_actions_todo; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_actions_todo IS 'Configuration Wizards';


--
-- Name: COLUMN ir_actions_todo.action_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions_todo.action_id IS 'Action';


--
-- Name: COLUMN ir_actions_todo.sequence; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions_todo.sequence IS 'Sequence';


--
-- Name: COLUMN ir_actions_todo.state; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions_todo.state IS 'Status';


--
-- Name: COLUMN ir_actions_todo.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions_todo.name IS 'Name';


--
-- Name: COLUMN ir_actions_todo.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions_todo.create_uid IS 'Created by';


--
-- Name: COLUMN ir_actions_todo.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions_todo.create_date IS 'Created on';


--
-- Name: COLUMN ir_actions_todo.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions_todo.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_actions_todo.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_actions_todo.write_date IS 'Last Updated on';


--
-- Name: ir_actions_todo_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_actions_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_actions_todo_id_seq OWNER TO odoo;

--
-- Name: ir_actions_todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_actions_todo_id_seq OWNED BY public.ir_actions_todo.id;


--
-- Name: ir_actions_todo id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions_todo ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_todo_id_seq'::regclass);


--
-- Data for Name: ir_actions_todo; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_actions_todo (id, action_id, sequence, state, name, create_uid, create_date, write_uid, write_date) FROM stdin;
1	556	100	done	\N	1	2020-01-30 11:38:26.99497	1	2020-02-14 11:31:15.854012
3	555	0	done	\N	1	2020-02-14 11:31:14.678612	2	2020-02-18 11:07:02.83945
2	52	1	open	Demo Failure Notification	1	2020-01-30 11:38:26.99497	1	2020-02-18 13:09:17.72003
\.


--
-- Name: ir_actions_todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_actions_todo_id_seq', 3, true);


--
-- Name: ir_actions_todo ir_actions_todo_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions_todo
    ADD CONSTRAINT ir_actions_todo_pkey PRIMARY KEY (id);


--
-- Name: ir_actions_todo_action_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_actions_todo_action_id_index ON public.ir_actions_todo USING btree (action_id);


--
-- Name: ir_actions_todo ir_actions_todo_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions_todo
    ADD CONSTRAINT ir_actions_todo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_actions_todo ir_actions_todo_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_actions_todo
    ADD CONSTRAINT ir_actions_todo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
