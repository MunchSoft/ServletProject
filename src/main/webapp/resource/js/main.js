"use strict";

/** HEADER */
const header = document.querySelector("#header");
const headerContainer = document.querySelector(".header_container");
const headerContent = document.querySelector(".header_content");
const headerLogo = document.querySelector(".header_content_logo a");
const headerUl = document.querySelector(".header_nav_menu > li a.login_text");
const menuImages = document.querySelectorAll(".menu_img > a");
const headerHeight = header.getBoundingClientRect().height;
const headerSearch = document.querySelector(".header_search_input");
const imageUrls = [
    "/images/search.png",
    "/images/mypage.png",
    "/images/cart.png",
    "/images/like.png",
];
const imageUrls2 = [
    "/images/search_w.png",
    "/images/mypage_w.png",
    "/images/cart_w.png",
    "/images/like_w.png",
];
const imageIds = ["main_img1", "main_img2", "main_img3", "main_img4"];
document.addEventListener("scroll", () => {
    if (window.scrollY > 0) {
        headerContainer.style.display = "none";
        headerContent.style.backgroundColor = "#F7F3EB";
        headerContent.style.paddingBottom = "18px";
        headerLogo.style.color = "#5a514b";
        headerUl.style.color = "#877b73";
        headerSearch.style.borderBottom = "1px solid #cccccc";
        imageIds.forEach((id, index) => {
            const imgElement = document.getElementById(id);
            imgElement.src = imageUrls[index];
        });
    } else {
        headerContainer.style.display = "block";
        headerContent.style.display = "flex";
        headerContent.style.backgroundColor = "transparent";
        headerLogo.style.color = "#ffffff";
        headerUl.style.color = "#ffffff";
        headerSearch.style.borderBottom = "1px solid #ffffff";
        imageIds.forEach((id, index) => {
            const imgElement = document.getElementById(id);
            imgElement.src = imageUrls2[index];
        });
    }
});
