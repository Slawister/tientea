/*

CUSTOM FORM ELEMENTS

Created by Ryan Fait
www.ryanfait.com

The only things you may need to change in this file are the following
variables: checkboxHeight, radioHeight and selectWidth (lines 24, 25, 26)

The numbers you set for checkboxHeight and radioHeight should be one quarter
of the total height of the image want to use for checkboxes and radio
buttons. Both images should contain the four stages of both inputs stacked
on top of each other in this order: unchecked, unchecked-clicked, checked,
checked-clicked.

You may need to adjust your images a bit if there is a slight vertical
movement during the different stages of the button activation.

The value of selectWidth should be the width of your select list image.

Visit http://ryanfait.com/ for more information.

*/

var checkboxHeight = "25";
var radioHeight = "26";
var selectWidth = "190";
var spans=new Object;
var span = Array();
var radios= Array();

/* No need to change anything after this */


document.write('<style type="text/css">input.rating { display: none; }</style>');

var Custom = {
	init: function() {
		var inputs = document.getElementsByTagName("input");
		span = document.getElementsByTagName('span');
		var i=0;
		for(a = 0; a < inputs.length; a++) {
							
			if(inputs[a].type == "radio") {
				radios[i]=inputs[a];
				i++;
				
			}
		}
		

		
	},
	rate: function(nr){
		//var l=parseInt(element.value);
		for(i = 0; i < radios.length; i++) {
			
			if(i<nr){
				var position = "0 -" + (radioHeight) + "px";
				span[i].style.backgroundPosition = position;
			}
			else{
				span[i].style.backgroundPosition = "0px 0px";
			}
		}
		radios[nr-1].checked=true;
		document.getElementById("rating_text").textContent="("+nr+"/5)";
	},
	check: function(){
		for(i = 0; i < radios.length; i++){
			if(radios[i].checked){
				return(true);
			}
			
		}
		return(false);
	}
}

window.onload = Custom.init;
