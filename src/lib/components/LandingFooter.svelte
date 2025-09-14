<script>
  // Handle service clicks - smooth scroll on landing, navigate on other pages
  function handleServiceClick(event) {
    event.preventDefault();
    console.log("Service click handler triggered");
    const href = event.currentTarget.getAttribute("href");
    const sectionId = href.substring(1); // Remove the # symbol
    console.log("Section ID:", sectionId);

    // Check if we're on the landing page by looking for a unique landing page element
    const healthServicesSection = document.getElementById(
      "health-services-section"
    );
    const isLandingPage = !!healthServicesSection;
    console.log("Is landing page:", isLandingPage);

    // Check if we're on the about page by looking for the pricing section
    const pricingSection = document.getElementById("pricing-info-section");
    const isAboutPage = !!pricingSection && !isLandingPage;
    console.log("Is about page:", isAboutPage);

    if (isLandingPage) {
      // On landing page, smooth scroll to section
      const section = document.getElementById(sectionId);
      console.log("Section found:", !!section);
      if (section) {
        section.scrollIntoView({
          behavior: "smooth",
          block: "start",
        });
      }
    } else if (isAboutPage && sectionId === "pricing-info-section") {
      // On about page, scroll to pricing section
      console.log("Scrolling to pricing section on about page");
      if (pricingSection) {
        pricingSection.scrollIntoView({
          behavior: "smooth",
          block: "start",
        });
      }
    } else {
      // On other pages, navigate to landing page with section anchor
      console.log("Navigating to:", `/#${sectionId}`);
      console.log("Current URL before navigation:", window.location.href);
      window.location.href = `/#${sectionId}`;
    }
  }
</script>

<footer class="footer-section">
  <div class="footer-background">
    <picture>
      <source srcset="/imgs/footer.avif" type="image/avif" />
      <source srcset="/imgs/footer.webp" type="image/webp" />

      <img src="/imgs/footer.jpg" alt="tree under rainbow" />
    </picture>
  </div>

  <div class="footer-content">
    <div class="footer-grid">
      <!-- Logo and Company Info -->
      <div class="footer-column">
        <div class="footer-logo">
          <img
            src="/imgs/greentree-logo.png"
            alt="Green Tree Essentialz Logo"
          />
        </div>
        <p class="company-description">
          Full Service Natural Healing Center with comprehensive protocols and
          support to help you meet your wellness goals.
        </p>
        <div class="social-links">
          <a
            href="https://www.facebook.com/GreenTreeEssentialz"
            aria-label="Facebook"
            class="social-link"
          >
            <i class="fab fa-facebook-f"></i>
          </a>
          <a
            href="https://www.instagram.com/greentreeessentialz"
            aria-label="Instagram"
            class="social-link"
          >
            <i class="fab fa-instagram"></i>
          </a>
          <a
            href="mailto:GreenTreeEssentialz@gmail.com"
            aria-label="Email"
            class="social-link"
          >
            <i class="fas fa-envelope"></i>
          </a>
        </div>
      </div>

      <!-- Quick Links -->
      <div class="footer-column">
        <h3>Quick Links</h3>
        <ul class="footer-links">
          <li><a href="/">Home</a></li>
          <li><a href="/about">About Us</a></li>
          <li>
            <a href="/contact-us">Contact Us</a>
          </li>
          <li>
            <a
              href="https://www.facebook.com/pg/GreenTreeEssentialz/events/?ref=page_internal"
              >Events & Classes</a
            >
          </li>
        </ul>
      </div>

      <!-- Services -->
      <div class="footer-column">
        <h3>Our Services</h3>
        <ul class="footer-links">
          <li>
            <a href="#spiritual-services-section" on:click={handleServiceClick}
              >Spiritual Services</a
            >
          </li>
          <li>
            <a href="#health-services-section" on:click={handleServiceClick}
              >Natural Health Services</a
            >
          </li>
          <li>
            <a href="#intuitive-reading-section" on:click={handleServiceClick}
              >Intuitive Readings</a
            >
          </li>
          <li>
            <a href="#pricing-info-section" on:click={handleServiceClick}
              >Pricing & Packages</a
            >
          </li>
        </ul>
      </div>

      <!-- Contact Information -->
      <div class="footer-column">
        <h3>Contact Information</h3>
        <div class="contact-info">
          <div class="contact-item">
            <i class="fas fa-phone"></i>
            <span>(810) 691-5777</span>
          </div>
          <div class="contact-item">
            <i class="fas fa-map-marker-alt"></i>
            <div class="addresses">
              <span>106 W. Lovett Charlotte, MI 48813</span>
              <span>9001 Miller Rd Swartz Creek, MI 48473</span>
            </div>
          </div>
          <div class="contact-item">
            <i class="fas fa-envelope"></i>
            <a href="mailto:GreenTreeEssentialz@gmail.com"
              >GreenTreeEssentialz@gmail.com</a
            >
          </div>
        </div>
      </div>
    </div>

    <!-- Bottom Bar -->
    <div class="footer-bottom">
      <p>&copy; 2025 Green Tree Essentialz. All rights reserved.</p>
    </div>
  </div>
