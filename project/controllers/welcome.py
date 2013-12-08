from project import app, users, sessions
from bottle import template, request, response, redirect
import cgi
import re
from project.helpers.welcome import validate_signup

def index():
    cookie = request.get_cookie("session")

    username = sessions.get_username(cookie)

    return template('welcome/index', dict(username=username, stylesheet=['jumbotron-narrow.css'], title='Bottle MVC Skeleton') )

def signin():
    return template('welcome/signin',
                            dict(
                                username="", 
                                password="",
                                password_error="",
                                email="", 
                                username_error="", 
                                email_error="",
                                verify_error ="",
                                stylesheet=['login.css']
                                )
                            )

def signup():
    email = request.forms.get("email")
    username = request.forms.get("username")
    password = request.forms.get("password")
    verify = request.forms.get("verify")

    # set these up in case we have an error case
    errors = {'username': cgi.escape(username), 'email': cgi.escape(email)}
    if validate_signup(username, password, verify, email, errors):

        if not users.add_user(username, password, email):
            # this was a duplicate
            errors['username_error'] = "Username already in use. Please choose another"
            return template("welcome/signin", errors)

        session_id = sessions.start_session(username)
        print session_id
        response.set_cookie("session", session_id)
        redirect("/")

    else:

        print "user did not validate"
        return template("welcome/signin", errors.items() + dict(stylesheet=['login.css']).items() )

    return template("welcome/signup")

