window.onload=setCTime;	//	페이지 로드되자 마자 동작함.

function calc(){
	var x=document.getElementById("x");
	var y=document.getElementById("y");
	var sum=document.getElementById("sum");
	//sum.value=num1.value+num2.value;	//	문자열의 덧셈으로 나오게 됨.
	sum.value=parseInt(x.value)+parseInt(y.value);
}

var computerNumber=Math.floor(Math.random()*100+1);
var nGuesses=0;	//	추측횟수 => 전역변수로 함수밖에 선언.(추측횟수 누적)

function guess(){
	var user=document.getElementById('user');
	var result=document.getElementById('result');
	var guesses1=document.getElementById('guesses');
	nGuesses++;

	if(parseInt(user.value)>computerNumber)
		result.value="높습니다";
	else if(parseInt(user.value)<computerNumber)
		result.value="낮습니다";
	else
		result.value="정답입니다";

	guesses1.value=nGuesses;
}

function replay(){
	var user=document.getElementById('user');
	var result=document.getElementById('result');
	var guesses1=document.getElementById('guesses');

	computerNumber=Math.floor(Math.random()*100+1);
	guesses1.value="";
	result.value="";
	user.value="";
	nGuesses=0;
}

function setCTime(){
	var now=new Date();
	var str="";

	switch(now.getMonth()){
		case 0:
			str="January";
			break;
		case 1:
			str="Feburary";
			break;
		case 2:
			str="March";
			break;
		case 3:
			str="April";
			break;
		case 4:
			str="May";
			break;
		case 5:
			str="June";
			break;
		case 6:
			str="July";
			break;
		case 7:
			str="August";
			break;
		case 8:
			str="September";
			break;
		case 9:
			str="October";
			break;
		case 10:
			str="November";
			break;
		case 11:
			str="December";
			break;	
	}

	str+=", "+now.getDate()+" "+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds();

	document.getElementById('ctime').innerHTML=str;
	setTimeout('setCTime()', 1000);
}

var POSSIBLE_WORDS=["abdurate", "verisimilitude", "defenestrate","obsequious", "dissonant", "toady","idempotent"];	//	7개 단어목록
var MAX_GUESSES=6;	// 남은 기회

var guesses="";	//	사용자 입력 문자열
var guessCount=MAX_GUESSES;	//	guessCount는 추측을 못했을 때만 1씩 감소
var word;	//	랜덤 문자열

function newGame(){
	var wordSize=POSSIBLE_WORDS.length;	//	전체 단어 목록의 단어개수를 구함
	var index=parseInt(Math.random()*wordSize);	//	단어목록의 인덱스를 랜덤으로 설정
	
	word=POSSIBLE_WORDS[index];	//	단어 중 랜덤으로 하나 선택
	guessCount=MAX_GUESSES;	//	guessCount 초기화
	guesses="";	//	guesses 초기화

	var btn=document.getElementById('guessbutton');
	btn.disabled=false;	//	guessbutton을 활성화.

	updatePage();
}

function updatePage(){
	var clue=document.getElementById('clue');
	var guessstr=document.getElementById('guessstr');
	var hangmanpic=document.getElementById('hangmanpic');
	var clueString="";

	for(var i=0; i<word.length; i++){	//	word의 요소만큼 반복
		if(guesses.indexOf(word[i])>=0)	//	guesses(사용자가 이제까지 입력했던 문자열) 중에서 word하나하나를 비교하여 guesses에 word요소가 포함된 경우
			clueString+=guesses.charAt(guesses.indexOf(word[i]));
		else	//	입력한 문자요소가 word의 철자에 포함되지 않은 경우
			clueString+="_ ";
	}

	clue.innerHTML=clueString;	//	clue문자열을 출력(맞힌문자+"_")

	if(clue.innerHTML.indexOf('_')<0)	//	이긴 경우
		guessstr.innerHTML="you win";	
	else if(guessCount==0)	//	진 경우
		guessstr.innerHTML="you lose";
	else{	//	나머지는 문자열로 출력
		guessstr.innerHTML="Guesses: "+guesses;
	}

	hangmanpic.src="hangman"+guessCount+".gif";	//	해당 count의 이미지로 매핑
}

function guessLetter(){
	var letter=document.getElementById('hguess');
	var clueString=document.getElementById('clue');

	if(guessCount==0 || clueString.innerHTML.indexOf('_')<0 || guesses.indexOf(letter.value)>=0)	//	게임에서 진 경우/게임에서 이긴 경우/letter가 이미 guesses에 포함된 문자이면 return(updatePage()실행 안함)
		return;

	//	새로운 문자인 경우
	guesses+=letter.value;	//	입력받은 문자 추가

	if(word.indexOf(letter.value)<0)	//	word에 letter가 포함되지 않은 경우만 남은 기회 감소
		guessCount--;

	updatePage();
}