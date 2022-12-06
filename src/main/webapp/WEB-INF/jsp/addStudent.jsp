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
	        width: 382px;  
	        overflow: hidden;  
	        margin: auto;  
	        margin: 20 0 0 450px;  
	        padding: 80px;  
	        background: #23463f;  
	        border-radius: 15px ;  
	          
	}  
	h2{  
	    text-align: center;  
	    color: black;  
	    padding: 20px;  
	}  
	label{  
	    color: white;  
	    font-size: 15px; 
	     
	}  
	#rollnumber{  
	    width: 300px;  
	    height: 30px;  
	    border: none;  
	    border-radius: 3px;  
	    padding-left: 8px;  
	    margin-top:10px;
	}  
	#name{  
	    width: 300px;  
	    height: 30px;  
	    border: none;  
	    border-radius: 3px;  
	    padding-left: 8px;  
	    margin-top:10px;
	}  
	#log{  
	    width: 300px;  
	    height: 30px;  
	    border: none;  
	    border-radius: 17px;  
	    padding-left: 7px;  
	    color: blue;  
	  	margin-top:25px;
	  
	} 
	
	#log1{  
	    width: 150px;  
	    height: 20px;  
	    border: none; 
	    background : white;
	    border-radius: 5px;  
	    padding-left: 7px;  
	    color: black;  
	  	
	  
	} 
	span{  
	    color: white;  
	    font-size: 17px;  
	}  
	a{  
	    float: right;  
	    background-color: grey;  
	}
	li{
		display:inline-block;
	
	}
	
	    </style>    
	</head>    
	<body>    
	    <h2>Add Student Details</h2><br>    
	    <div class="login">    
	    <form id="login" method="post" action="/addstudent">    
	        <form  action="/student" method="POST">
	
	  <label>Roll Number:</label><br>
	  <input  type="tel" id="rollnumber"  name="rollNumber"><br><br>
	  
	  <label>Student name:</label><br>
	  <input type="text" id="name" name="name">
	  
	  <button id="log">submit</button>
	  
	</form>
	<br>
	<br>
	<form  action="/viewStudent" method="get">
	<button id="log1">view students</button>
	</form> 
	<br>
	<form  action="/addMark" method="get"  ">
	<button id="log1">Add Mark</button>
	</form>
	
	  
	
	</div>    
	</body>    
	</html> 