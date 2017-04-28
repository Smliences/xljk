var hide = document.getElementById('hide');
var hide_one = document.getElementById('hide_one');
var hide_two = document.getElementById('hide_two');
var hide_three = document.getElementById('hide_three');

var hider = document.getElementsByClassName('hider');
var hider_one = document.getElementsByClassName('hider_one');
var hider_two = document.getElementsByClassName('hider_two');
var hider_three = document.getElementsByClassName('hider_three');
var i;
	function xianshi() {
		
		if(hider[0].style.display == 'block') {
			for(i=0;i<10;i++){
				hider[i].style.display = 'none';
			}
			
		} else {
			for(i=0;i<10;i++){
				hider[i].style.display = 'block';
			}
		}
				
	}
	function xianshi_one() {
		
		if(hider_one[0].style.display == 'block') {	
			for(i=0;i<10;i++){
				hider_one[i].style.display = 'none';
			}
		} else {
			for(i=0;i<10;i++){
				hider_one[i].style.display = 'block';
			}
		}
				
	}
	function xianshi_two() {
		
		if(hider_two[0].style.display == 'block') {	
			for(i=0;i<10;i++){
				hider_two[i].style.display = 'none';
			}
		} else {
			for(i=0;i<10;i++){
				hider_two[i].style.display = 'block';
			}
		}
				
	}
	function xianshi_three() {
		if(hider_three[0].style.display == 'block') {	
			for(i=0;i<10;i++){
				hider_three[i].style.display = 'none';
			}
		} else {
			for(i=0;i<10;i++){
				hider_three[i].style.display = 'block';
			}
		}
				
	}

