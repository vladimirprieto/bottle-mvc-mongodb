# -*- coding: utf-8 -*-
__version__ = '0.1'

import pymongo
from bottle import Bottle, TEMPLATE_PATH
import cgi
import re
from project.scripts import sessionDAO, userDAO

connection_string = "mongodb://localhost"
connection = pymongo.MongoClient(connection_string)
database = connection.combustible

users = userDAO.UserDAO(database)
sessions = sessionDAO.SessionDAO(database)

app = Bottle()

TEMPLATE_PATH.append("./project/views/")
TEMPLATE_PATH.remove("./views/")

import routes


