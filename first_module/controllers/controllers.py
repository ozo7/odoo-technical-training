# -*- coding: utf-8 -*-
from odoo import http


class SomethingElseWhatever(http.Controller):
    @http.route('/test/test/', auth='public')
    def indexandsomename(self, **kw):
        mots = http.request.env['vv.mot.de.langue']
        return http.request.render('first_module.indexandsomename', {
            'mots': mots.search([])
        })

    @http.route('/test/urluse/<en>/', auth='public')
    def mustbedifferent(self, en):
        return '<h1>{}</h1>'.format(en)
    
    @http.route('/test/idinteger/<int:id>/', auth='public')
    def doesnotmatter(self, id):
        return '<h1>{} ({})</h1>'.format(id, type(id).__name__)
    
    @http.route('/test/id/<model("vv.mot.de.langue"):mot>/', auth='public')
    def singleMot(self, mot):
        return http.request.render('first_module.singleMot', {
            'mot': mot
        })

    @http.route('/test/mots/', auth='public')
    def allthemots(self, **kw):
        mots = http.request.env['vv.mot.de.langue']
        return http.request.render('first_module.allthemots', {
            'mots': mots.search([])
        })
        

    
        

class SomethingWithWebsite(http.Controller):
    @http.route('/test/website/', auth='public', website=True)
    def myTemplateID(self, **kw):
        mots = http.request.env['vv.mot.de.langue']
        return http.request.render('first_module.myTemplateID', {
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
