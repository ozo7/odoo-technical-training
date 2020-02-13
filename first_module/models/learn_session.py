# -*- coding: utf-8 -*-
from odoo import models, fields, api


class LearningSession(models.Model):
    _name = 'vv.learning.session'
    _rec_name = 'id'  # specifies a column to be shown for the option to link to other records in the frontend
    _description = 'learn session, up to 3 words to learn for a single user, with start and end date'
    _log_access = False

    learner = fields.Many2one(
        'res.partner', string='learner',
        ondelete='set null',
    )
    started = fields.Date()
    finished = fields.Date()
    mot1 = fields.Many2one('vv.mot.de.langue')
    mot2 = fields.Many2one('vv.mot.de.langue')
    mot3 = fields.Many2one('vv.mot.de.langue')

    mot1c = fields.Integer()
    mot2c = fields.Integer()
    mot3c = fields.Integer()

    mot1ok = fields.Integer()
    mot2ok = fields.Integer()
    mot3ok = fields.Integer()
