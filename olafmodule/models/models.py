# -*- coding: utf-8 -*-

from unidecode import unidecode
from odoo import models, fields, api


class olafmodule(models.Model):
    _name = 'olafmodule.olafmodule'
    _description = 'olafmodule.olafmodule'

    name = fields.Char()
    value = fields.Integer()
    value2 = fields.Float(compute="_value_pc", store=True)
    description = fields.Text()
    start_datetime = fields.Datetime('Start time', default=lambda self: fields.Datetime.now())
    
    @api.model
    def create(self, values):
        if 'name' in values:
            values['name'] = unidecode(values['name'])            
        return super(olafmodule, self).create(values)

#    @api.multi <= legacy decoriation, turned standard, can be skipped
    def write(self, values):
        if 'name' in values:
            values['name'] = unidecode(values['name'])
            values['name'] = "overwrittenbyolaf3"
        return super(olafmodule, self).write(values)
    
    @api.depends('value')
    def _value_pc(self):
        for record in self:
            record.value2 = float(record.value) / 100
