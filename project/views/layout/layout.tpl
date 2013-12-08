<!doctype html>
<head>
   <title>{{ title }}</title>
   <link rel="stylesheet" type="text/css" href="/css/style.css">
   <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="/js/bootstrap.min.css">

   % for ss in stylesheet:
   <link rel="stylesheet" type="text/css" href="css/{{ ss }}">
   %end

</head>
<body>

      % if message is not '':
  <div class="page">
       <div class="flash">{{ message }}</div>
  </div>
      %end

  %include


  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>
