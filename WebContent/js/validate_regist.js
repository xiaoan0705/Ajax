function $(id) {  
       return document.getElementById(id);  
   }  
     
   function check() { 
       var name = $("name").value; 
       var password = $("password").value;  
       var repassword = $("repassword").value;  
       var tel = $("tel").value;  
       var email = $("email").value;  
      
       $("nameinfo").innerHTML = "";  
       $("passwordinfo").innerHTML = "";  
       $("repasswordinfo").innerHTML = "";  
       $("telinfo").innerHTML = "";  
       $("emailinfo").innerHTML = "";  
       
       if(name == "") {  
           $("nameinfo").innerHTML = "姓名不能为空";  
            return false;  
        }  
          
        for(var i = 0; i < name.length; i++) {  
            var j = name.subString(i , i+1);  
            if(isNaN(j) == false) {  
                $("nameinfo").innerHTML = '姓名中不能包含数字';  
                return false;  
            }  
        }  
       if(email == "") {  
           $("emailinfo").innerHTML = "Email值不能为空";  
            return false;  
        }  
          
        if(email.indexOf("@") == -1 || email.indexOf(".") == -1) {  
            $("emailinfo").innerHTML = "邮箱格式不正确,必须包含@和.";  
            return false;  
        }  
          
        if(password == "") {  
            $("passwordinfo").innerHTML = "密码不能为空";  
            return false;  
        }  
          
        if(password.length < 6) {  
            $("passwordinfo").innerHTML = "密码长度必须大于或者等于6";  
            return false;  
        }  
          
        if(repassword != password) {  
            $("repasswordinfo").innerHTML = "两次输入的密码不一致";  
            return false;  
        }  
          
       
    }   
      
   
   function checkName() {  //校验姓名  
       $('nameinfo').innerHTML = "";  
       var name = $('name').value;  
       if(name == "") {  
          $("nameinfo").innerHTML = "姓名不能为空";  
           return false;  
       }  
         
       for(var i = 0; i < name.length; i++) {  
           var j = name.subString(i , i+1);  
           if(isNaN(j) == false) {  
               $("nameinfo").innerHTML = '姓名中不能包含数字';  
               return false;  
           }  
       }  
   }
   
   function checkPassword() {  //校验密码  
      $('passwordinfo').innerHTML = "";  
      var password = $('password').value;  
      if(password == "") {  
          $("passwordinfo").innerHTML = "密码不能为空";  
          return false;  
      }  
     
     if(password.length < 6) {  
         $("passwordinfo").innerHTML = "密码长度必须大于或者等于6";  
         return false;  
      }  
   }  
     
   function checkRepassword() { //校验重新输入的密码  
      $('repassword').innerHTML = "";  
      var repassword = $('repassword').value;  
      if(repassword == "") {  
          $("repasswordinfo").innerHTML = "确认密码不能为空";  
          return false;  
      } 
      if(repassword != password) {  
           $("repasswordinfo").innerHTML = "两次输入的密码不一致";  
           return false;  
       }  
   }  
  
   function checkTel() {  //校验手机号  
       $('telinfo').innerHTML = "";  
       var tel = $('tel').value;  
       if(tel == "") {  
            $('telinfo').innerHTML = "Tel值不能为空";  
            return false;  
       }
       if(tel.length!=11) {  
           $("telinfo").innerHTML = "手机号长度必须等于11";  
           return false;  
        } 
   }
   
   function checkEmail() {  //校验Email  
       $('emailinfo').innerHTML = "";  
       var email = $('email').value;  
       if(email == "") {  
            $('emailinfo').innerHTML = "Email值不能为空";  
            return false;  
       }  
         
       if(email.indexOf('@') == -1 || email.indexOf('.') == -1) {  
            $('emailinfo').innerHTML = "Email必须包含@和.";  
            return false;  
       }  
   } 