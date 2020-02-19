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
-- Name: ir_act_server_res_partner_rel; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_act_server_res_partner_rel (
    ir_act_server_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.ir_act_server_res_partner_rel OWNER TO odoo;

--
-- Name: TABLE ir_act_server_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_act_server_res_partner_rel IS 'RELATION BETWEEN ir_act_server AND res_partner';


--
-- Data for Name: ir_act_server_res_partner_rel; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_act_server_res_partner_rel (ir_act_server_id, res_partner_id) FROM stdin;
\.


--
-- Name: ir_act_server_res_partner_rel ir_act_server_res_partner_rel_ir_act_server_id_res_partner__key; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server_res_partner_rel
    ADD CONSTRAINT ir_act_server_res_partner_rel_ir_act_server_id_res_partner__key UNIQUE (ir_act_server_id, res_partner_id);


--
-- Name: ir_act_server_res_partner_rel_ir_act_server_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_act_server_res_partner_rel_ir_act_server_id_idx ON public.ir_act_server_res_partner_rel USING btree (ir_act_server_id);


--
-- Name: ir_act_server_res_partner_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_act_server_res_partner_rel_res_partner_id_idx ON public.ir_act_server_res_partner_rel USING btree (res_partner_id);


--
-- Name: ir_act_server_res_partner_rel ir_act_server_res_partner_rel_ir_act_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server_res_partner_rel
    ADD CONSTRAINT ir_act_server_res_partner_rel_ir_act_server_id_fkey FOREIGN KEY (ir_act_server_id) REFERENCES public.ir_act_server(id) ON DELETE CASCADE;


--
-- Name: ir_act_server_res_partner_rel ir_act_server_res_partner_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server_res_partner_rel
    ADD CONSTRAINT ir_act_server_res_partner_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
