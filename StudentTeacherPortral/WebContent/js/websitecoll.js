function on() {
    document.getElementById("overlay").style.display = "block";
  }
  
  function off() {
    document.getElementById("overlay").style.display = "none";
  }
window.smoothScroll = function(target) {
    var scrollContainer = target;
    do {
        scrollContainer = scrollContainer.parentNode;
        if (!scrollContainer) return;
        scrollContainer.scrollTop += 1;
    } while (scrollContainer.scrollTop == 0);
    var targetY = 0;
    do { 
        if (target == scrollContainer) break;
        targetY += target.offsetTop;
    } while (target = target.offsetParent);
    scroll = function(c, a, b, i) {
        i++; if (i > 30) return;
        c.scrollTop = a + (b - a) / 30 * i;
        setTimeout(function(){ scroll(c, a, b, i); }, 20);
    }
    scroll(scrollContainer, scrollContainer.scrollTop, targetY, 0);
}
function openForm() {
    document.getElementById("myForm").style.display = "block";
  }
  
  function closeForm() {
    document.getElementById("myForm").style.display = "none";
  }
  function register(){
	  document.getElementById("login").style.display="none";
	  document.getElementById("register").style.display="block";
  }
  function login(){
	  document.getElementById("register").style.display="none";
	  document.getElementById("forgot").style.display="none";
	  document.getElementById("login").style.display="block";
  }
  function forgot(){
	  document.getElementById("login").style.display="none";
	  document.getElementById("forgot").style.display="block";
  }  