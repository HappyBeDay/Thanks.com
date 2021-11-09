/**
 * link to adopt_510_info.jsp
 */

console.log("link to adopt_510_info.js");

let age, sex, tel; 
let date;
let btn;

window.addEventListener('load', function(){
	age = document.body.querySelector("p#age");
	sex = document.body.querySelector("p#sex");
	tel = document.body.querySelector("p#tel");
	date = document.body.querySelectorAll("p[lang=date]");
	
	age.innerText = new Date().getFullYear() - age.innerText + "살";
	let gender = sex.innerText;
	sex.innerText = gender == "M" ? "남자" : gender == "F" ? "여자" : "알수없음";
	let t = tel.innerText;
	tel.innerText = t.substring(0,2) + "-" + t.substring(2,5) + "-" + t.substring(5,t.length);
	
	console.log(date);
	for(let d of date){
		let time = String(d.innerText);
		d.innerText = time.substring(0, time.indexOf(" "));
	}
	
	$("a.btn.btn-secondary").click(function(){
		let form = createForm([this.lang], this.href);
		form.submit();
	});
});
