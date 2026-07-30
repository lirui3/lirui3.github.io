document.addEventListener("DOMContentLoaded", () => {
  const timeline = document.querySelector("[data-conference-timeline]");
  if (!timeline) return;

  const events = [...timeline.querySelectorAll("[data-conference-event]")];
  const prefersReducedMotion = window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  if (prefersReducedMotion || !("IntersectionObserver" in window)) {
    events.forEach((event) => event.classList.add("is-visible"));
  } else {
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            entry.target.classList.add("is-visible");
            observer.unobserve(entry.target);
          }
        });
      },
      { rootMargin: "0px 0px -12%", threshold: 0.08 }
    );
    events.forEach((event) => observer.observe(event));
  }

  let frameRequested = false;
  const updateProgress = () => {
    const bounds = timeline.getBoundingClientRect();
    const viewportAnchor = window.innerHeight * 0.56;
    const travelled = viewportAnchor - bounds.top;
    const progress = Math.max(0, Math.min(1, travelled / bounds.height));
    timeline.style.setProperty("--conference-progress", progress.toFixed(3));
    events.forEach((event) => {
      if (event.getBoundingClientRect().top < window.innerHeight * 0.92) {
        event.classList.add("is-visible");
      }
    });
    frameRequested = false;
  };

  const requestProgressUpdate = () => {
    if (frameRequested) return;
    frameRequested = true;
    window.requestAnimationFrame(updateProgress);
  };

  updateProgress();
  window.addEventListener("scroll", requestProgressUpdate, { passive: true });
  window.addEventListener("resize", requestProgressUpdate);

  const lightbox = document.querySelector("[data-conference-lightbox]");
  if (!lightbox || typeof lightbox.showModal !== "function") return;

  const lightboxImage = lightbox.querySelector("img");
  const lightboxCaption = lightbox.querySelector("p");
  const closeButton = lightbox.querySelector("[data-lightbox-close]");

  document.querySelectorAll("[data-conference-photo]").forEach((button) => {
    button.addEventListener("click", () => {
      lightboxImage.src = button.dataset.fullSrc;
      lightboxImage.alt = button.dataset.alt;
      lightboxCaption.textContent = button.dataset.alt;
      lightbox.showModal();
    });
  });

  const closeLightbox = () => lightbox.close();
  closeButton.addEventListener("click", closeLightbox);
  lightbox.addEventListener("click", (event) => {
    if (event.target === lightbox) closeLightbox();
  });
});
