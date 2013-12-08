<div class="container">

  <form class="form-signin" role="form" method="post">

    <h2 class="form-signin-heading">Please sign in</h2>

    <input type="text" class="form-control initial" placeholder="User Name" name="username" value="{{username}}" required autofocus>
    % if username_error is not '':
      <div class="alert alert-danger">{{username_error}}</div>
    %end

    <input type="password" class="form-control middle" placeholder="Password" name="password" required>
    % if password_error is not '':
      <div class="alert alert-danger">{{password_error}}</div>
    %end

    <input type="password" class="form-control middle" placeholder="Repeat Password" name="verify" required>
    % if verify_error is not '':
      <div class="alert alert-danger">{{verify_error}}</div>
    %end

    <input type="text" class="form-control end" placeholder="E-Mail (optional)" name="email" value="{{email}}">
    % if email_error is not '':
      <div class="alert alert-danger">{{email_error}}</div>
    %end

    <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>

    Already a user? <a href="/login">Login</a><p>

  </form>

</div> <!-- /container -->

%rebase layout/layout stylesheet=setdefault('stylesheet','[]'), message=setdefault('message', ''), title=setdefault('title', 'Bottle MVC Skeleton')
