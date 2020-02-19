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
-- Name: library_book_library_partner_rel; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.library_book_library_partner_rel (
    library_book_id integer NOT NULL,
    library_partner_id integer NOT NULL
);


ALTER TABLE public.library_book_library_partner_rel OWNER TO odoo;

--
-- Name: TABLE library_book_library_partner_rel; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.library_book_library_partner_rel IS 'RELATION BETWEEN library_book AND library_partner';


--
-- Data for Name: library_book_library_partner_rel; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.library_book_library_partner_rel (library_book_id, library_partner_id) FROM stdin;
4	1
4	3
\.


--
-- Name: library_book_library_partner_rel library_book_library_partner__library_book_id_library_partn_key; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_book_library_partner_rel
    ADD CONSTRAINT library_book_library_partner__library_book_id_library_partn_key UNIQUE (library_book_id, library_partner_id);


--
-- Name: library_book_library_partner_rel_library_book_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX library_book_library_partner_rel_library_book_id_idx ON public.library_book_library_partner_rel USING btree (library_book_id);


--
-- Name: library_book_library_partner_rel_library_partner_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX library_book_library_partner_rel_library_partner_id_idx ON public.library_book_library_partner_rel USING btree (library_partner_id);


--
-- Name: library_book_library_partner_rel library_book_library_partner_rel_library_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_book_library_partner_rel
    ADD CONSTRAINT library_book_library_partner_rel_library_book_id_fkey FOREIGN KEY (library_book_id) REFERENCES public.library_book(id) ON DELETE CASCADE;


--
-- Name: library_book_library_partner_rel library_book_library_partner_rel_library_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.library_book_library_partner_rel
    ADD CONSTRAINT library_book_library_partner_rel_library_partner_id_fkey FOREIGN KEY (library_partner_id) REFERENCES public.library_partner(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
