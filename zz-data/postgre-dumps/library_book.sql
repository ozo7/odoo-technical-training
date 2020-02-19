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
-- Name: library_book; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.library_book (
    id integer NOT NULL,
    name character varying,
    edition_date date,
    isbn character varying,
    publisher_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.library_book OWNER TO odoo;

--
-- Name: TABLE library_book; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.library_book IS 'Book';


--
-- Name: COLUMN library_book.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_book.name IS 'Title';


--
-- Name: COLUMN library_book.edition_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_book.edition_date IS 'Edition Date';


--
-- Name: COLUMN library_book.isbn; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_book.isbn IS 'ISBN';


--
-- Name: COLUMN library_book.publisher_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_book.publisher_id IS 'Publisher';


--
-- Name: COLUMN library_book.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_book.create_uid IS 'Created by';


--
-- Name: COLUMN library_book.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_book.create_date IS 'Created on';


--
-- Name: COLUMN library_book.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_book.write_uid IS 'Last Updated by';


--
-- Name: COLUMN library_book.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_book.write_date IS 'Last Updated on';


--
-- Name: library_book_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.library_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_book_id_seq OWNER TO odoo;

--
-- Name: library_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.library_book_id_seq OWNED BY public.library_book.id;


--
-- Name: library_book id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_book ALTER COLUMN id SET DEFAULT nextval('public.library_book_id_seq'::regclass);


--
-- Data for Name: library_book; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.library_book (id, name, edition_date, isbn, publisher_id, create_uid, create_date, write_uid, write_date) FROM stdin;
3	Northanger Abbey	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
5	Anna Karenina	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
6	Mrs. Dalloway	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
7	The Hours	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
8	Huckleberry Finn	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
9	Bleak House	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
10	Tom Sawyer	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
11	A Room of One's Own	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
12	Harry Potter	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
13	One Hundred Years of Solitude	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
14	Hamlet, Prince of Denmark	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
15	Lord of the Rings	\N	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:37:54.013027
4	War and Peace	1977-02-02	\N	\N	2	2020-02-19 09:37:54.013027	2	2020-02-19 09:52:43.642811
1	Game of Thrones	1996-08-01	0-553-10354-7	\N	1	2020-02-18 14:42:45.514476	1	2020-02-19 10:13:57.711526
\.


--
-- Name: library_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.library_book_id_seq', 15, true);


--
-- Name: library_book library_book_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_book
    ADD CONSTRAINT library_book_pkey PRIMARY KEY (id);


--
-- Name: library_book library_book_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_book
    ADD CONSTRAINT library_book_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: library_book library_book_publisher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_book
    ADD CONSTRAINT library_book_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES public.library_publisher(id) ON DELETE SET NULL;


--
-- Name: library_book library_book_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_book
    ADD CONSTRAINT library_book_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
