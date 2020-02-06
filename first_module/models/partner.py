# -*- coding: utf-8 -*-
from odoo import fields, models

class Partner(models.Model):
    _inherit = 'res.partner'

    #mots_ids = fields.Many2many('mot.de.langue', string="foreign language word in learning scope", readonly=True)
    