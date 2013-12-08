<div class="container">

  <form class="form-signin" role="form" method="post" action="/login">

    <h2 class="form-signin-heading">Please Log in</h2>

    <input type="text" class="form-control" placeholder="User Name" name="username" required autofocus>
    <input type="password" class="form-control" placeholder="Password" name="password" required>

    <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>

  </form>

</div> <!-- /container -->

%rebase layout/layout stylesheet=setdefault('stylesheet', '[]'), message=setdefault('message', ''), title=setdefault('title', 'Bottle MVC Skeleton - login')
