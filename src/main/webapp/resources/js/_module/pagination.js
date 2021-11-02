/**
 * link to pagination.jsp
 */

console.log("link to pagination.js");

let pageItems;
let thisUrl;

window.addEventListener('load', function() {
	thisUrl = document.location.href;
	//console.log(thisUrl);
	pageItems = document.body.querySelectorAll("a.page-link");
	
	//console.log(pageItems);
	let no = getParameterByName("no");
	
	if(isEmpty(no)) no = 1;
	pageItems[no].style.pointerEvents = "none";
	pageItems[no].style.color = "grey";
	//console.log(no);
	
	for(let page of pageItems){
		page.href = urlPaging(thisUrl, page);
	}
	pageItems[pageItems.length-1].style.pointerEvents = "none"; 
});


function urlPaging(url, page){
	url = url.substring(0, url.lastIndexOf("?"));
	url += "?no=" + page.innerText;
	return url;
}