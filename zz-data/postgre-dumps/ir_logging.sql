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
-- Name: ir_logging; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_logging (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    name character varying NOT NULL,
    type character varying NOT NULL,
    dbname character varying,
    level character varying,
    message text NOT NULL,
    path character varying NOT NULL,
    func character varying NOT NULL,
    line character varying NOT NULL
);


ALTER TABLE public.ir_logging OWNER TO odoo;

--
-- Name: TABLE ir_logging; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_logging IS 'Logging';


--
-- Name: COLUMN ir_logging.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.create_uid IS 'Created by';


--
-- Name: COLUMN ir_logging.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.create_date IS 'Created on';


--
-- Name: COLUMN ir_logging.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_logging.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_logging.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.name IS 'Name';


--
-- Name: COLUMN ir_logging.type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.type IS 'Type';


--
-- Name: COLUMN ir_logging.dbname; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.dbname IS 'Database Name';


--
-- Name: COLUMN ir_logging.level; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.level IS 'Level';


--
-- Name: COLUMN ir_logging.message; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.message IS 'Message';


--
-- Name: COLUMN ir_logging.path; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.path IS 'Path';


--
-- Name: COLUMN ir_logging.func; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.func IS 'Function';


--
-- Name: COLUMN ir_logging.line; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_logging.line IS 'Line';


--
-- Name: ir_logging_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_logging_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_logging_id_seq OWNER TO odoo;

--
-- Name: ir_logging_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_logging_id_seq OWNED BY public.ir_logging.id;


--
-- Name: ir_logging id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_logging ALTER COLUMN id SET DEFAULT nextval('public.ir_logging_id_seq'::regclass);


--
-- Data for Name: ir_logging; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_logging (id, create_uid, create_date, write_uid, write_date, name, type, dbname, level, message, path, func, line) FROM stdin;
\.


--
-- Name: ir_logging_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_logging_id_seq', 1, false);


--
-- Name: ir_logging ir_logging_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_logging
    ADD CONSTRAINT ir_logging_pkey PRIMARY KEY (id);


--
-- Name: ir_logging_dbname_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_logging_dbname_index ON public.ir_logging USING btree (dbname);


--
-- Name: ir_logging_level_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_logging_level_index ON public.ir_logging USING btree (level);


--
-- Name: ir_logging_type_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_logging_type_index ON public.ir_logging USING btree (type);


--
-- PostgreSQL database dump complete
--
