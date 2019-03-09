// This is where it all goes :)

function animateCSS(element, animationName, callback) {
    const node = document.querySelector(element)
    node.classList.add('animated', animationName)

    function handleAnimationEnd() {
        node.classList.remove('animated', animationName)
        node.removeEventListener('animationend', handleAnimationEnd)

        if (typeof callback === 'function') callback()
    }

    node.addEventListener('animationend', handleAnimationEnd)
}

$( document ).ready(function() {
  $( "li" ).hover(
    function() {
      id = "#" + $( this ).attr("id");
      infoId = "#info-"+ $( this ).attr("id");
      digitId = "#digit-"+ $( this ).attr("id");
      animateCSS(id, 'heartBeat')
      $(infoId).addClass( 'game-detail-show' );
      // $(digitId).addClass( 'digit-show' );
    }, function() {
      id = $( this ).attr("id");
      infoId = "#info-"+ $( this ).attr("id");
      digitId = "#digit-"+ $( this ).attr("id");
      $(infoId).removeClass( 'game-detail-show' );
      // $(digitId).removeClass( 'digit-show' );
    }
  );

  console.log('hi');
});
