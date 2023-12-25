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
    <script type="module" src="/resource/js/main.js" defer></script>
    <link rel="stylesheet" href="/resource/css/style.css" />
<body>
<header id="header">
    <div class="header_container">
        <li>
            <a> 오늘 밤 9시까지 주문하면 오/늘/출/발</a>
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
                                id="main_img1"
                                src="/resource/images/search_w.png"
                                onclick="document.querySelector('#header_search').submit();"
                        />
                    </form>
                </li>
                <li>
                    <a href="#">
                        <img id="main_img2" src="/resource/images/mypage_w.png" alt="" />
                    </a>
                </li>
                <li class="menu_img">
                    <a href="#">
                        <img id="main_img3" src="/resource/images/cart_w.png" alt="" />
                    </a>
                </li>
                <li class="menu_img">
                    <a href="#">
                        <img id="main_img4" src="/resource/images/like_w.png" alt="" />
                    </a>
                </li>
                <li>
                    <a href="#" class="login_text">로그인</a>
                </li>
            </ul>
        </nav>
    </div>
</header>