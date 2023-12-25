<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="layout/header.jsp"%>
<!--Main-->
<!--Main-->
<main id="main">
    <section class="visual">
        <button class="right visu_arrow">right</button>
        <button class="left visu_arrow">left</button>
        <ul class="visual_wrap">
            <li class="visu_slide"></li>
            <li class="visu_slide"></li>
            <li class="visu_slide"></li>
        </ul>
    </section>
    <section class="maincontents">
        <div class="wrap_inner_discription">
            <div class="wrap_inner_discription-title">
                <p class="wrap_inner_discription-titlehead">서블릿은</p>
                <p>화면너머의 여러분에게 따뜻한 쇼핑메이트이고 싶습니다.</p>
                <p>일상에 스며드는 실용적인 옷들부터</p>
                <p>가장 빛이 나야하는 순간까지 언제나 함께 하겠습니다.</p>
            </div>
        </div>
    </section>
    <div class="container">
        <section class="itemWrap">
            <div class="item">
                <div class="imgBox">
                    <a href="">
                        <img src="/resource/images/img1.gif" alt="" />
                    </a>
                </div>
                <div class="info">
                    <div class="price">
                        <div>
                            <div class="price_box">
                                <span class="sell">50,000원</span>
                                <div class="price_sell">
                                    <div class="real_sell">
                                        29,800원
                                        <span>40%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p class="name">
                        <a href=""
                        >[주문폭주] (기모/겨울데일리룩) 시몬 밴딩롱 플리츠
                            기모스커트</a
                        >
                    </p>
                    <div class="point">뭉크</div>
                    <p class="item_bar"></p>
                    <div class="wish_box">
                        <div class="count">
                            <span class="review">( 리뷰 1 )</span>
                        </div>
                        <div class="wishcart">
                            <span class="wish"></span>
                            <div class="cart"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>
<%@include file="layout/footer.jsp"%>
</body>
</html>
