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
var radioHeight = "25";
var selectWidth = "190";
var spans=new Object;
span = Array()

/* No need to change anything after this */


document.write('<style type="text/css">input.styled { display: none; } select.styled { position: relative; width: ' + selectWidth + 'px; opacity: 0; filter: alpha(opacity=0); z-index: 5; } .disabled { opacity: 0.5; filter: alpha(opacity=50); }</style>');

var Custom = {
	init: function() {
		var inputs = document.getElementsByTagName("input"), textnode, option, active;
		var i=0;
		for(a = 0; a < inputs.length; a++) {
			
			if((inputs[a].type == "checkbox" || inputs[a].type == "radio") && inputs[a].className == "styled") {
				i++;
				span[i] = document.createElement("span");
				span[i].className = inputs[a].type;

				if(inputs[a].checked == true) {
					if(inputs[a].type == "checkbox") {
						position = "0 -" + (checkboxHeight*2) + "px";
						span[i].style.backgroundPosition = position;
						
					} else {
						position = "0 -" + (radioHeight*2) + "px";
						span[i].style.backgroundPosition = position;
					}
				}
				inputs[a].parentNode.insertBefore(span[i], inputs[a]);
				/*inputs[a].onchange = Custom.clear;
				if(!inputs[a].getAttribute("disabled")) {
					span[i].onmousedown = Custom.pushed;
					span[i].onmouseup = Custom.check;
				} else {
					span[i].className = span[a].className += " disabled";
				}
				*/
				
			}
		}
		
		/*		
		inputs = document.getElementsByTagName("select");
		for(a = 0; a < inputs.length; a++) {
			i++;
			if(inputs[a].className == "styled") {
				option = inputs[a].getElementsByTagName("option");
				active = option[0].childNodes[0].nodeValue;
				textnode = document.createTextNode(active);
				for(b = 0; b < option.length; b++) {
					if(option[b].selected == true) {
						textnode = document.createTextNode(option[b].childNodes[0].nodeValue);
					}
				}
				span[i] = document.createElement("span");
				span[i].className = "select";
				span[i].id = "select" + inputs[a].name;
				span[i].appendChild(textnode);
				inputs[a].parentNode.insertBefore(span[i], inputs[a]);
				if(!inputs[a].getAttribute("disabled")) {
					inputs[a].onchange = Custom.choose;
				} else {
					inputs[a].previousSibling.className = inputs[a].previousSibling.className += " disabled";
				}
			}
		}
		*/
		
	},
	check: function(element, nr){

		span[nr].style.backgroundPosition = element.checked ? "0 -" + (checkboxHeight*2) + "px" : '0px 0px'; 
	}
	}

window.onload = Custom.init;
