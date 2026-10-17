// Menu resizing for small windows
const menuTrigger = document.querySelector(".menu-trigger");
const menu = document.querySelector(".menu");
const mobileQuery = getComputedStyle(document.body).getPropertyValue("--phoneWidth");
const isMobile = () => window.matchMedia(mobileQuery).matches;
const isMobileMenu = () => {
    menuTrigger && menuTrigger.classList.toggle("hidden", !isMobile());
    menu && menu.classList.toggle("hidden", isMobile());
};
isMobileMenu();
menuTrigger && menuTrigger.addEventListener("click", () => menu && menu.classList.toggle("hidden"));
window.addEventListener("resize", isMobileMenu);
// Close the mobile menu when tapping outside of it
document.addEventListener("click", (e) => {
    if (!isMobile() || !menu || !menuTrigger) return;
    if (!menu.contains(e.target) && !menuTrigger.contains(e.target)) menu.classList.add("hidden");
});
// Theme selector
const getTheme = window.localStorage && window.localStorage.getItem("theme");
const themeToggle = document.querySelector(".theme-toggle");
const isDark = getTheme === "dark";
var metaThemeColor = document.querySelector("meta[name=theme-color]");
if (getTheme !== null) {
    document.body.classList.toggle("dark-theme", isDark);
    isDark ? metaThemeColor.setAttribute("content", "#252627") : metaThemeColor.setAttribute("content", "#fafafa");
}
themeToggle.addEventListener("click", () => {
    document.body.classList.toggle("dark-theme");
    window.localStorage && window.localStorage.setItem("theme", document.body.classList.contains("dark-theme") ? "dark" : "light", );
    document.body.classList.contains("dark-theme") ? metaThemeColor.setAttribute("content", "#252627") : metaThemeColor.setAttribute("content", "#fafafa");
})
// Highlight the menu entry of the current section
document.querySelectorAll(".menu__inner a").forEach((a) => {
    const href = a.getAttribute("href");
    if (href !== "/" && window.location.pathname.startsWith(href)) a.classList.add("active");
});
// Publication thumbnails open a larger version of the figure in a lightbox
const pubImages = document.querySelectorAll(".pubfig img");
if (pubImages.length) {
    const lightbox = document.createElement("dialog");
    lightbox.className = "lightbox";
    lightbox.innerHTML = '<img alt=""><p class="lightbox-caption"></p>';
    document.body.appendChild(lightbox);
    const lightboxImg = lightbox.querySelector("img");
    const lightboxCaption = lightbox.querySelector(".lightbox-caption");
    // Click anywhere to close; Escape closes the dialog natively
    lightbox.addEventListener("click", () => lightbox.close());
    pubImages.forEach((img) => {
        const title = img.closest(".pubrow").querySelector(".pubtext strong")?.textContent ?? "";
        const a = document.createElement("a");
        a.href = img.src;
        a.setAttribute("aria-label", `Enlarge figure: ${title}`);
        img.replaceWith(a);
        a.appendChild(img);
        a.addEventListener("click", (e) => {
            e.preventDefault();
            lightboxImg.src = img.src;
            lightboxImg.alt = `Figure: ${title}`;
            // Fit the figure to the viewport, scaling small images up
            lightboxImg.style.setProperty("--ar", img.naturalWidth / img.naturalHeight || 1.5);
            lightboxCaption.textContent = title;
            lightbox.showModal();
        });
    });
}
