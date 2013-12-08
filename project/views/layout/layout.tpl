<!doctype html>
     <head>
         <link rel="stylesheet" type="text/css" href="/css/style.css">
         <title>{{ title }}</title>
     </head>
     <body>
         <a style="text-align:center" href="/">Home</a>
         <div class="page">
             % if message is not '':
                 <div class="flash">{{ message }}</div>
             %end
             %include
        </div>
    </body>
</html>
