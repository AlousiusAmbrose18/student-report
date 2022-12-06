<!DOCTYPE html>    
<html>    
<head>    
    <title>Login Form</title>    
    <style>
    body  
{  
    margin: 0;  
    padding: 0;  
     
    font-family: 'Arial';  
}  
.login{  
        width: 250px;  
        overflow: hidden;  
        margin:0 auto;  
     
        padding: 50px;  
        background: #23463f;  
        border-radius: 15px ;  
          
}  
h2{  
    text-align: center;  
    color: black;  
    padding: 5px;  
}  
label{  
    color: white;  
    font-size: 15px; 
     
}  
#value{  
    width: 200px;  
    height: 20px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
    margin-top:5px;
}  
  
#log{  
    width: 200px;  
    height: 20px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  	margin-top:10px;
  
}  
span{  
    color: white;  
    font-size: 17px;  
}  
a{  
    float: right;  
    background-color: grey;  
}
    </style>    
</head>    
<body>    
    <h2>Add Semester Marks</h2><br>    
    <div class="login">    
   <form  action="/saveMarks" method="POST">

  <label>Roll Number:</label><br>
  <input type="tel" id="value"  name="rollNumber"><br><br>
  
  <label>Semester:</label><br>
  <input type="text" id="value" name="semester"><br><br>
  
  <label>English:</label><br>
  <input type="text" id="value" name="english"><br><br>
  
  <label>Maths:</label><br>
  <input type="text" id="value" name="maths"><br><br>
  
  <label>Science:</label><br>
  <input type="text" id="value" name="science"><br><br>
  
  <button id="log">submit</button>
  <br>
  
</form>
<br>
<br>
<form  action="/viewMark" method="get">
<button>View Marks</button>
</form>         
</div>    
</body>    
</html> 

<