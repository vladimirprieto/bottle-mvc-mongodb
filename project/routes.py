from project import app
from project.controllers import *

app.route('/', 'GET', welcome.index)
app.route('/signin', 'GET', welcome.signin)
app.route('/signin', 'POST', welcome.signup)
app.route('/login', 'GET', login.index)
app.route('/login', 'POST', login.login)
app.route('/logout', 'GET', login.logout)

# static files
app.route('/:file#(favicon.ico|humans.txt)#', 'GET', static.favicon)
app.route('/:path#(images|css|js|fonts)\/.+#', 'GET', static.server_static)
