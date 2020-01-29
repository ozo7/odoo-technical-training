# -*- coding: utf-8 -*-

from odoo import models, fields, api

class openacademy(models.Model):
    _name = 'openacademy.openacademy'
    _description = 'openacademy.openacademy'
    
    name = fields.Char()
    description = fields.Text()

class Course(models.Model):
    _name = 'openacademy.course'
    _description = "OpenAcademy Courses"

    name = fields.Char(string="Title", required=True)
    description = fields.Text()