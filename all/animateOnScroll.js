var scroll = window.requestAnimationFrame;
var elementsToShow = document.getElementsByClassName('toAnimate');

function loop() {
  for(var i=0; i<elementsToShow.length; i++)
    { if (isElementInView(elementsToShow[i]))
          elementsToShow[i].classList.add('isVisible');
      else
          elementsToShow[i].classList.remove('isVisible');
    }
    scroll(loop);
}

loop();

function isElementInView(el) {
  var rect = el.getBoundingClientRect();
  return (rect.bottom >= (window.innerHeight) && rect.top <= (window.innerHeight)) || (rect.top >= 0 && rect.bottom <= (window.innerHeight));
}