<h1>the Welcome Page</h1>

%if username is None:

<ul>
    <p>
        <a href="/login">Click here to Login!</a>
    </p>
    <p>
        <a href="/signin">Click here to Signin!</a>
    </p>
</ul>

%else:

<p>Hi! {{username}}</p>
<p>want to <a href="/logout">logout</a>?</p>

%end

%rebase layout/layout message=setdefault('message', ''), title=setdefault('title', 'Bottle MVC Skeleton')
