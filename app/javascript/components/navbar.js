const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100) {
				console.log("add class")
        navbar.classList.add('navbar-lewagon-ivory');
      } else {
        navbar.classList.remove('navbar-lewagon-ivory');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
