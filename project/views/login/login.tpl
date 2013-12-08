<form action="/login" method="post">
    <dl>
        <dd>Username: <input type="input" name="username"/></dd>
        <dd>Password: <input type="password" name="password" value=""/></dd>
        <dd><input type="submit" value="Login"/></dd>
    </dl>
</form>
%rebase layout/layout message=setdefault('message', ''), title=setdefault('title', 'Bottle MVC Skeleton - login')
