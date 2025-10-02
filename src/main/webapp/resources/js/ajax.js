window.addEventListener('DOMContentLoaded', event => {

	
	 
    
    $("#replyConfirm").click(function(){
		
		//alert("ok");
		var param = $("#replyFrm").serialize();
		
		$.ajax({
			type : "post"
			,data: param
			,url : "./replies/new"
			,success : function(result){
				//alert(result);
				$("#content").val('');
				replyList();
			} // success end
			
			,error : function(err){
				//alert("error");
				console.log(err);
			} // error end
		}) //jax end
	}) // function end
	
	replyList();
	function replyList(){
    $.ajax({
        type : "get",
        url : "./replies",
        data: { boardId : $("#boardId").val() },
        dataType : "json",
        success: function(result){
            var replyList = $("#replyList");
            replyList.empty();
            for(row of result){
                var tr = $("<tr/>");
                
                var commentId = $('<td/>').text(row['commentId']);
                tr.append(commentId);
                
                var content = $("<td/>").text(row["content"]);
                tr.append(content);
                
                var userEmail = $("<td/>").text(row["userEmail"]);
                tr.append(userEmail);
                
                var createDate = new Date(row["createDate"]);
                var formattedDate = createDate.getFullYear() + "-" + (createDate.getMonth() + 1) + "-" + createDate.getDate() + " " + createDate.getHours() + ":" + createDate.getMinutes() + ":" + createDate.getSeconds();
                var createDateTd = $("<td/>").text(formattedDate);
                tr.append(createDateTd);
                
                var deleteBtn = $('<td/>').html('<button class="delete">삭제</button>');
                tr.append(deleteBtn);
                
                replyList.append(tr);
                
         	} // for end
            
       
        } //success end
        ,error : function(err){
            console.log(err);
        } //error end
    });// ajax end
} //function end

			// 댓글 삭제 이벤트를 연결합니다.
            $("#replyList").on('click','.delete', function(){
                var postEmail = $(this).closest("tr").find("td:eq(2)").text(); // 해당 댓글의 작성자 이메일을 가져옵니다.
              	var sessionEmail = document.getElementById("userEmail").value;
                if (sessionEmail === postEmail) {
                    var commentId = $(this).closest('tr').find('td:eq(0)').text(); // 삭제할 댓글의 ID를 가져옵니다.
                    
                    $.ajax({
                        type: 'delete',
                        url: './replies/' + commentId,
                        success: function(result){
                        	
                            replyList();
                        } //success end
                        ,error: function(err){
                            alert('삭제 실패');
                            console.log(err);
                        } // error end
                    }); // ajax end
                    
                } else {
                    alert('댓글을 삭제할 권한이 없습니다.');
                    console.log("Session Email:", sessionEmail);
                    console.log("Post Email:", postEmail);
                } //else end
            }); // function end
		
	
	
	$("#replyConfirm2").click(function(){
		
		alert("ok2");
		
	})
	
	adminReplyList();
	function adminReplyList(){
		$.ajax({
			type : "get"
			,url : "./replies"
			,data: { boardId : $("#boardId").val() }
			,dataType : "json"
			,success: function(result){
				
				var adminReplyList = $("#adminReplyList");
				
				adminReplyList.empty();
				for(row of result){
					var tr = $("<tr/>");
					
					var content = $("<td/>").text(row["content"]);
					tr.append(content);
					
					var userEmail = $("<td/>").text(row["userEmail"]);
					tr.append(userEmail);
					
					var createDate = $("<td/>").text(row["createDate"]);
					tr.append(createDate);
					
					adminReplyList.append(tr);
				}
			}
			,error : function(err){
				alert("error");
				console.log(err);
			}
		})
	}
	
	
	

});