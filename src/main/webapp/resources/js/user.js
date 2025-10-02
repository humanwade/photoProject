$(document).ready(function() {	
		// Email 중복 확인
		$('#your-email-2').on('input',function(){
			var email = $('#your-email-2').val();						// email값이 "email"인 입력란의 값을 저장
			$.ajax({
				url : '../user-pages/emailOverlap.do',						// 컨트롤러에서 요청받을 주소
				type : 'POST',											// POST 방식으로 전달
				data : {email : email},
				success:function(cnt){									// 컨트롤러에서 넘어온 cnt값을 받는다
					if(cnt == 0){										// cnt가 1이 아니면(=0일 경우) => 사용 가능한 Email
						$('.id_ok').css("display","inline-block"); 
	                    $('.id_already').css("display","none");
					}else{												// cnt가 1이면 => 이미 존재하는 Email
						$('.id_already').css("display","inline-block");
						$('.id_ok').css("display","none");
						//alert("Email을 다시 입력해주세요");
						//$('#your-email-2').val('');
					}
				},
				error:function(){
					alert("에러입니다");
				}
			});
		});
		
		// 인증하기 버튼을 눌렀을 때 동작
		$('#mailCheckBtn').click(function(){
			const email = $("#your-email-2").val();		// 이메일 주소값 얻어오기
			alert(email);
			console.log('완성된 이메일 : ' + email);			// 이메일 오는지 확인
			const checkInput = $('.mail-check-box #mailCheckInput')		// 인증번호 입력하는 곳

			$.ajax({
				url : "../user-pages/emailCheck.do", // 이 요청을 처리할 서버의 URL
				type : 'POST',
				data : { email: email },
				success : function(data){
					console.log("data : " + data);
					checkInput.prop('disabled',false);
					code = data;
					alert('인증번호가 전송되었습니다.')
				},
				error:function(){
					alert("에러입니다");
				}
			});	//end of ajax
		});	// end send email
		
		// 인증번호 비교
		// blur -> focus가 벗어나는 경우 발생
		$('#mailCheckInput').blur(function(){
			const inputCode = $(this).val();
			const $resultMsg = $('#mail-check-warn');
			
			if(inputCode === code){
				$resultMsg.html('인증번호가 일치합니다.');
				$resultMsg.css('color','green');
				$('#mailCheckBtn').attr('readonly',true);
				$('#your-email-2').attr('readonly',true);
			}else{
				$resultMsg.html('인증번호가 일치하지 않습니다.');
				$resultMsg.css('color','red');
			}
		});
		
  	});