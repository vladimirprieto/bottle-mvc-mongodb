# -*- coding: utf-8 -*-
from bottle import static_file

def favicon(file):
    return static_file(file, root='project/static/misc')

def server_static(path):
    return static_file(path, root='project/static')
