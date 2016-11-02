  <%--
  Created by IntelliJ IDEA.
  User: User
  Date: 18.10.2016
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>MeetMe</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <header>
    <nav class="navbar navbar-default menu">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                  data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="img/logo.png"/> </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav left">
            <li class="active-link"><a href="#"><span style="font-size: 17px"
                                                      class="glyphicon glyphicon-tags"></span> афиша</a></li>
            <li><a href="search.jsp"><span style="font-size: 17px"
                                           class="glyphicon glyphicon-search"></span> поиск</a></li>
            <li><input/></li>
            <!-- TODO Remake to controller method -->
            <li><a href="#"><span style="font-size: 17px" class="glyphicon glyphicon-move"></span> локации</a>
            </li>
          </ul>

          <div id="isLogged">


          </div>
          <%--<ul class="nav navbar-nav navbar-right right">--%>
          <%--<li class="user" id="registration"><a href="pages/registration.jsp">зарегистрироваться</a></li>--%>
          <%--<li class="user" id="login"><a href="#">войти</a></li>--%>
          <%--</ul>--%>

          <%--<ul class="welcome">--%>
          <%--<li><p><c:out value="Приветствуем, ${pageContext.session.getAttribute('user').getEmail()}"/></p>    </li>--%>
          <%--</ul>--%>
        </div>
        <!-- /.navbar-collapse -->
        <span class="glyphicon glyphicon-user user"></span>
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>



  <div class="container">
    <div class="row">
      <div class="col-md-10">
        <table class="table table-hover" style="margin-top: 20px;" >
          <tr>
            <!--form method="post" action="/search"-->
            <td><input type="text" name="searchRequest" style="width: 1000px; height:50px; font-size: 17px;"></td>
            <td><button class="btn btn-default" type="submit" onclick="
                    $.get(
                    '/searchResult',
                    {},
                    function (response) {
                        var element = document.getElementById('searchResult');
                        element.innerHTML = response;
                    }
            )

          " style="width: 200px; height:50px;">Submit</button></td>
            <!--/form-->
          </tr>
        </table>
      </div>
      <div class="col-md-1"><!--Another empty div --></div>
    </div></div>
  <div class="container-fluid">
    <div class="raw">
      <div class="col-md-2"><!--Empty div--></div>
      <div class="col-md-8" id="searchResult">

      </div>
      <div class="col-md-1"><!-- Another empty div --></div>
    </div>
  </div>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  </body>
  </html>