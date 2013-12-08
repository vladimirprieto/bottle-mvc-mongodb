<div class="container">
  <div class="header">
    <ul class="nav nav-pills pull-right">
      <li class="active"><a href="/">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
    <h3 class="text-muted">{{title}}</h3>
  </div>

  <div class="jumbotron">
    <h1>Jumbotron heading</h1>
    <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>


    %if username is None:

        <p>
            <a class="btn btn-lg btn-success" href="/login">Click here to Login!</a>
        </p>
        <p>
            <a href="/signin">Click here to Signin!</a>
        </p>

    %else:

        <div class="alert alert-success">Hi! <strong>{{username}}</strong></div>
        <p>want to <a href="/logout">logout</a>?</p>

    %end

  </div>


  <div class="footer">
    <p>&copy; Company 2013</p>
  </div>

</div> <!-- /container -->


%rebase layout/layout stylesheet=setdefault('stylesheet', '[]'), message=setdefault('message', ''), title=setdefault('title', 'Bottle MVC Skeleton')
