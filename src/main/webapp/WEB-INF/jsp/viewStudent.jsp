	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	        background: grey;  
	        border-radius: 15px ;  
	          
	}  
	h2{  
	    text-align: center;  
	    color: black;  
	    padding: 20px;  
	}  
	table {
	  border-collapse: collapse;
	  width: 50%;
	}
	
	th, td {
	  padding: 8px;
	  text-align: center;
	  border-bottom: 1px solid #ddd;
	} 
	#log1{
		margin-left:25%;
	}
	
	    </style>    
	</head>    
	<body>      
	    <div align="center" id="tab">
	        <table border="1" cellpadding="5">
	            <caption><h2>List of users</h2></caption>
	            <tr>
	                <th>Roll Number</th>
	                <th>Name</th>
	                
	            </tr>
	            <c:forEach var="student" items="${students}">
	                <tr>
	                    <td><c:out value="${student.rollNumber}" /></td>
	                    <td><c:out value="${student.name}" /></td>
	                   
	                </tr>
	            </c:forEach>
	        </table>
	    </div>
	    <br>
	    <br>
	    <form  action="/login" method="get">
	<button id="log1">Add Student</button>
	</form>
	 <br>
	    <br>
	<form  action="/addMark" method="get">
	<button id="log1">Add Mark</button>
	</form>   
	</html> 