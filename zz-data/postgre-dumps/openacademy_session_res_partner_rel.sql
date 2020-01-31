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
-- Name: openacademy_session_res_partner_rel; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.openacademy_session_res_partner_rel (
    openacademy_session_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.openacademy_session_res_partner_rel OWNER TO odoo;

--
-- Name: TABLE openacademy_session_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.openacademy_session_res_partner_rel IS 'RELATION BETWEEN openacademy_session AND res_partner';


--
-- Data for Name: openacademy_session_res_partner_rel; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.openacademy_session_res_partner_rel (openacademy_session_id, res_partner_id) FROM stdin;
\.


--
-- Name: openacademy_session_res_partner_rel openacademy_session_res_partn_openacademy_session_id_res_pa_key; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session_res_partner_rel
    ADD CONSTRAINT openacademy_session_res_partn_openacademy_session_id_res_pa_key UNIQUE (openacademy_session_id, res_partner_id);


--
-- Name: openacademy_session_res_partner_rel_openacademy_session_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX openacademy_session_res_partner_rel_openacademy_session_id_idx ON public.openacademy_session_res_partner_rel USING btree (openacademy_session_id);


--
-- Name: openacademy_session_res_partner_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX openacademy_session_res_partner_rel_res_partner_id_idx ON public.openacademy_session_res_partner_rel USING btree (res_partner_id);


--
-- Name: openacademy_session_res_partner_rel openacademy_session_res_partner_rel_openacademy_session_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session_res_partner_rel
    ADD CONSTRAINT openacademy_session_res_partner_rel_openacademy_session_id_fkey FOREIGN KEY (openacademy_session_id) REFERENCES public.openacademy_session(id) ON DELETE CASCADE;


--
-- Name: openacademy_session_res_partner_rel openacademy_session_res_partner_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session_res_partner_rel
    ADD CONSTRAINT openacademy_session_res_partner_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

