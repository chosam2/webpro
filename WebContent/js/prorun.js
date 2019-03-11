/**
 * 
 */

function textPrint() {
	
	//랜덤하게 문자를 출력
	txt = parseInt(Math.random() * 101);
	
	//div에 출력
	vdiv = document.getElementById("result");
	
	vdiv.style.fontSize = '2.0em';
	vdiv.style.textAlign = 'center';
	vdiv.textContent = txt;
}