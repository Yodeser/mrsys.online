<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Cong Bao">
<title>MRSYS.ONLINE</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/res/img/icon.png"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/timelify.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/header.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/index.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.timelify.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/masonry.pkgd.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/index.js"></script>
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
<%@include file="header.jsp"%>
<div class="container-fluid" id="slide-container">
    <div class="row">
        <div id="index-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#index-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#index-carousel" data-slide-to="1"></li>
                <li data-target="#index-carousel" data-slide-to="2"></li>
                <li data-target="#index-carousel" data-slide-to="3"></li>
                <li data-target="#index-carousel" data-slide-to="4"></li>
                <li data-target="#index-carousel" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="index-img" src="${pageContext.request.contextPath}/res/img/index1.jpg">
                    <div class="carousel-caption">
                        <h1><a href="/movie/10190">Interstellar</a></h1>
                        <p>A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.</p>
                    </div>
                </div>
                <div class="item">
                    <img class="index-img" src="${pageContext.request.contextPath}/res/img/index2.jpg">
                    <div class="carousel-caption">
                        <h1><a href="/movie/11018">Dracula Untold</a></h1>
                        <p>As his kingdom is being threatened by the Turks, young prince Vlad Tepes must become a monster feared by his own people in order to obtain the power needed to protect his own family, and the families of his kingdom.</p>
                    </div>
                </div>
                <div class="item">
                    <img class="index-img" src="${pageContext.request.contextPath}/res/img/index3.jpg">
                    <div class="carousel-caption">
                        <h1><a href="/movie/9363">Gravity</a></h1>
                        <p>Two astronauts work together to survive after an accident which leaves them alone in space.</p>
                    </div>
                </div>
                <div class="item">
                    <img class="index-img" src="${pageContext.request.contextPath}/res/img/index4.jpg">
                    <div class="carousel-caption">
                        <h1><a href="/movie/9019">Man of Steel</a></h1>
                        <p>Clark Kent, one of the last of an extinguished race disguised as an unremarkable human, is forced to reveal his identity when Earth is invaded by an army of survivors who threaten to bring the planet to the brink of destruction.</p>
                    </div>
                </div>
                <div class="item">
                    <img class="index-img" src="${pageContext.request.contextPath}/res/img/index5.jpg">
                    <div class="carousel-caption">
                        <h1><a href="/movie/9062">Pacific Rim</a></h1>
                        <p>As a war between humankind and monstrous sea creatures wages on, a former pilot and a trainee are paired up to drive a seemingly obsolete special weapon in a desperate effort to save the world from the apocalypse.</p>
                    </div>
                </div>
                <div class="item">
                    <img class="index-img" src="${pageContext.request.contextPath}/res/img/index6.jpg">
                    <div class="carousel-caption">
                        <h1><a href="/movie/7702">Brave</a></h1>
                        <p>Determined to make her own path in life, Princess Merida defies a custom that brings chaos to her kingdom. Granted one wish, Merida must rely on her bravery and her archery skills to undo a beastly curse.</p>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#index-carousel" role="button" data-slide="prev" style="z-index: 2;">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#index-carousel" role="button" data-slide="next" style="z-index: 2;">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>
<div class="container" id="steps-container">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center" style="font-size: 4em;">How we recommend movies for you?</h1>
            <h1 class="text-center">Just follow the three steps:</h1>
            <div class="timeline">
                <ul class="timeline-items">
                    <li class="is-hidden timeline-item">
                        <h3><a href="" data-toggle="modal" data-target="#loginModal">Step 1: Sign in</a></h3>
                    </li>
                </ul>
                <ul class="timeline-items">
                    <li class="is-hidden timeline-item inverted">
                        <h3><a href="#movies-container">Step 2: Rate for movies</a></h3>
                    </li>
                </ul>
                <ul class="timeline-items">
                    <li class="is-hidden timeline-item">
                        <h3>
                            <s:if test="#session.user != null"><a href="/user/${sessionScope.user.id}#recommend">Step 3: Check your recommendation list</a></s:if>
                            <s:else><a href="" data-toggle="modal" data-target="#loginModal">Step 3: Check your recommendation list</a></s:else>
                        </h3>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid" id="movies-container">
    <div class="row" style="margin-bottom: 50px;">
        <div class="col-md-12">
            <h1 class="text-center" style="font-size: 4em;">Do not want to wait?</h1>
            <h1 class="text-center">Browse the following movies. You may like them!</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-9 col-md-offset-2" id="masonry">
            <div class="box" id="${sessionScope.movie.id}">
                <a href="movie/${sessionScope.movie.id}"><img src="${sessionScope.movie.imdb}"></a>
            </div>
        </div>
    </div>
    <div class="row" id="loading">
        <div class="col-md-12 text-center">
            <img alt="loading" src="${pageContext.request.contextPath}/res/img/loading.gif">
        </div>
    </div>
</div>
<footer style="background: #181818;"><%@include file="footer.jsp"%></footer>
</body>
</html>