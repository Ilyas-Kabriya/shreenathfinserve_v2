(function () {
  var burger = document.getElementById('burger');
  var nav = document.getElementById('nav');
  var sub = document.querySelector('.has-sub');
  var subBtn = document.querySelector('.sub-btn');

  function closeNav() {
    nav.classList.remove('open');
    burger.setAttribute('aria-expanded', 'false');
  }

  burger.addEventListener('click', function () {
    var open = nav.classList.toggle('open');
    burger.setAttribute('aria-expanded', String(open));
  });
  subBtn.addEventListener('click', function () {
    var open = sub.classList.toggle('open');
    subBtn.setAttribute('aria-expanded', String(open));
  });
  document.addEventListener('click', function (e) {
    if (!sub.contains(e.target)) { sub.classList.remove('open'); subBtn.setAttribute('aria-expanded', 'false'); }
  });
  nav.addEventListener('click', function (e) {
    if (e.target.tagName === 'A') closeNav();
  });

  document.getElementById('year').textContent = new Date().getFullYear();

  var items = document.querySelectorAll('.reveal');
  if ('IntersectionObserver' in window) {
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (en) {
        if (en.isIntersecting) { en.target.classList.add('in'); io.unobserve(en.target); }
      });
    }, { threshold: 0.12 });
    items.forEach(function (el) { io.observe(el); });
  } else {
    items.forEach(function (el) { el.classList.add('in'); });
  }

  var counters = document.querySelectorAll('[data-count]');
  function runCounter(el) {
    var end = +el.dataset.count, pre = el.dataset.prefix || '', suf = el.dataset.suffix || '';
    var start = null, dur = 1600;
    function tick(t) {
      if (start === null) start = t;
      var p = Math.min((t - start) / dur, 1);
      el.textContent = pre + Math.round(end * (1 - Math.pow(1 - p, 3))).toLocaleString('en-IN') + suf;
      if (p < 1) requestAnimationFrame(tick);
    }
    requestAnimationFrame(tick);
  }
  if ('IntersectionObserver' in window && !window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
    var co = new IntersectionObserver(function (entries) {
      entries.forEach(function (en) {
        if (en.isIntersecting) { runCounter(en.target); co.unobserve(en.target); }
      });
    }, { threshold: 0.6 });
    counters.forEach(function (el) { co.observe(el); });
  }

  var WA = '919824886280';
  var form = document.getElementById('enquiry');
  if (!form) return;
  var note = document.getElementById('formNote');

  function build() {
    var m = 'Hello Shreenath Finserve,\nName: ' + form.name.value.trim() +
      (form.company.value.trim() ? '\nCompany: ' + form.company.value.trim() : '') +
      '\nMobile: ' + form.phone.value.trim() +
      (form.email.value.trim() ? '\nEmail: ' + form.email.value.trim() : '') +
      '\nService required: ' + form.service.value +
      (form.msg.value.trim() ? '\nRequirement: ' + form.msg.value.trim() : '');
    return m;
  }
  function valid() {
    var ok = true;
    [form.name, form.phone].forEach(function (f) {
      var bad = !f.value.trim() || (f === form.phone && f.value.replace(/\D/g, '').length < 10);
      f.classList.toggle('err', bad);
      if (bad) ok = false;
    });
    if (!ok) note.textContent = 'Please enter your name and a valid mobile number.';
    return ok;
  }
  form.addEventListener('submit', function (e) {
    e.preventDefault();
    if (!valid()) return;
    window.open('https://wa.me/' + WA + '?text=' + encodeURIComponent(build()), '_blank', 'noopener');
    note.textContent = 'Thank you. Please send the message in WhatsApp and our team will get back to you.';
  });
  var mail = document.getElementById('mailBtn');
  if (mail) mail.addEventListener('click', function () {
    if (!valid()) return;
    window.location.href = 'mailto:md@shreenathfinserve.com?subject=' +
      encodeURIComponent('Enquiry: ' + form.service.value) + '&body=' + encodeURIComponent(build());
  });
})();
