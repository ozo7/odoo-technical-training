# -*- coding: utf-8 -*-
from odoo import http


class FirstModule(http.Controller):
    @http.route('/test/test/', auth='public')
    def index(self, **kw):
        mots = http.request.env['vv.mot.de.langue']
        return http.request.render('first_module.index', {
            'mots': mots.search([])
        })

#     @http.route('/first_module/first_module/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('first_module.listing', {
#             'root': '/first_module/first_module',
#             'objects': http.request.env['first_module.first_module'].search([]),
#         })

#     @http.route('/first_module/first_module/objects/<model("first_module.first_module"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('first_module.object', {
#             'object': obj
#         })
