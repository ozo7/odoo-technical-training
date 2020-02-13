# -*- coding: utf-8 -*-
{
    'name': "Olafs First Module",

    'summary': """
        first module of olaf following the developer cookbook
    """,

    'description': """
        long description blabla
    """,

    'author': "Olaf",
    'website': "not defined yet",

    # Categories can be used to filter modules in modules listing
    # Check https://github.com/odoo/odoo/blob/13.0/odoo/addons/base/data/ir_module_category_data.xml
    # for the full list
    'category': 'Uncategorized',
    'version': '0.1',

    # any module necessary for this one to work correctly
    'depends': [
        'base',
        'product',
        'stock',
        ],

    # always loaded
    'data': [
        'security/groups.xml',
        'security/ir.model.access.csv',
        'views/vocabulary.xml',
        'views/small.xml',
        'views/relations.xml',
        'views/wizard.xml',
        'views/formView.xml',
        #'views/createSessionForm.xml',
    ],
    # only loaded in demonstration mode
    'demo': [
        'demo/demo.xml',
    ],
    'application': True,
}
