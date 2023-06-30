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

	str+=", "+now.getDate()+", "+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds();

	document.getElementById('ctime').innerHTML=str;
	setTimeout(setCTime, 1000);
}

$(document).ready(function(){
	setCTime();	//	시간출력

	//	D0517 실습
	var i=0;
	//	방법1
	//$('div.out').mouseover(function(){
	//	$('div.out p:first').text('mouse over');
	//	$('div.out p:last').text(++i);
	//});

	//$('div.out').mouseout(function(){
	//	$('div.out p:first').text('mouse out');
	//});

	//	방법2
	$('div.out').mouseover(function(){	//	class="out"에 마우스를 올리면
		$('p:first', this).text('mouse over');	//	p:first에 mouse over출력
		$('p:last', this).text(++i);	//	p:last에 횟수 증가+출력
	})

	$('div.out').mouseout(function(){	//	class="out"에서 마우스 커서를 벗어나게 하면
		$('p:first', this).text('mouse out');	//	p:first에 mouse out출력
	})

	//	D0524 실습1
	function maxopen(e){	//	구글 전체화면으로 띄우기
		var maxwindow=window.open(e.data.url, "", e.data.winattributes);	//	e.data.매개변수로 변수값 가져옴.
		maxwindow.moveTo(0,0);
		maxwindow.resizeTo(screen.availWidth, screen.availHeight);
	}

	//	url, winattributes 인자를 maxopen()으로 전달
	$('#max_screen').on('click', {url: 'http://www.google.com', winattributes: 'resize=1, scrollbars=1, status=1'}, maxopen);	

	//	D0524 실습2
	function flash(){	//	#off_test영역에 flash효과
		$('#off_test').show().fadeOut('slow');
	}

	$('#bind').click(function(){	//	#bind버튼 클릭
		$('body')
		.on('click', '#theone', flash)	//	#theone에 클릭 이벤트(flash) 생성
		.find('#theone')
		.text('Can Click!');	//	#theone를 찾아서 Can Click문자열로 채우기
	});

	$('#unbind').click(function(){	//	#unbind버튼 클릭
		$('body')
		.off('click', '#theone', flash)	//	#theone에 클릭 이벤트(flash) 제거
		.find('#theone')
		.text('Does nothing...');	//	#theone를 찾아서 Does nothing...문자열로 채우기
	});

	//	D0524 실습3
	$('#add_img img').click(function(){	//	+버튼을 클릭한 경우 form에 대한 pop-up창을 띄움(+효과적용)
		$('#note_form').addClass('popup').show('slow').fadeIn().slideDown();
	});

	$('#add_note').click(function(){	//	확인버튼을 클릭한 경우
		$('#note_form').hide('slow').fadeOut().slideUp();	//	#note_form 숨기기
		//	#note영역에 #note_form의 입력값들을 덧붙여 출력하기
		$('#note').append($('#note_title').val()+'<br>'+$('#note_date').val()+'<br>'+$('#note_content').val()+'<br><br>');
	});

	//	D0529 실습1(animate에서 css속성을 여러개 지정할 경우에는 ','로 구분)***
	$('#moving_button').click(function(){	//	Click버튼을 클릭한 경우
		$('#moving_box').animate({	//	박스에 대해서
			right: '0px',	//	우측부터 시작
			height: '+=50px',	//	높이, 너비값 50px씩 증가
			width: '+=50px'	//	';'을 붙이지 않음***
		});

		$('#animation_test').animate({	//	박스를 감싸는 영역에 대해서
			height: '+=50px'	//	박스가 커지므로 이 영역도 높이값 증가
		});
	});

	//	D0529 실습2 + D0531 실습1
	$('.accordion').each(function(){
		var dl=$(this);	//	현재 선택한 부분(accordian)의 unit을 dl에 저장
		var alldd=dl.find('dd');	//	해당 unit에서 dd태그를 모두 찾음
		var alldt=dl.find('dt');	//	해당 unit에서 dt태그를 모두 찾음

		function closeAll(){	//	모든 dt와 dd가 closed 상태
			alldd.addClass('closed');
			alldt.addClass('closed');
		}

		function open(dt,dd){	//	현재 선택된 dt와 dd만 열려있는 상태
			dt.removeClass('closed');
			dd.removeClass('closed');
		}

		closeAll();	//	모두 닫혀있는 상태로 초기화

		alldt.click(function(){	//	해당 unit에서 dt를 클릭한 경우
			var dt=$(this);	//	해당 accordian의 dt들 중에서 클릭된 dt를 가져옴
			var dd=dt.next();	//	클릭된 dt 바로 다음에 있는 dd를 반환
			closeAll();	//	다시 모두 닫혀있는 상태로 초기화
			open(dt,dd);	//	선택된 dt와 dd만 open
		});
	});

	//	D0531 실습2
	var interval=4000;	//	4초마다 반복

	$('.slideshow').each(function(){
		var container=$(this);	//	.slideshow 중에 현재 선택된(포커스된) .slideshow객체를 불러옴.
		var timer;	//	동작 타이머

		function switching(){
			var imgs=container.find('img');	//	container내의 모든 이미지를 탐색.
			var first=imgs.eq(0);	//	첫번째 이미지
			var second=imgs.eq(1);	//	두번째 이미지

			//	첫번째 이미지는 container의 가장 마지막으로 보내고 fadeOut()
			first.appendTo(container).fadeOut(2000);	
			//	두번째 이미지는 fadeIn()
			second.fadeIn();
		}	

		function startTimer(){	//	슬라이드쇼 시작
			timer=setInterval(switching, interval);	//	switching동작을 4초마다 반복수행
		}

		function stopTimer(){	//	슬라이드쇼 중지
			clearInterval(timer);
		}

		//	이미지 위에 마우스를 올리면 해당 이미지만 슬라이드 쇼가 멈추고
		//	마우스를 벗어나게 하면 다시 슬라이드쇼 진행
		container.find('img').hover(stopTimer,startTimer);	
		startTimer();	//	처음에는 자동으로 슬라이드 쇼가 동작되도록 설정
	});

	//	D0605실습1<방법1>
	//$('#getText').click(function(){
	//	$('#textbox').text('글자 입력 테스트');
	//	$.get('data.txt', function(data,status){
	//		var students=JSON.parse(data);

	//		for(var i=0; i<students.length; i++){
	//			var str=students[i].name+'<br>';
	//			$('#textbox').append(str);
	//		}
	//	});
	//});

	//	D0605실습1<방법2>
	//$('#getText').click(function(){
	//	$('#textbox').text('글자 입력 테스트');
	//	var req=$.ajax({
	//		url: 'data.txt',
	//		dataType: 'json'
	//	});

	//	req.done(function(data,status){
	//		for(var i=0; i<data.length; i++){
	//			var str=data[i].name+'<br>';
	//			$('#textbox').append(str);
	//		}
	//	});
	//});

	//	D0605실습1<방법3>
	//$('#getText').click(function(){
	//	$('#textbox').text('글자 입력 테스트');
	//	var req=$.ajax('data.txt');
	//	req.done(function(data, status){
	//		var students=JSON.parse(data);
	//		for(var i=0; i<students.length; i++){
	//			var str=students[i].name+'<br>';
	//			$('#textbox').append(str);
	//		}
	//	});
	//});

	//	D0607실습1
	
	var boo1=true;	//	테이블 여러번 뜨는 거 방지

	$('#getText').click(function(){
		if(boo1){
			var tb=$('<table/>');	//	<table> 태그 생성
			//	<tr>태그 생성 후 <th>태그 추가(테이블 제목 부분 추가)
			var row=$('<tr/>').append($('<th/>').text('이름'),$('<th/>').text('아이디'),$('<th/>').text('학과'),$('<th/>').text('수강과목'));
			tb.append(row);	//	<table>태그안의 맨뒤에 row를 붙이기

			var req=$.ajax({
				url: 'data.txt',
				dataType: 'json'
			});

			req.done(function(data,status){
				for(var i=0; i<data.length; i++){	//	테이블 내용 추가
					var str=$('<tr/>').append($('<td/>').text(data[i].name), $('<td/>').text(data[i].id), $('<td/>').text(data[i].department), $('<td/>').text(data[i].class));
					tb.append(str);	//	<table>태그안의 맨뒤에 str를 붙이기
				}

				$('#textbox').append(tb);	//	#textbox에 tb를 붙여야 테이블이 출력됨
				//<방법2>.html()로 바꾸고 boo1변수, 조건문 제거
				//$('#textbox').html(tb);
			});

			boo1=false;
		}
	});
});