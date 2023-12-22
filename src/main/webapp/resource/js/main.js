"use strict";

/** HEADER */
const header = document.querySelector("#header");
const headerContainer = document.querySelector(".header_container");
const headerContent = document.querySelector(".header_content");
const headerHeight = header.getBoundingClientRect().height;
document.addEventListener("scroll", () => {
    if (window.scrollY > 0) {
        headerContainer.style.display = "none";
        headerContent.style.backgroundColor = "#F7F3EB";
        headerContent.style.paddingBottom = "18px";
    } else {
        headerContainer.style.display = "block";
        headerContent.style.backgroundColor = "transparent";
    }
});

/** MainSlider */
const mainContainer = document.querySelector("#main_slide");
const pics = ["main1.jpg", "main2.jpg", "main3.jpg"];
mainContainer.style.backgroundImage = `url(/images/${pics[0]})`;
const arrows = document.querySelectorAll(".arrow");
let i = 0;

arrows.forEach((arrow) => {
    arrow.addEventListener("click", (e) => {
        if (e.target.id === "left") {
            i--;
            if (i < 0) {
                i = pics.length - 1;
            }
        } else if (e.target.id === "right") {
            i++;
            if (i >= pics.length) {
                i = 0;
            }
        }
        mainContainer.style.backgroundImage = `url(/images/${pics[i]})`;
    });
});
