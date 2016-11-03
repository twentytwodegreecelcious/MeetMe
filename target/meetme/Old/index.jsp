<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Arimo&subset=cyrillic" rel="stylesheet">

    <title>MeetMe</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body onload="init()">

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

<div class="loginDropdown">
    <div class="panel panel-default">
        <div class="panel-body">
            <form class="form-inline" method="post" action="/login">
                <div class="form-group">
                    <label for="exampleInputName2">email</label>
                    <input type="email" name="email" class="form-control" id="exampleInputName2"
                           placeholder="username@mail.com">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail2">Пароль</label>
                    <input type="password" name="password" class="form-control" id="exampleInputEmail2">
                </div>
                <button type="submit" class="btn btn-default">Войти</button>
            </form>
        </div>
    </div>
</div>

<div class="leftbar-wrap">
    <a href="#0" id="scroll-back">
            <span class="active-area">
                <span class="bar-desc"><span class="glyphicon glyphicon-chevron-down"></span> Назад</span>
            </span>
    </a>
    <a href="#" class="left-controlbar">
            <span class="active-area">
                <span class="bar-desc"><span class="glyphicon glyphicon-chevron-up"></span> Вверх</span>
            </span>
    </a>
</div>

<h1>FUCK YOU ANDREW!</h1>

<div class="content">
    <div class="container">
        <div class="welcome">
            <h1>Приветствуем на <span style="color: rgba(0, 0, 255, 0.70);">*название сайта*</span>. Находите подходящие
                ивенты и пиздуйте туда со всех ног! </h1>
        </div>
        <div class="maincontent">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="container-fluid">
                            <div class="photoAndBasics">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-5 photo">
                                            <img src="img/profilePicture.png"/>
                                        </div>
                                        <div class="col-md-7 basics">
                                            <h4>Grigory</h4>
                                            <h6>Zhmerynka, Ukraine</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="adverticement">
                                <img style="margin-top: 20px;"
                                     src="http://djaby.ru/uploads/posts/2012-06/1339835389_1149360125www.xuk.ru03a.jpg"/>
                                <img style="margin-top:10px;" src="http://i.ytimg.com/vi/ODjHDi11R8w/hqdefault.jpg"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 klass">
                        <div class="container-fluid">
                            <div class="row items">
                                <div class="clearfix">
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4><span style="color: rgba(0, 0, 255, .7)"><b>21.09</b></span> Клуб
                                            любителей пива Duff</h4>

                                        <p>Алкоголь <span class="time"
                                                          style="color: blue; float: right; font-size: 15px"><b>Среда,
                                            21:00</b></span></p>
                                        <a href=""><img src="img/1.png"/></a>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <a href=""><img src="img/2.png"/></a>

                                        <div class="correctItem">
                                            <h4>Презентация жидкостей 'Vape House'</h4>

                                            <p>Курение, vape</p>

                                            <p><span
                                                    style="color: rgba(0, 0, 255, .7); font-size:15px;"><b>21.09</b></span> <span
                                                    class="time" style="color: rgba(0, 0, 255, .7);
                                                                                                               font-size: 15px"><b>Среда,
                                                21:00</b></span></p>

                                            <p>150 UAH</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>Выставка техники 'CAT'</h4>

                                        <p>Техника, выставка</p>
                                        <a href=""><img src="img/3.png"/></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row items">
                                <div class="clearfix">
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>Концерт группы "Океан Эльзі"</h4>

                                        <p>Музыка, концерт</p>
                                        <a href=""><img src="img/4.png"/></a>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>Открытие кафе 'Starbucks'</h4>

                                        <p>Кафе, отдых</p>
                                        <a href=""><img src="img/5.png"/></a>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>Акция "АнтиСПИД"</h4>

                                        <p>Акция, благотворительность</p>
                                        <a href=""><img src="img/6.png"/></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row items">
                                <div class="clearfix">
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>Матч "Динамо Киев" - "Залупа моржа"</h4>

                                        <p>Боль, страдание</p>
                                        <a href=""><img src="img/7.png"/></a>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>Феерверки в честь Сатаны</h4>

                                        <p>Религия, шоу</p>
                                        <a href=""><img src="img/8.png"/></a>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>Презентация оружия</h4>

                                        <p>Презентация, насилие</p>
                                        <a href=""><img src="img/9.png"/></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row items">
                                <div class="clearfix">
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>Mastercard</h4>

                                        <p>Не знаю шо писать</p>
                                        <a href=""><img src="img/10.png"/></a>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>ASD</h4>

                                        <p>asd asd</p>
                                        <a href=""><img src="img/11.png"/></a>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4 item">
                                        <h4>qwerty</h4>

                                        <p>123, asd</p>
                                        <a href=""><img src="img/12.png"/></a>
                                    </div>
                                </div>
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
<script src="js/bootstrap.min.js"></script>

<script>
    window.isLogged = function () {
        $.get(
                "   /isLogged",
                {},
                function asd(response) {
                    var results = document.getElementById('isLogged');
                    results.innerHTML = response;
                    var elem = document.getElementsByClassName("scriptino");
                    elem.innerHTML = 'js/main.js'
                }
        );
    }


    <%----%>
    <%--$.get(--%>
    <%--"/${pageContext.servletContext.contextPath}isLogged",--%>
    <%--[],--%>
    <%--function(response){--%>
    <%--document.getElementById("isLogged").innerHTML = response;--%>
    <%--}--%>
    <%--);--%>
</script>
<script src='js/main.js'></script>
<script>
    window.fuc = function () {
//        $(function () {
//            $('#login').on('click', 'li', function () {
        $('.loginDropdown').show();
//            });
//        });
    }
</script>
</body>
</html>
