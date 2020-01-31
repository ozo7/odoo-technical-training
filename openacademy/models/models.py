# -*- coding: utf-8 -*-

from odoo import models, fields, api

# class openacademy(models.Model):
#     _name = 'openacademy.openacademy'
#     _description = 'openacademy.openacademy'
#
#     name = fields.Char()
#     description = fields.Text()

class Course(models.Model):
    _name = 'openacademy.course'
    _description = "OpenAcademy Courses"

    name = fields.Char(string="Title", required=True)
    description = fields.Text()
    responsible_id = fields.Many2one('res.users', ondelete='set null', string="Responsible", index=True)
    # one2many means that each session is uniquely linked to a course
    # TODO: I should try to make it many2many since session could just be a timeframe relating to many courses like the summer vacations
    session_ids = fields.One2many('openacademy.session', 'course_id', string="Sessions")


class Session(models.Model):
    _name = 'openacademy.session'
    _description = "OpenAcademy Sessions"

    name = fields.Char(required=True)
    start_date = fields.Date(default=fields.Date.today)
    duration = fields.Float(digits=(6, 2), help="Duration in days")
    active = fields.Boolean(default=True)
    seats = fields.Integer(string="Number of seats")
    # domain declared as list is server-side evaluated
    # domain declared as a string is client-side evaluated
    instructor_id = fields.Many2one('res.partner', string="Instructor", \
    domain=['|', ('instructor', '=', True), ('category_id.name', 'ilike', "Teacher")])
    # the above is relevant for the selection of an instructor from the form view of the session instance
    # OK -- why does it not offer the Teachers to be selected? => server restart resolved this problem
    course_id = fields.Many2one('openacademy.course', ondelete='cascade', string="Course", required=True)
    attendee_ids = fields.Many2many('res.partner', string="Attendees")

    taken_seats = fields.Float(string="Taken seats", compute='_taken_seats')

    @api.depends('seats', 'attendee_ids')
    def _taken_seats(self):
        for r in self:
            if not r.seats:
                r.taken_seats = 0.0
            else:
                r.taken_seats = 100.0 * len(r.attendee_ids) / r.seats

