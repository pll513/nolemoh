(function(w, d){
  
  var btnNavbarToggle = d.getElementById('navbar-toggle'),
    mobileNav = d.getElementById('mobile-nav');
  btnNavbarToggle.addEventListener('click', function (e) {
    var target = e.target;
    if (~target.className.indexOf('active')) {
      target.className = target.className.replace(/(\s|^)active(\s|$)/, ' ');
      // mobileNav.className += ' none';
      mobileNav.className = mobileNav.className.replace(/(\s|^)active(\s|$)/, ' ');
    } else {
      target.className += ' active';
      // mobileNav.className = mobileNav.className.replace(/(\s|^)none(\s|$)/, ' ');
      mobileNav.className += ' active';
    }
  });
  
})(window, document);