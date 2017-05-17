function initSearchBoxKindLi(){
	var lis = document.getElementById('searchTab').getElementsByTagName('li');
	for(var i = 0; i < lis.length; i++){
		lis.item(i).onclick = function(){
			document.getElementById('searchSelected').innerHTML = this.innerHTML + '<span style="font-size: 10px;">▼</span>';
			document.getElementById('searchTab').style.display = 'none';
		}
	}
	document.getElementById('searchSelected').onclick = function(){
		document.getElementById('searchTab').style.display = 'block';
	}
}

initSearchBoxKindLi();

