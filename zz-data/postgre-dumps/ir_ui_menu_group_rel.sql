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
-- Name: ir_ui_menu_group_rel; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_ui_menu_group_rel (
    menu_id integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE public.ir_ui_menu_group_rel OWNER TO odoo;

--
-- Name: TABLE ir_ui_menu_group_rel; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_ui_menu_group_rel IS 'RELATION BETWEEN ir_ui_menu AND res_groups';


--
-- Data for Name: ir_ui_menu_group_rel; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_ui_menu_group_rel (menu_id, gid) FROM stdin;
1	1
3	3
4	2
5	3
8	6
9	6
10	6
12	6
4	3
30	6
34	6
35	6
36	6
37	6
53	6
54	6
55	6
57	6
62	6
65	6
66	6
67	6
83	3
88	6
89	6
90	6
91	6
92	6
99	6
100	6
101	6
102	1
106	6
110	1
111	6
112	6
113	6
114	1
114	7
116	3
127	6
130	3
134	2
116	13
135	11
135	13
136	13
137	13
138	13
139	3
140	13
143	6
145	13
147	14
152	13
154	14
168	32
168	33
168	29
175	29
180	32
182	29
183	33
184	33
185	5
186	33
187	22
187	23
196	6
197	32
198	32
199	32
200	32
201	32
202	32
203	32
205	32
206	29
207	33
208	33
209	33
211	33
219	22
220	22
221	23
222	22
224	35
225	6
226	3
227	32
228	33
229	6
230	6
232	6
233	6
234	6
235	38
235	37
238	38
240	6
246	27
249	3
251	38
252	6
253	43
253	42
255	43
256	43
258	6
259	21
261	27
263	21
266	43
268	40
269	44
272	43
272	42
275	46
277	40
278	47
282	6
284	27
285	26
287	3
288	47
300	51
300	50
300	1
302	50
306	51
306	50
307	51
309	6
310	6
311	50
312	51
313	6
314	51
315	3
317	52
318	52
320	1
323	53
325	32
326	32
327	55
330	55
331	6
332	3
334	32
334	33
334	29
336	6
337	6
338	36
171	33
181	32
178	32
339	33
346	32
349	32
350	32
351	32
353	22
355	32
356	6
357	33
358	33
360	33
361	33
362	33
363	33
366	33
367	32
369	1
376	3
377	3
378	3
379	6
381	6
382	6
\.


--
-- Name: ir_ui_menu_group_rel ir_ui_menu_group_rel_menu_id_gid_key; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_menu_group_rel
    ADD CONSTRAINT ir_ui_menu_group_rel_menu_id_gid_key UNIQUE (menu_id, gid);


--
-- Name: ir_ui_menu_group_rel_gid_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_ui_menu_group_rel_gid_idx ON public.ir_ui_menu_group_rel USING btree (gid);


--
-- Name: ir_ui_menu_group_rel_menu_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_ui_menu_group_rel_menu_id_idx ON public.ir_ui_menu_group_rel USING btree (menu_id);


--
-- Name: ir_ui_menu_group_rel ir_ui_menu_group_rel_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_menu_group_rel
    ADD CONSTRAINT ir_ui_menu_group_rel_gid_fkey FOREIGN KEY (gid) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: ir_ui_menu_group_rel ir_ui_menu_group_rel_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_menu_group_rel
    ADD CONSTRAINT ir_ui_menu_group_rel_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.ir_ui_menu(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
