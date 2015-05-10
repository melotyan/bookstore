/*
 * jQuery EasIng v1.1.2 - http://gsgd.co.uk/sandbox/jquery.easIng.php
 *
 * Uses the built In easIng capabilities added In jQuery 1.1
 * to offer multiple easIng options
 *
 * Copyright (c) 2007 George Smith
 * Licensed under the MIT License:
 *   http://www.opensource.org/licenses/mit-license.php
 */

// t: current time, b: begInnIng value, c: change In value, d: duration

var $div_user =$("#user_menu div.text1-nav ul li");
$div_user.click(function(){
	$(this).addClass("selected")
			.sibings().removeClass("selected");
	var index = $div_user.index(this);
	if(index === 0){
		$("#user_info").show();
		$("#cart_info").hide();
		$("#buy_info").hide();
	}
	else if(index === 1){
		$("#user_info").hide();
		$("#cart_info").show();
		$("#buy_info").hide();
	}
	else if(index === 2){
		$("#user_info").hide();
		$("#cart_info").hide();
		$("#buy_info").show();
	}
});

