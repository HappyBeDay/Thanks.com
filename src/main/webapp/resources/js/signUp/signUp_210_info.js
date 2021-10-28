/**
 * link to signUp_210_info.jsp
 */

console.log("link to signUp_210_info.js");

// class
let $id; // id
let $pw; // pw (2)
let $name; // name
let $email; // email
let btn; // btn (2)

// name
let $nickName; // nickName
let $tel; // tel

function matchVariable() {
	let $input = $("input");
	$id = $input.$("loginId");
	console.log($input, $id);
};

$(function() {
	matchVariable();
});
