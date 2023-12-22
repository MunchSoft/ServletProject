<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Open+Sans:wght@400;600&display=swap"
            rel="stylesheet"
    />
    <!-- Font Awesome -->
    <script
            src="https://kit.fontawesome.com/41456a1590.js"
            crossorigin="anonymous"
    ></script>
    <script type="module" src="../resource/js/main.js" defer></script>
    <link rel="stylesheet" href="../resources/css/style.css" />
<body>
<header id="header">
    <div class="header_container">
        <li>
            <a> 오늘 밤 9시까지 주문하면 오/늘/출/발</a>
        </li>
        <li>
            <a> 뭉크에서 사이즈 고민 하지마세요! 사이즈 무료 교환</a>
        </li>
        <li>
            <a> 행복한쇼핑 뭉크에서 경험하세요.</a>
        </li>
    </div>
    <div class="header_content">
        <div class="header_logo">
            <div class="header_content_logo"><a href="/">SERVLET</a></div>
        </div>
        <nav class="header_nav">
            <ul class="header_nav_menu">
                <li>
                    <form action="#" id="header_search">
                        <input type="text" name="keyword" class="header_search_input" />
                        <input
                                type="image"
                                src="/images/search.png"
                                onclick="document.querySelector('#header_search').submit();"
                        />
                    </form>
                </li>
                <li>
                    <a href="#"><img src="/images/mypage.png" alt="" /></a>
                </li>
                <li>
                    <a href="#"><img src="/images/cart.png" alt="" /></a>
                </li>
                <li>
                    <a href="#"><img src="/images/like.png" alt="" /></a>
                </li>
                <li><a href="#" class="login_text">로그인</a></li>
            </ul>
        </nav>
    </div>
</header>
<div class="login">
    <div class="login">
        <div class="login__container">
            <fieldset>
                <legend class="login__title">LOGIN</legend>
                <div class="login__discription">
                    <span>회원가입 후 즐거운 쇼핑을 즐겨보아요!</span><br />
                    <span>행복한 쇼핑을 경험하세요.</span>
                </div>
                <form>
                    <div class="login__group">
                        <label for="id">아이디</label>
                        <input
                                class="login__input"
                                type="id"
                                id="id"
                                placeholder="아이디를 입력해주세요."
                        />
                    </div>
                    <div class="login__group">
                        <label for="password">비밀번호</label>
                        <input
                                class="login__input"
                                type="password"
                                id="password"
                                placeholder="비밀번호를 입력해주세요."
                        />
                    </div>
                    <button class="login__button">LOGIN</button>
                </form>
                <ul class="login__links">
                    <li class="bar"><a href="#">회원가입</a></li>
                    <li><a href="#">아이디/비밀번호 찾기</a></li>
                </ul>
            </fieldset>
        </div>
    </div>
</div>

