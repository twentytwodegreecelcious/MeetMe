<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 27.09.2016
  Time: 19:20
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

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../datepicker/css/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" href="../css/registration.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<header>
    <div class="head">
        <div class="container">
            <div class="row">
                <div class="col-md-2"><img src="../img/logo.png" align="center"/></div>
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-5">
                            <h1>добро</h1>
                            <h1>пожаловать</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="content">
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-body">
                <form action="/register" method="get">
                    <div id='page' class="page">
                        <div class="row">
                            <div class="col-md-12">
                                <label for="email">Email</label>

                                <div class="input-group">
                                    <input align="center" type="email" name="email" required="required"
                                           class="form-control" id="email" aria-describedby="basic-addon3">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="name">Имя</label>

                                <div class="input-group">
                                    <input align="center" type="text" name="name" required="required"
                                           class="form-control" id="name" aria-describedby="basic-addon3">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="surname">Фамилия</label>

                                <div class="input-group">
                                    <input align="center" type="text" name="surname" required="required"
                                           class="form-control" id="surname" aria-describedby="basic-addon3">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="bday">Дата Рождения</label>

                                <div class="input-group">
                                    <input align="center" type="date" name="bday" required="required"
                                           class="form-control" id="bday" aria-describedby="basic-addon3">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="password">Пароль</label>

                                <div class="input-group">
                                    <input align="center" type="password" name="password" required="required"
                                           class="form-control" id="password" aria-describedby="basic-addon3">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="password1">Повторите пароль</label>

                                <div class="input-group">
                                    <input align="center" type="password" name="password1" required="required"
                                           class="form-control" id="password1" aria-describedby="basic-addon3">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="country">Страна</label>

                                <div class="input-group">
                                    <input align="center" type="text" name="country" required="required"
                                           class="form-control" id="country" aria-describedby="basic-addon3">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label for="city">Город</label>

                            <div class="input-group">
                                <input align="center" type="text" name="city" required="required" class="form-control"
                                       id="city" aria-describedby="basic-addon3">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label for="phone">Номер телефона</label>
                            <!-- TODO Create a label that explains why do we need 'em-->
                            <div class="input-group">
                                <input align="center" type="text" name="phone" class="form-control" id="phone"
                                       aria-describedby="basic-addon3">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10"></div>
                        <div class="col-md-2">
                            <button class="btn btn-primary" type="submit">Зарегистрироваться</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
<footer></footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<script src="../js/registration.js"></script>
<script type="text/javascript" src="../datepicker/js/bootstrap-datetimepicker.min.js"></script>
</body>
</html>
