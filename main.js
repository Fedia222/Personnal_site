// Mobile menu toggle
const toggle = document.querySelector('.nav-toggle');
const nav = document.getElementById('site-nav');
if (toggle && nav) {
  toggle.addEventListener('click', () => {
    const open = nav.classList.toggle('open');
    toggle.setAttribute('aria-expanded', open ? 'true' : 'false');
  });
}

// Current year in footer
const yearEl = document.getElementById('year');
if (yearEl) yearEl.textContent = new Date().getFullYear();

// Header shadow on scroll
const header = document.querySelector('.site-header');
let lastY = 0;
window.addEventListener('scroll', () => {
  const y = window.scrollY || window.pageYOffset;
  header.style.boxShadow = y > 6 ? '0 8px 32px rgba(0,0,0,.06)' : 'none';
  lastY = y;
});

// Reveal on scroll (IntersectionObserver)
const reveals = document.querySelectorAll('.reveal');
if ('IntersectionObserver' in window) {
  const io = new IntersectionObserver((entries) => {
    entries.forEach((e) => {
      if (e.isIntersecting) {
        e.target.classList.add('in-view');
        io.unobserve(e.target);
      }
    });
  }, { threshold: 0.15 });
  reveals.forEach((el) => io.observe(el));
} else {
  // Fallback
  reveals.forEach((el) => el.classList.add('in-view'));
}

// Simple filter for /work
const grid = document.getElementById('work-grid');
const filterButtons = document.querySelectorAll('[data-filter]');
if (grid && filterButtons.length) {
  filterButtons.forEach((btn) => btn.addEventListener('click', () => {
    filterButtons.forEach((b) => b.classList.remove('is-active'));
    btn.classList.add('is-active');
    const f = btn.getAttribute('data-filter');
    grid.querySelectorAll('.work').forEach((card) => {
      const tags = card.getAttribute('data-tags') || '';
      card.style.display = (f === 'all' || tags.includes(f)) ? '' : 'none';
    });
  }));
}

// Tiny parallax for hero avatar
const parallax = document.querySelector('.parallax');
if (parallax) {
  window.addEventListener('mousemove', (e) => {
    const x = (e.clientX / window.innerWidth - 0.5) * 6;
    const y = (e.clientY / window.innerHeight - 0.5) * 6;
    parallax.style.transform = `translate3d(${x}px, ${y}px, 0)`;
  });
}
