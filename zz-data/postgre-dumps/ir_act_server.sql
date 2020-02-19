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
-- Name: ir_act_server; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_act_server (
    usage character varying NOT NULL,
    state character varying NOT NULL,
    sequence integer,
    model_id integer NOT NULL,
    model_name character varying,
    code text,
    crud_model_id integer,
    link_field_id integer,
    template_id integer,
    activity_type_id integer,
    activity_summary character varying,
    activity_note text,
    activity_date_deadline_range integer,
    activity_date_deadline_range_type character varying,
    activity_user_type character varying NOT NULL,
    activity_user_id integer,
    activity_user_field_name character varying,
    sms_template_id integer,
    sms_mass_keep_log boolean,
    website_path character varying,
    website_published boolean
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_server OWNER TO odoo;

--
-- Name: COLUMN ir_act_server.usage; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.usage IS 'Usage';


--
-- Name: COLUMN ir_act_server.state; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.state IS 'Action To Do';


--
-- Name: COLUMN ir_act_server.sequence; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.sequence IS 'Sequence';


--
-- Name: COLUMN ir_act_server.model_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.model_id IS 'Model';


--
-- Name: COLUMN ir_act_server.model_name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.model_name IS 'Model Name';


--
-- Name: COLUMN ir_act_server.code; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.code IS 'Python Code';


--
-- Name: COLUMN ir_act_server.crud_model_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.crud_model_id IS 'Create/Write Target Model';


--
-- Name: COLUMN ir_act_server.link_field_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.link_field_id IS 'Link using field';


--
-- Name: COLUMN ir_act_server.template_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.template_id IS 'Email Template';


--
-- Name: COLUMN ir_act_server.activity_type_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.activity_type_id IS 'Activity';


--
-- Name: COLUMN ir_act_server.activity_summary; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.activity_summary IS 'Summary';


--
-- Name: COLUMN ir_act_server.activity_note; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.activity_note IS 'Note';


--
-- Name: COLUMN ir_act_server.activity_date_deadline_range; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.activity_date_deadline_range IS 'Due Date In';


--
-- Name: COLUMN ir_act_server.activity_date_deadline_range_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.activity_date_deadline_range_type IS 'Due type';


--
-- Name: COLUMN ir_act_server.activity_user_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.activity_user_type IS 'Activity User Type';


--
-- Name: COLUMN ir_act_server.activity_user_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.activity_user_id IS 'Responsible';


--
-- Name: COLUMN ir_act_server.activity_user_field_name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.activity_user_field_name IS 'User field name';


--
-- Name: COLUMN ir_act_server.sms_template_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.sms_template_id IS 'SMS Template';


--
-- Name: COLUMN ir_act_server.sms_mass_keep_log; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.sms_mass_keep_log IS 'Log a note';


--
-- Name: COLUMN ir_act_server.website_path; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.website_path IS 'Website Path';


--
-- Name: COLUMN ir_act_server.website_published; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_server.website_published IS 'Available on the Website';


--
-- Name: ir_act_server id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Data for Name: ir_act_server; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_act_server (id, name, type, help, binding_model_id, binding_type, binding_view_types, create_uid, create_date, write_uid, write_date, usage, state, sequence, model_id, model_name, code, crud_model_id, link_field_id, template_id, activity_type_id, activity_summary, activity_note, activity_date_deadline_range, activity_date_deadline_range_type, activity_user_type, activity_user_id, activity_user_field_name, sms_template_id, sms_mass_keep_log, website_path, website_published) FROM stdin;
32	Base: Auto-vacuum internal data	ir.actions.server	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	ir_cron	code	5	36	ir.autovacuum	model.power_on()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
51	Install Modules	ir.actions.server	\N	62	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	ir_actions_server	code	5	62	ir.module.module	records.button_immediate_install()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
52	Failed to install demo data for some modules, demo disabled	ir.actions.server	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	ir_actions_server	code	5	67	ir.demo_failure.wizard	\nfailures = env['ir.demo_failure'].search([\n    ('wizard_id', '=', False),\n])\nrecord = model.create({\n    'failure_ids': [(6, 0, failures.ids)],\n})\naction = {\n    'type': 'ir.actions.act_window',\n    'res_id': record.id,\n    'res_model': 'ir.demo_failure.wizard',\n    'target': 'new',\n    'views': [(env.ref('base.demo_failures_dialog').id, 'form')],\n}\n        	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
176	Crm: My Pipeline	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707	ir_actions_server	code	5	186	crm.team	action = model.action_your_pipeline()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
173	Mark as lost	ir.actions.server	\N	205	action	list	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707	ir_actions_server	code	5	205	crm.lead	\nif record:\n    action_values = env.ref('crm.crm_lead_lost_action').read()[0]\n    action_values.update({'context': env.context})\n    action = action_values\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
255	Share	ir.actions.server	\N	433	action	form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_actions_server	code	5	433	account.move	action = records.action_share()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
259	Register Payment	ir.actions.server	\N	433	action	list	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_actions_server	code	5	424	account.payment	\n                action = model.action_register_payment()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
260	Post Payments	ir.actions.server	\N	424	action	list	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_actions_server	code	5	424	account.payment	\n                records.post()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
10	Config: Run Remaining Action Todo	ir.actions.server	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	ir_actions_server	code	5	82	res.config	\nconfig = model.next() or {}\nif config.get('type') not in ('ir.actions.act_window_close',):\n    action = config\n	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
104	Open IAP Account	ir.actions.server	\N	84	action	list,form	1	2020-01-31 09:41:05.538844	1	2020-01-31 09:41:05.538844	ir_actions_server	code	5	84	res.config.settings	\nif records:\n    action = records._redirect_to_iap_account()\n        	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
120	Publisher: Update Notification	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465	ir_cron	code	5	167	publisher_warranty.contract	model.update_notification(None)	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
121	Mail: Notify channel moderators	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465	ir_cron	code	5	152	mail.message	model._notify_moderators	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
122	Notification: Delete Notifications older than 6 Month	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465	ir_cron	code	5	151	mail.notification	model._gc_notifications(max_age_days=180)	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
119	Mail: Email Queue Manager	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465	ir_cron	code	5	156	mail.mail	model.process_email_queue()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
129	Users: Notify About Unregistered Users	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:12.804175	1	2020-01-31 09:41:12.804175	ir_cron	code	5	90	res.users	model.send_unregistered_user_reminder()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
130	Calendar: Event Reminder	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435	ir_cron	code	5	176	calendar.alarm_manager	model.get_next_mail()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
136	Mail: Fetchmail Service	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:15.076282	1	2020-01-31 09:41:15.076282	ir_cron	code	5	180	fetchmail.server	model._fetch_mails()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
139	Partner Autocomplete : Sync with remote DB	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:16.148376	1	2020-01-31 09:41:16.148376	ir_cron	code	5	182	res.partner.autocomplete.sync	model.start_sync()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
145	Snailmail: process letters queue	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:17.860225	1	2020-01-31 09:41:17.860225	ir_cron	code	5	187	snailmail.letter	model._snailmail_cron()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
152	SMS: SMS Queue Manager	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211	ir_cron	code	5	196	sms.sms	model._process_queue()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
162	Digest Emails	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505	ir_cron	code	5	203	digest.digest	model._cron_send_digest_email()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
164	Predictive Lead Scoring: Rebuild Frequencies table	ir.actions.server	\N	\N	action	list,form	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707	ir_cron	code	5	205	crm.lead	model._cron_update_automated_probabilities()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
289	Switch into refund/credit note	ir.actions.server	\N	433	action	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_actions_server	code	5	433	account.move	\nif records:\n    action = records.action_switch_invoice_into_refund_credit_note()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
290	Data Inalterability Check	ir.actions.server	\N	\N	action	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_actions_server	code	5	87	res.company	\n                action = env.company._action_check_hash_integrity()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
268	Create Accrual Entry	ir.actions.server	\N	434	action	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_actions_server	code	5	434	account.move.line	action = records.action_accrual_entry()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
296	Duplicate	ir.actions.server	\N	414	action	list	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_actions_server	code	5	414	account.account	\n                action = model.action_duplicate_accounts()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
298	Add a Bank Account	ir.actions.server	\N	\N	action	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_actions_server	code	5	87	res.company	\naction = model.setting_init_bank_account_action()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
341	Account; Post draft entries with auto_post set to True up to today	ir.actions.server	\N	\N	action	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	ir_cron	code	5	433	account.move	model._autopost_draft_entries()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
348	Invoice OCR: Update All Status	ir.actions.server	\N	\N	action	list,form	1	2020-02-10 14:36:21.464776	1	2020-02-10 14:36:21.464776	ir_cron	code	5	433	account.move	model.check_all_status()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
351	Account: Journal online sync	ir.actions.server	\N	\N	action	list,form	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103	ir_cron	code	5	418	account.journal	model.cron_fetch_online_transactions()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
352	Currency: rate update	ir.actions.server	\N	\N	action	list,form	1	2020-02-10 14:36:24.270357	1	2020-02-10 14:36:24.270357	ir_cron	code	5	87	res.company	model.run_update_currency()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
353	Post process payment transactions	ir.actions.server	\N	\N	action	list,form	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665	ir_cron	code	5	475	payment.transaction	model._cron_post_process_after_done()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
361	Share	ir.actions.server	\N	479	action	form	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491	ir_actions_server	code	5	479	purchase.order	action = records.action_share()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
375	Print Checks	ir.actions.server	\N	424	action	list	1	2020-02-10 14:36:39.355391	1	2020-02-10 14:36:39.355391	ir_actions_server	code	5	424	account.payment	\nif records:\n    action = records.print_checks()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
425	Set counted quantities to 0	ir.actions.server	\N	491	action	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	ir_actions_server	code	5	491	stock.inventory.line	\nif records:\n    action = records.action_reset_product_qty()\n        	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
426	Recompute On Hand Quantity	ir.actions.server	\N	491	action	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	ir_actions_server	code	5	491	stock.inventory.line	\nif records:\n    action = records.action_refresh_quantity()\n        	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
427	Inventory	ir.actions.server	\N	\N	action	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	ir_actions_server	code	5	499	stock.quant	\n            action = model.with_context(\n                search_default_internal_loc=1,\n                search_default_productgroup=1,\n                search_default_locationgroup=1,\n            ).action_view_quants()\n        	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
445	Procurement: run scheduler	ir.actions.server	\N	\N	action	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	ir_cron	code	5	502	procurement.group	\nmodel.run_scheduler(True)\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
473	HR Contract: update state	ir.actions.server	\N	\N	action	list,form	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135	ir_cron	code	5	548	hr.contract	model.update_state()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
495	Create Report	ir.actions.server	\N	550	action	list	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336	ir_actions_server	code	5	550	hr.expense	\nif records:\n    action = records.action_submit_expenses()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
500	Account automatic transfers : Perform transfers	ir.actions.server	\N	\N	action	list,form	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082	ir_cron	code	5	572	account.transfer.model	model.action_cron_auto_transfer()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
503	Journal Items by tax	ir.actions.server	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	ir_actions_server	code	5	579	account.financial.html.report.line	\n                action = env['account.financial.html.report.line'].browse(env.context['active_id']).report_move_lines_action()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
522	Create Deferred Entry	ir.actions.server	\N	434	action	list,form	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436	ir_actions_server	code	5	434	account.move.line	\nif records:\n    action = records.turn_as_deferred()\n        	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
523	Create Asset	ir.actions.server	\N	434	action	list,form	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436	ir_actions_server	code	5	434	account.move.line	\nif records:\n    action = records.turn_as_asset()\n        	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
532	Account Report Followup; Execute followup	ir.actions.server	\N	\N	action	list,form	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604	ir_cron	code	5	78	res.partner	model._cron_execute_followup()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
534	Process follow-ups	ir.actions.server	\N	78	action	list,form	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604	ir_actions_server	code	5	78	res.partner	\n                if records:\n                    action = records.execute_followup()\n            	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
540	Website Visitor : Archive old visitors	ir.actions.server	\N	\N	action	list,form	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193	ir_cron	code	5	611	website.visitor	model._cron_archive_visitors()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
546	Website: Dashboard	ir.actions.server	\N	\N	action	list,form	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193	ir_actions_server	code	5	605	website	action = model.action_dashboard_redirect()	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
547	Website: Dashboard	ir.actions.server	\N	\N	action	list,form	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193	ir_actions_server	code	5	605	website	action = model.env.ref('website.backend_dashboard').read()[0]	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
555	Config: Choose Your Theme	ir.actions.server	\N	\N	action	list,form	1	2020-02-14 11:31:14.678612	1	2020-02-14 11:31:14.678612	ir_actions_server	code	5	62	ir.module.module	\nmodel.update_list()\naction = {\n    'type': 'ir.actions.act_url',\n    'url': '/web?reload#action=website_theme_install.theme_install_kanban_action', # the ?reload option is there to fool the webclient into thinking it is a different location and so to force a reload\n    'target': 'self',\n}\n        	\N	\N	\N	\N	\N	\N	\N	days	specific	\N	user_id	\N	t	\N	\N
\.


--
-- Name: ir_act_server ir_act_server_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_pkey PRIMARY KEY (id);


--
-- Name: ir_act_server ir_act_server_activity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_activity_type_id_fkey FOREIGN KEY (activity_type_id) REFERENCES public.mail_activity_type(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_activity_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_activity_user_id_fkey FOREIGN KEY (activity_user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_server ir_act_server_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_crud_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_crud_model_id_fkey FOREIGN KEY (crud_model_id) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_link_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_link_field_id_fkey FOREIGN KEY (link_field_id) REFERENCES public.ir_model_fields(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_server ir_act_server_sms_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_sms_template_id_fkey FOREIGN KEY (sms_template_id) REFERENCES public.sms_template(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_template_id_fkey FOREIGN KEY (template_id) REFERENCES public.mail_template(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
