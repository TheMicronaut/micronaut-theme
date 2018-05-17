/*! Plugin options and other jQuery stuff */

// Add lightbox class to all image links
$("a[href$='.jpg'],a[href$='.jpeg'],a[href$='.JPG'],a[href$='.png'],a[href$='.gif']").addClass("image-popup");

// Magnific-Popup options
$(document).ready(function() {
  $('.image-popup').magnificPopup({
    type: 'image',
    tLoading: 'Loading image #%curr%...',
    gallery: {
      enabled: true,
      navigateByImgClick: true,
      tCounter: '<span class="mfp-counter">%curr% of %total%</span>', // markup of counter
      preload: [1,1] // Will preload 0 - before current, and 1 after the current image
    },
    image: {
      titleSrc: function(item) {
          return '<p>' + item.el.parent().find('figcaption').text() + '</p>';
      },
      tError: '<a href="%url%">Image #%curr%</a> could not be loaded.',
    },
    removalDelay: 200, // Delay in milliseconds before popup is removed
    // Class that is added to body when popup is open. 
    // make it unique to apply your CSS animations just to this exact popup
    mainClass: 'mfp-with-zoom',
	zoom: {
        enabled: true, // By default it's false, so don't forget to enable it
        duration: 300, // duration of the effect, in milliseconds
        easing: 'ease-in-out' // CSS transition easing function
    }
	
  });
});
