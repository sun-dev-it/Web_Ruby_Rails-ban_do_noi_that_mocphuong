// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//footer carousel
const carousel = document.getElementById('carousel');
const next = document.getElementById('next');
const prev = document.getElementById('prev');
const totalImages = carousel.children.length;
const imagesPerPage = 6;
let currentIndex = 0;
next.addEventListener('click', () => {
  if(currentIndex + imagesPerPage >= totalImages) {
    // quay về đầu
    currentIndex = 0;
  } else {
    currentIndex += imagesPerPage;
  }
  carousel.style.transform = `translateX(-${(100 / imagesPerPage) * currentIndex}%)`;
});
prev.addEventListener('click', () => {
  if(currentIndex - imagesPerPage < 0) {
    // quay về cuối
    currentIndex = totalImages - imagesPerPage;
  } else {
    currentIndex -= imagesPerPage;
  }
  carousel.style.transform = `translateX(-${(100 / imagesPerPage) * currentIndex}%)`;
});



//page loading with door open effect
window.addEventListener("load", () => {
  const loader = document.getElementById("page-loading");
  const imageWrapper = document.getElementById("image-wrapper");
  const leftDoor = document.querySelector(".left-door");
  const rightDoor = document.querySelector(".right-door");

  // Fade out loader
  loader.style.transition = "opacity 0.5s";
  loader.style.opacity = "0";

  setTimeout(() => {
    loader.style.display = "none";

    // Fade in image
    imageWrapper.style.opacity = "1";

    // Trigger door open effect
    setTimeout(() => {
      leftDoor.classList.add("open");
      rightDoor.classList.add("open");
    }, 300);

  }, 500);
});

window.addEventListener("load", () => {
  const loader = document.getElementById("page-loading");

  loader.style.transition = "opacity 0.6s ease";
  loader.style.opacity = "0";

  setTimeout(() => {
    loader.style.display = "none";
  }, 600);
});

// flash_controller.js
export default class extends Controller {
  connect() {
    setTimeout(() => this.element.remove(), 3000)
  }
}
