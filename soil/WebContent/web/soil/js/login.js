String.prototype.Trim = function(){ return this.replace(/(^\s*)|(\s*$)/g, "");}
String.prototype.LTrim = function(){ return this.replace(/(^\s*)/g, "");}
String.prototype.RTrim = function(){ return this.replace(/(\s*$)/g, "");}
    function checkinput(){
			//用户名控制
            var usernamevalue=document.getElementById('username').value;
			usernamevalue = usernamevalue.replace(/[ ]/g,"");
            if(usernamevalue.length==0){
            		$('#namekong').html('');
            		$('#namekong').html('用户名不能为空');
            		$('#namekong').show();
    				$('#erromsg').hide();
              	document.getElementById('username').focus();
    		  	showBtn();
        	 	return false;
         	}else if(!(/^1[3456789]\d{9}$/.test(usernamevalue)))
            {
                //alert("手机号码有误，请重填");
                $('#namekong').html('');
            	$('#namekong').html('请输入正确的手机号');
            	$('#namekong').show();   
              	$('#erromsg').hide();
                  return false; 
              }
        	var passwordvalue=document.getElementById('password').value;  
		
		//密码控制
		passwordvalue = passwordvalue.replace(/[ ]/g,"");
        if(passwordvalue.length==0){
	               //alert('请输入密码！');
	                $('#namekong').html('');
            		$('#namekong').html('密码不能为空');
            		$('#namekong').show();
	                //$('#namekong').hide();
    			    //$('#nameerro').hide();
    			    //$('#passwordkong').show();
    			    $('#erromsg').hide();
	            document.getElementById('password').focus();
				showBtn();
	    		return false;
	    }
		
        if(passwordvalue.length>0 && usernamevalue.length>0 ){
    		hideBtn();
            return true;
        }else{
			showBtn();
           	return false;
        }
    }	
    
	function loginSubmit(){
		if(event.keyCode==13){
			if(checkinput()){
        	   	hideBtn();
        		document.getElementById("signinActionForm").submit();
			}
		}
	}	
	
	function showBtn(){
		document.getElementById('login').style.display='';
		document.getElementById('loginload').style.display='none';
	}
		
	function hideBtn(){
		document.getElementById('login').style.display='none';
		document.getElementById('loginload').style.display='';
	}
	
	if (document.addEventListener)  
    {//如果是Firefox   
       document.addEventListener("keypress", fireFoxHandler, true); 
    } 
	else  
    {   
        document.attachEvent("onkeypress", ieHandler);   
    }   
    function fireFoxHandler(evt)  
    {   
		var usernamevalue=document.getElementById('username').value;
		var passwordvalue=document.getElementById('password').value; 
        usernamevalue = usernamevalue.replace(/[ ]/g,"");
		passwordvalue = passwordvalue.replace(/[ ]/g,"");
        if (evt.keyCode == 13 && usernamevalue.length >0 && passwordvalue.length >0)  
        {   
			if(checkinput()){
           	 document.forms[0].submit();   
			}
        }   
    }   
    function ieHandler(evt)  
    {   var usernamevalue=document.getElementById('username').value;
		var passwordvalue=document.getElementById('password').value; 
        usernamevalue = usernamevalue.replace(/[ ]/g,"");
		passwordvalue = passwordvalue.replace(/[ ]/g,"");
        if (evt.keyCode == 13 && usernamevalue.length >0 && passwordvalue.length >0)  
        {   
			if(checkinput()){
	            document.forms[0].submit(); 
				}
        }   
    } 
    
    /*账号密码登录  */
	function clicksubmit(){ 	
			 	if(checkinput()){
	               document.forms[0].submit(); 
				} 
	}
	/* 手机号验证码登录 */
	function phonsubmit(){ 	
	 	if(phonecheck()){
           document.forms[1].submit(); 
		} 
	}
	 function phonecheck(){
		//用户名控制
        var usernamevalue=document.getElementById('phone').value;
		usernamevalue = usernamevalue.replace(/[ ]/g,"");
        if(usernamevalue.length==0){
       		//alert('请输入手机号！');
       		$('#phonekong').html('');
       		$('#phonekong').html('请输入手机号');
            $('#phonekong').show();
          	//$('#phoneerro').hide();
        	//$('#codekong').hide();
          	$('#eer').hide();
          	document.getElementById('phone').focus();
		  	showBtn();
    	 	return false;
     	}else  if(!(/^1[3456789]\d{9}$/.test(usernamevalue)))
        {
            //alert("手机号码有误，请重填");  
            $('#phonekong').html('');
            $('#phonekong').html('请输入正确的手机号');
            $('#phonekong').show();
            //$('#phonekong').hide();
          	//$('#phoneerro').show();
        	//$('#codekong').hide();
          	$('#eer').hide();
            return false; 
        }
    	var passwordvalue=document.getElementById('phonecode').value;  
	
		//验证码控制
		passwordvalue = passwordvalue.replace(/[ ]/g,"");
    	if(passwordvalue.length==0){
            //alert('请输入密码！');
            $('#phonekong').html('');
			$('#phonekong').html('请输入验证码');
           	$('#phonekong').show();
            //$('#phonekong').hide();
          	//$('#phoneerro').hide();
        	//$('#codekong').show();
          	$('#eer').hide();
            document.getElementById('phonecode').focus();
			showBtn();
    		return false;
   	 	}
	
    	if(passwordvalue.length>0 && usernamevalue.length>0 ){
    	var rs=false;
    	$.ajax({
			type: "POST",
			url:'/passport/v1/checkLoginIdentifyCode',
			async:false,
			dataType:"text",//json
			scriptCharset: "utf-8",
			data:"aim=pc&phone="+usernamevalue+"&phonecode="+passwordvalue+"&r="+new Date().getTime(),
			success:function (data){
			console.log(data);
			//var resultDto=eval("("+data+")");    
			if(data=='200'){
				hideBtn();
	        	rs=true;
			}else if(data=='1'){//1 手机号为空  2验证码为空  3验证码错误 4验证码已过期请重新获取
				$('#phonekong').html('');
				$('#phonekong').html('请输入手机号');
           		$('#phonekong').show();
	          	$('#eer').hide();
    	      	document.getElementById('phone').focus();
			  	showBtn();
    	 		rs=false;
			}else if(data=='2'){
				$('#phonekong').html('');
				$('#phonekong').html('验证码为空');
           		$('#phonekong').show();
	          	$('#eer').hide();
    	      	document.getElementById('phonecode').focus();
			  	showBtn();
    	 		rs=false;
			}else if(data=='3'){
				$('#phonekong').html('');
				$('#phonekong').html('验证码错误');
           		$('#phonekong').show();
	          	$('#eer').hide();
    	      	document.getElementById('phonecode').focus();
			  	showBtn();
    	 		rs=false;
			}else if(data=='4'){
				$('#phonekong').html('');
				$('#phonekong').html('验证码已过期请重新获取');
           		$('#phonekong').show();
	          	$('#eer').hide();
    	      	document.getElementById('phonecode').focus();
			  	showBtn();
    	 		rs=false;
			}
		  }
		});
		return rs;
    	}else{
			showBtn();
       		return false;
    	}
	}	
	
	/* 发送验证码跳转后台 */
	function clicksubmitcode(){ 
	    var value=document.getElementById("phone").value;
	    document.getElementById("phone1").value=value;
	    
	    var valueservice=document.getElementById("service").value;
	    document.getElementById("service1").value=valueservice;
	    
       document.forms[2].submit(); 
}
	
	/* 发送验证码验证手机号弹层 */
	function clickyzmBtn(){ 
		  var phonevalue=document.getElementById('phone').value;
	        phonevalue = phonevalue.replace(/[ ]/g,"");
	        if(phonevalue.length==0){
	        $('#phonekong').html('');
			$('#phonekong').html('请输入手机号');
           	$('#phonekong').show();
          	$('#err').hide();
	          	document.getElementById('phone').focus();
			  	showBtn();
	    	 	return false;
	        }else  if(!(/^1[3456789]\d{9}$/.test(phonevalue)))
	        {
	        // alert("手机号码有误，请重填");
	        $('#phonekong').html('');
            $('#phonekong').html('请输入正确的手机号');
            $('#phonekong').show();
          	$('#err').hide();
	            return false; 
	        }else{
	        	$('#codemessage').hide();
	        	aa();//调取生成验证码
	        	$(".tcBox").removeClass("hide");
				$(".closeBtn").click(function(){
					$(".tcBox").addClass("hide");
				})
	        }		
	}
	/*  倒计时*/
	function resetCode(){
		$('#J_getCode').hide();
		$('#J_second').html('60');
		$('#J_resetCode').show();
		var second = 60;
		var timer = null;
		timer = setInterval(function(){
			second -= 1;
			if(second >0 ){
				$('#J_second').html(second);
			}else{
				clearInterval(timer);
				$('#J_getCode').show();
				$('#J_resetCode').hide();
			}
		},1000);
	}
    function aa(){
    	          var temp = new Date().getTime().toString(36);
    	          var phone1=document.getElementById('phone').value;
    	          document.getElementById('MzImgExpPwd').src = '/passport/verifycode.jsp?phone=' + phone1+'&temp='+temp;
    }


