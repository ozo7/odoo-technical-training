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
-- Name: library_partner; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.library_partner (
    id integer NOT NULL,
    name character varying,
    email character varying,
    address text,
    partner_type character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.library_partner OWNER TO odoo;

--
-- Name: TABLE library_partner; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.library_partner IS 'Partner';


--
-- Name: COLUMN library_partner.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_partner.name IS 'Name';


--
-- Name: COLUMN library_partner.email; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_partner.email IS 'Email';


--
-- Name: COLUMN library_partner.address; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_partner.address IS 'Address';


--
-- Name: COLUMN library_partner.partner_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_partner.partner_type IS 'Partner Type';


--
-- Name: COLUMN library_partner.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_partner.create_uid IS 'Created by';


--
-- Name: COLUMN library_partner.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_partner.create_date IS 'Created on';


--
-- Name: COLUMN library_partner.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_partner.write_uid IS 'Last Updated by';


--
-- Name: COLUMN library_partner.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_partner.write_date IS 'Last Updated on';


--
-- Name: library_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.library_partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_partner_id_seq OWNER TO odoo;

--
-- Name: library_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.library_partner_id_seq OWNED BY public.library_partner.id;


--
-- Name: library_partner id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_partner ALTER COLUMN id SET DEFAULT nextval('public.library_partner_id_seq'::regclass);


--
-- Data for Name: library_partner; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.library_partner (id, name, email, address, partner_type, create_uid, create_date, write_uid, write_date) FROM stdin;
1	Daenerys Targaryan	daenerys@targaryan.org	Top of the Pyramid, Mereen	customer	1	2020-02-18 14:42:45.514476	1	2020-02-19 10:13:57.711526
2	Tyrion Lannister	tyrion@lannister.org	Red keep, King's Landing	customer	1	2020-02-18 14:42:45.514476	1	2020-02-19 10:13:57.711526
3	George R.R. Martin	george@got.org	Bayonne, New Jersey, United States	author	1	2020-02-18 14:42:45.514476	1	2020-02-19 10:13:57.711526
\.


--
-- Name: library_partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.library_partner_id_seq', 3, true);


--
-- Name: library_partner library_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_partner
    ADD CONSTRAINT library_partner_pkey PRIMARY KEY (id);


--
-- Name: library_partner library_partner_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_partner
    ADD CONSTRAINT library_partner_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: library_partner library_partner_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_partner
    ADD CONSTRAINT library_partner_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
