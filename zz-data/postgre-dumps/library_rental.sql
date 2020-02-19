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
-- Name: library_rental; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.library_rental (
    id integer NOT NULL,
    customer_id integer,
    book_id integer,
    rental_date date,
    return_date date,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.library_rental OWNER TO odoo;

--
-- Name: TABLE library_rental; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.library_rental IS 'Book rental';


--
-- Name: COLUMN library_rental.customer_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_rental.customer_id IS 'Customer';


--
-- Name: COLUMN library_rental.book_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_rental.book_id IS 'Book';


--
-- Name: COLUMN library_rental.rental_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_rental.rental_date IS 'Rental Date';


--
-- Name: COLUMN library_rental.return_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_rental.return_date IS 'Return Date';


--
-- Name: COLUMN library_rental.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_rental.create_uid IS 'Created by';


--
-- Name: COLUMN library_rental.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_rental.create_date IS 'Created on';


--
-- Name: COLUMN library_rental.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_rental.write_uid IS 'Last Updated by';


--
-- Name: COLUMN library_rental.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.library_rental.write_date IS 'Last Updated on';


--
-- Name: library_rental_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.library_rental_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_rental_id_seq OWNER TO odoo;

--
-- Name: library_rental_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.library_rental_id_seq OWNED BY public.library_rental.id;


--
-- Name: library_rental id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_rental ALTER COLUMN id SET DEFAULT nextval('public.library_rental_id_seq'::regclass);


--
-- Data for Name: library_rental; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.library_rental (id, customer_id, book_id, rental_date, return_date, create_uid, create_date, write_uid, write_date) FROM stdin;
\.


--
-- Name: library_rental_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.library_rental_id_seq', 1, false);


--
-- Name: library_rental library_rental_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_rental
    ADD CONSTRAINT library_rental_pkey PRIMARY KEY (id);


--
-- Name: library_rental library_rental_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_rental
    ADD CONSTRAINT library_rental_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.library_book(id) ON DELETE SET NULL;


--
-- Name: library_rental library_rental_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_rental
    ADD CONSTRAINT library_rental_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: library_rental library_rental_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_rental
    ADD CONSTRAINT library_rental_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.library_partner(id) ON DELETE SET NULL;


--
-- Name: library_rental library_rental_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_rental
    ADD CONSTRAINT library_rental_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
