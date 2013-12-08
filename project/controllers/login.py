from project import app, users, sessions
from bottle import template, request, response, redirect
import cgi
import re

def index():
    return template('login/login', dict(stylesheet=['login.css']) )

def login():
    username = request.forms.get("username")
    password = request.forms.get("password")

    print "user submitted ", username, "pass ", password

    user_record = users.validate_login(username, password)
    if user_record:
        # username is stored in the user collection in the _id key
        session_id = sessions.start_session(user_record['_id'])

        if session_id is None:
            redirect("/internal_error")

        cookie = session_id

        # Warning, if you are running into a problem whereby the cookie being set here is
        # not getting set on the redirect, you are probably using the experimental version of bottle (.12).
        # revert to .11 to solve the problem.
        response.set_cookie("session", cookie)

        redirect("/")

    else:
        print 'must re-login!'
        return template("login",
                               dict(username=cgi.escape(username), password="",
                                    message="Invalid Login"))

def logout():
    cookie = request.get_cookie("session")

    sessions.end_session(cookie)
    response.set_cookie("session", "")

    redirect("/")
