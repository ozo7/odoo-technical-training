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
-- Name: library_publisher; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.library_publisher (
    id integer NOT NULL,
    name character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.library_publisher OWNER TO odoo;

--
-- Name: TABLE library_publisher; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.library_publisher IS 'Publisher';


--
-- Name: COLUMN library_publisher.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_publisher.name IS 'Name';


--
-- Name: COLUMN library_publisher.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_publisher.create_uid IS 'Created by';


--
-- Name: COLUMN library_publisher.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_publisher.create_date IS 'Created on';


--
-- Name: COLUMN library_publisher.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_publisher.write_uid IS 'Last Updated by';


--
-- Name: COLUMN library_publisher.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_publisher.write_date IS 'Last Updated on';


--
-- Name: library_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.library_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_publisher_id_seq OWNER TO odoo;

--
-- Name: library_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.library_publisher_id_seq OWNED BY public.library_publisher.id;


--
-- Name: library_publisher id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_publisher ALTER COLUMN id SET DEFAULT nextval('public.library_publisher_id_seq'::regclass);


--
-- Data for Name: library_publisher; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.library_publisher (id, name, create_uid, create_date, write_uid, write_date) FROM stdin;
1	Bantam Spectra	1	2020-02-18 14:42:45.514476	1	2020-02-19 10:13:57.711526
\.


--
-- Name: library_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.library_publisher_id_seq', 1, true);


--
-- Name: library_publisher library_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_publisher
    ADD CONSTRAINT library_publisher_pkey PRIMARY KEY (id);


--
-- Name: library_publisher library_publisher_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_publisher
    ADD CONSTRAINT library_publisher_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: library_publisher library_publisher_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_publisher
    ADD CONSTRAINT library_publisher_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
