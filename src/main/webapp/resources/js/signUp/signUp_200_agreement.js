/**
 * link to signUp_200_agreement.jsp
 */

console.log("link to signUp_200_agreement.js");

let $check; 
let $checkAll;
let $disagree;
let $agree;

window.addEventListener('load', function() {
	let textArea = document.getElementsByTagName('textarea');
	let index = 0;
	
	Array.prototype.forEach.call(textArea, function(element){
		getAjax(element.lang, function(value){
			textArea[index++].innerText = value;
		});
	});
});

function matchVariable(){
	$check = $("input[name=check]");
	$checkAll = $("input[name=checkAll]");
	$disagree = $("button.fpmgBt1");
	$agree = $("button.fpmgBt2");
}

function isChecked(){
	for(let index = 0 ; index < $check.length; index++){
		if($check[index].checked != true)
			return false;
	}
	return true;
}	

$(function(){
	matchVariable();
	
	$check.click(function(){
		$checkAll.prop("checked", isChecked());
	});
	
	$checkAll.click(function(){
		let checkBox = this;
		$.each($check, function(){
			this.checked = $checkAll.is(':checked');
		});
		
		console.log($check);
	});
	
	$disagree.click(function(e){
		alert("click");
		e.preventDefault(e);
		window.location.href = "/Thanks.com/autoLink/login_300_main";
	});
	
	$agree.click(function(e){
		console.log("click");
		e.preventDefault(e);
		let bool = isChecked();
		if(bool) window.location.href = "signUp_210_info";
	});
	
});


