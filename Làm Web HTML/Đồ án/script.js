const track = document.querySelector('.slider-track');
    const prevBtn = document.querySelector('.slider-btn.prev');
    const nextBtn = document.querySelector('.slider-btn.next');
    let currentIndex = 0;
    const cardWidth = 260; // min-width + margin
    const maxIndex = track.children.length - 1;

    function updateSlider() {
        track.style.transform = `translateX(-${currentIndex * cardWidth}px)`;
    }

    prevBtn.onclick = function() {
        if (currentIndex > 0) {
            currentIndex--;
            updateSlider();
        }
    };
    nextBtn.onclick = function() {
        if (currentIndex < maxIndex) {
            currentIndex++;
            updateSlider();
        }
    };