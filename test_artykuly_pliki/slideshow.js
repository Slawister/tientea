window.addEvent('domready',function() {
  /* settings */
  var showDuration = 7000;
  var container = $('slides');
  var images = container.getElements('img');
  container = $('slideButtons');
  var slideButtons=container.getElements('*');
  var currentIndex = 0;
  var interval;


  /* opacity and fade */
  images.each(function(img,i){ 
    if(i > 0) {
      img.set('opacity',0);
    }
  });
  $("b1").setStyles({
  "background" : "#000000",
  "color" : "#FFFFFF"
  });
  
		$("b1").addEvent('click', function() {
			$clear(periodicalID);
			fastSwitch(0);
			begin();
		});
		$("b2").addEvent('click', function() {
			$clear(periodicalID);
			fastSwitch(1);
			begin();
		});
		$("b3").addEvent('click', function() {
			$clear(periodicalID);
			fastSwitch(2);
			begin();
		});
		$("b4").addEvent('click', function() {
			$clear(periodicalID);
			fastSwitch(3);
			begin();
		});



	var fastSwitch = function(index){
			$("b"+(currentIndex+1)).setStyles({
				"background" : "#FFFFFF",
				"color" : "#000000"
			});
			images[currentIndex].fade('out');
			images[index].fade('in');
			currentIndex=index;
			$("b"+(currentIndex+1)).setStyles({
				"background" : "#000000",
				"color" : "#FFFFFF"
			});
			
	}
	
	var periodicalID;
	var begin = function() {
		periodicalID = (function() {
			images[currentIndex].fade('out');
			$("b"+(currentIndex+1)).setStyles({
				"background" : "#FFFFFF",
				"color" : "#000000"
			});
			images[currentIndex = currentIndex < images.length - 1 ? currentIndex+1 : 0].fade('in');
			$("b"+(currentIndex+1)).setStyles({
				"background" : "#000000",
				"color" : "#FFFFFF"
			});
		}).periodical(showDuration);
	}
	begin();
	


});