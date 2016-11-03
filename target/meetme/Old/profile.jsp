<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 10.10.2016
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Arimo&subset=cyrillic" rel="stylesheet">

    <title>MeetMe</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/profile.css">
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
                    <li><a href="#">афиша</a></li>
                    <li><a href="#">поиск</a></li>
                    <li class="active-link"><a href="#">профиль</a></li>
                    <li><a href="#">локации</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
            <span class="glyphicon glyphicon-user user"></span>
        </div>
        <!-- /.container-fluid -->
    </nav>
</header>

<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="photoAndBasics">
                    <div class="photo">
                        <img src="img/profilePicture.png"/>
                    </div>
                    <div class="basics">
                        <h4>Gregory House</h4>

                        <p>Zhmerynka, Ukraine</p>
                    </div>
                </div>
            </div>
            <div class="col-md-9" role="navigation">
                <ul id="MyTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active" style="width: 200px; text-align: center; font-size: 20px;" id="eventsNav"><a
                            href="#events" aria-controls="events" role="tab" data-toggle="tab">События</a></li>
                    <li role="presentation" style="width: 200px; text-align: center; font-size: 20px;" id="bioNav"><a href="#bio"
                                                                                                          aria-controls="bio"
                                                                                                          role="tab"
                                                                                                          data-toggle="tab">Биография</a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="events">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xs-4">
                                    <div class="event">
                                        <h5>ASDASDASDASD</h5>
                                        <img src="img/1.png"/>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <div class="event">
                                        <h5>ASDASDASDASD</h5>
                                        <img src="img/1.png"/>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <div class="event">
                                        <h5>ASDASDASDASD</h5>
                                        <img src="img/1.png"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-4">
                                    <div class="event">
                                        <h5>ASDASDASDASD</h5>
                                        <img src="img/1.png"/>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <div class="event">
                                        <h5>ASDASDASDASD</h5>
                                        <img src="img/1.png"/>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <div class="event">
                                        <h5>ASDASDASDASD</h5>
                                        <img src="img/1.png"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane" id="bio">
                        <div class="container-fluid">
                            <div class="row">
                                ASD
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <h3>Здесь должна быть тщательно описана информация о сайте.</h3>

        <div class="raw">
            <div class="col-md-12">Здесь копирайт (с)</div>
        </div>
        <div class="raw">

            <div class="col-md-12">Название сайта - 2016</div>

        </div>
    </div>
</footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<%--<script src="js/jquery-3.1.1.js"></script>--%>
<script type="text/javascript" src="js/bootstrap-tab.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/profile.js"></script>
</body>
</html>
