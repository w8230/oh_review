    function check_id(){
    var member_id = $('#member_id').val();
    if($("#member_id").val() == ''){
    alert('아이디를 입력해주세요.'); return;}
    	$.ajax({
    		type:'POST',
    		url:"check_id",
    		data:{"member_id":frm.member_id.value},
    		dataType:"text",
    		success : function(result){
    		if(result == 1){
    			alert("중복된 아이디입니다.");
    		} else {
    			alert("사용가능한 아이디입니다.");
    			$get("#check_id");
    		}
    		}
    	}); //ajax종료
    }

$(function(){
	$("#member_email").keyup(function(){
		$.ajax({
			url : "check_email",
			type : "POST",
			data : {
			member_email : $("#member_email").val()
			},
			success : function(result) {
				if (result == 1) {
					$('font[name=check_email]').html(" 중복").css("color","red");;
				} else {
					$('font[name=check_email]').html(" 사용가능").css("color","blue");
				}
			},
		})
	});
})