</footer>

<style>
  .footer-section {
    height: 700px;
    position: relative;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .footer-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
  }

  .footer-background img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: center;
  }

  .footer-content {
    position: relative;
    z-index: 2;
    width: 100%;
    max-width: 1200px;
    height: 450px;
    margin: 0 1.5rem;
    padding: 2rem;
    background: #fff5b655;
    border-radius: 16px;
    backdrop-filter: blur(5px);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }

  .footer-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 2rem;
    flex: 1;
  }

  .footer-column h3 {
    color: #53570e;
    font-size: 1.1rem;
    font-weight: 600;
    margin-bottom: 1rem;
    position: relative;
  }

  .footer-column h3::after {
    content: "";
    position: absolute;
    bottom: -6px;
    left: 0;
    width: 30px;
    height: 2px;
    background: #53570e;
    border-radius: 1px;
  }

  .footer-logo img {
    height: 70px;
    width: auto;
    margin-bottom: 1rem;
  }

  .company-description {
    color: #333;
    line-height: 1.5;
    margin-bottom: 1rem;
    font-size: 1rem;
  }

  .social-links {
    display: flex;
    gap: 0.75rem;
  }

  .social-link {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 35px;
    height: 35px;
    background: #53570e;
    color: white;
    border-radius: 50%;
    text-decoration: none;
    transition: all 0.2s ease;
  }

  .social-link:hover {
    background: #fff5b6;
    color: #53570e;
  }

  .footer-links {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  .footer-links li {
    margin-bottom: 0.5rem;
  }

  .footer-links a {
    color: #333;
    text-decoration: none;
    font-size: 1rem;
    transition: color 0.2s ease;
    cursor: pointer;
  }

  .footer-links a:hover {
    color: #53570e;
  }

  .contact-info {
    display: flex;
    flex-direction: column;
    gap: 0.75rem;
  }

  .contact-item {
    display: flex;
    align-items: flex-start;
    gap: 0.5rem;
    color: #333;
    font-size: 1rem;
  }

  .contact-item i {
    color: #53570e;
    margin-top: 0.2rem;
    min-width: 14px;
    flex-shrink: 0;
  }

  .addresses {
    display: flex;
    flex-direction: column;
    gap: 0.2rem;
  }

  .contact-item a {
    color: #333;
    text-decoration: none;
    transition: color 0.2s ease;
  }

  .contact-item a:hover {
    color: #53570e;
  }

  .footer-bottom {
    border-top: 1px solid rgba(255, 255, 255, 0.3);
    padding-top: 1rem;
    text-align: center;
  }

  .footer-bottom p {
    color: #333;
    margin: 0;
    font-size: 0.85rem;
  }

  /* Responsive Design */
  @media (max-width: 1024px) {
    .footer-grid {
      grid-template-columns: repeat(2, 1fr);
      gap: 1.5rem;
    }

    .footer-content {
      height: 500px;
      padding: 1.5rem;
      margin: 0;
      border-radius: 0;
      width: 100%;
    }
  }

  @media (max-width: 768px) {
    .footer-section {
      height: auto;
      min-height: 600px;
    }

    .footer-content {
      height: auto;
      min-height: 450px;
      padding: 1.5rem;
      margin: 0;
      border-radius: 0;
    }

    .footer-grid {
      grid-template-columns: 1fr;
      gap: 1.5rem;
      margin-bottom: 1rem;
    }

    .footer-column h3 {
      font-size: 1rem;
      text-align: center;
    }

    .footer-column h3::after {
      left: 50%;
      transform: translateX(-50%);
    }

    .footer-logo {
      text-align: center;
      display: flex;
      justify-content: center;
    }

    .company-description {
      text-align: center;
      font-size: 0.85rem;
    }

    .social-links {
      justify-content: center;
    }

    .footer-links {
      text-align: center;
    }

    .contact-info {
      text-align: center;
    }

    .contact-item {
      justify-content: center;
      flex-direction: column;
      align-items: center;
      gap: 0.25rem;
    }

    .contact-item i {
      margin-top: 0;
    }
  }

  @media (max-width: 480px) {
    .footer-section {
      height: auto;
      min-height: 550px;
    }

    .footer-content {
      height: auto;
      min-height: 400px;
      padding: 1rem;
      margin: 0;
      border-radius: 0;
    }

    .footer-grid {
      gap: 1rem;
      margin-bottom: 1rem;
    }

    .footer-column h3 {
      font-size: 0.95rem;
    }

    .footer-logo {
      text-align: center;
      display: flex;
      justify-content: center;
    }

    .footer-logo img {
      height: 45px;
    }

    .company-description {
      font-size: 0.8rem;
    }

    .social-link {
      width: 30px;
      height: 30px;
    }

    .footer-links a {
      font-size: 0.85rem;
    }

    .contact-item {
      font-size: 0.85rem;
    }
  }
</style>
