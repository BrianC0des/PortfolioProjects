/**
 * Bryan P. Saavedra Portfolio
 * Vanilla JavaScript (No frameworks / Zero dependencies)
 */

document.addEventListener("DOMContentLoaded", () => {
  // 1. Dynamic Footer Year
  const yearSpan = document.getElementById("year");
  if (yearSpan) {
    yearSpan.textContent = new Date().getFullYear();
  }

  // 2. Email Copy Button
  const copyBtn = document.getElementById("copy-email-btn");
  const emailToCopy = "bryansaavedrab272@gmail.com";

  if (copyBtn) {
    copyBtn.addEventListener("click", async () => {
      try {
        await navigator.clipboard.writeText(emailToCopy);
        const originalText = copyBtn.innerHTML;
        
        copyBtn.classList.add("copied");
        copyBtn.innerHTML = "<span>Copied!</span>";

        setTimeout(() => {
          copyBtn.classList.remove("copied");
          copyBtn.innerHTML = originalText;
        }, 2000);
      } catch (err) {
        console.error("Failed to copy email:", err);
      }
    });
  }

  // 3. Scroll to Top Button
  const scrollTopBtn = document.getElementById("scroll-top-btn");
  if (scrollTopBtn) {
    scrollTopBtn.addEventListener("click", () => {
      window.scrollTo({
        top: 0,
        behavior: "smooth",
      });
    });
  }
});
