-*- coding: utf-8 -*-
from odoo import http


class Olafmodule(http.Controller):
    @http.route('/olafmodule/olafmodule/', auth='public')
    def index(self, **kw):
        return "Hello, world"

    @http.route('/olafmodule/olafmodule/objects/', auth='public')
    def list(self, **kw):
        return http.request.render('olafmodule.listing', {
            'root': '/olafmodule/olafmodule',
            'objects': http.request.env['olafmodule.olafmodule'].search([]),
        })

    @http.route('/olafmodule/olafmodule/objects/<model("olafmodule.olafmodule"):obj>/', auth='public')
    def object(self, obj, **kw):
        return http.request.render('olafmodule.object', {
            'object': obj
        })
