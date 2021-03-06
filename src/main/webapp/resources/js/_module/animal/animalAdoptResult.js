/**
 * link to animalAdoptResult.jsp
 */
console.log("animalAdoptResult.js");

console.log(sido, breed, animal);

let breedMap = new Map();
let abShelterMap = new Map();
let _card;
let _image;

function abAnimalUpdate(no){
	getAjax("abAnimal", function(e){
		// 작성중...
	})
}

window.addEventListener('load', function() {
	_card = document.body.querySelectorAll("#_card");
	
	breedUpdate();
	abShelterUpdate();
	
	//_image = document.body.querySelectorAll("img[alt=Thumbnail]");
	_image = $("img[alt=Thumbnail]");
	_image.click(function(){
		let form = createForm([this.lang], "adopt_510_info");
		form.submit();
		//window.location.href = "adopt_510_info?no=" + this.lang;
	});
	
	console.log(_image);
	
});

function breedUpdate(){
	// breed Map! 생성

	for(let item of breed){
		breedMap.set(item.breedCode, item.breedName);
	}

	// 품종 변경
	updateText(0, breedMap);
}

function abShelterUpdate(e){
	
	getAjax("abShelter", function(e){
		// abShelter Map! 생성
		for(let item of e){
			abShelterMap.set(item.abShelterCode, item.abShelterName);
		}
		
		// 보호소 변경
		updateText(2, abShelterMap);
		
	}, 'POST', null, "JSON");
}

function updateText(i, map){
	
	for(let card of _card){
		let _card_data = card.querySelectorAll("span.data");
		Name = _card_data[i].innerText;
		Code = Name.substring(Name.lastIndexOf(":") + 2).trim();
		Name = Name.substring(0, Name.lastIndexOf(":") + 2);
		_card_data[i].innerText = Name + map.get(parseInt(Code));
	}
}