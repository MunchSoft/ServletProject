"use strict";

/** HEADER */
const getElement = (selector) => document.querySelector(selector);
const headerContainer = getElement(".header_container");
const headerContent = getElement(".header_content");
const headerLogo = getElement(".header_content_logo a");
const headerUl = getElement(".header_nav_menu > li a.login_text");
const headerSearch = getElement(".header_search_input");

const imageUrls = [
    "/resource/images/search.png",
    "/resource/images/mypage.png",
    "/resource/images/cart.png",
    "/resource/images/like.png",
];

const imageUrls2 = [
    "/resource/images/search_w.png",
    "/resource/images/mypage_w.png",
    "/resource/images/cart_w.png",
    "/resource/images/like_w.png",
];

const imageIds = ["main_img1", "main_img2", "main_img3", "main_img4"];

const updateHeaderStyles = (isScrolled) => {
    if (isScrolled) {
        headerContainer.style.display = "none";
        headerContent.style.backgroundColor = "#F7F3EB";
        headerContent.style.paddingBottom = "18px";
        headerLogo.style.color = "#5a514b";
        headerUl.style.color = "#877b73";
        headerSearch.style.borderBottom = "1px solid #cccccc";
    } else {
        headerContainer.style.display = "block";
        headerContent.style.display = "flex";
        headerContent.style.backgroundColor = "transparent";
        headerLogo.style.color = "#ffffff";
        headerUl.style.color = "#ffffff";
        headerSearch.style.borderBottom = "1px solid #ffffff";
    }
};

const updateImageSources = (isScrolled) => {
    const urls = isScrolled ? imageUrls : imageUrls2;
    imageIds.forEach((id, index) => {
        const imgElement = getElement(`#${id}`);
        imgElement.src = urls[index];
    });
};

document.addEventListener("scroll", () => {
    const isScrolled = window.scrollY > 0;
    updateHeaderStyles(isScrolled);
    updateImageSources(isScrolled);
});

/**Main Slider */
document.addEventListener("DOMContentLoaded", function () {
    const visu_right = document.querySelector(".visu_arrow.right");
    const visuSlide = document.querySelectorAll(".visu_slide");
    const visu_left = document.querySelector(".visu_arrow.left");
    const event = new Event("click"); // 트리거를 처럼 사용하기 위해서.
    setInterval(autoSlide, 6000); // 정해진 시간에 따라 수행

    initImg(visuSlide);
    autoSlide();

    // 슬라이드 초기 이미지
    function initImg(visuSlide) {
        if (visuSlide.length > 0) {
            visuSlide[0].classList.add("On");
        }
    }

    // 슬라이드 오른쪽 버튼
    visu_right.addEventListener("click", (event) => {
        event.preventDefault();
        const onElement = document.querySelector(".visual_wrap > .On");
        const idx = Array.from(onElement.parentNode.children).indexOf(onElement);
        onElement.classList.remove("On");

        if (idx < visuSlide.length - 1) {
            visuSlide[idx + 1].classList.add("On");
        } else {
            visuSlide[0].classList.add("On");
        }
    });

    // 슬라이드 왼쪽 버튼
    visu_left.addEventListener("click", (event) => {
        event.preventDefault();
        const onElement = document.querySelector(".visual_wrap > .On");
        const idx = Array.from(onElement.parentNode.children).indexOf(onElement);
        onElement.classList.remove("On");

        if (idx > 0) {
            visuSlide[idx - 1].classList.add("On");
        } else {
            visuSlide[visuSlide.length - 1].classList.add("On");
        }
    });

    // function autoSlide() {
    //   visu_right.dispatchEvent(event);
    // }
    function autoSlide() {
        const onElement = document.querySelector(".visual_wrap > .On");
        const idx = Array.from(onElement.parentNode.children).indexOf(onElement);
        onElement.classList.remove("On");

        if (idx < visuSlide.length - 1) {
            visuSlide[idx + 1].classList.add("On");
        } else {
            visuSlide[0].classList.add("On");
        }
    }
});
