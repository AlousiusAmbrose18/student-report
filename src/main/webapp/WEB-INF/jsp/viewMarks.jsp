	
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
	                <th>Semester</th>
	                <th>English</th>
	                <th>Maths</th>
	                <th>Science</th>
	                <th>Total</th>
	                <th>Average</th>
	                
	            </tr>
	            <c:forEach var="mark" items="${marks}">
	                <tr>
	                    <td><c:out value="${mark.rollNumber}" /></td>
	                    <td><c:out value="${mark.semester}" /></td>
	                    <td><c:out value="${mark.english}" /></td>
	                    <td><c:out value="${mark.maths}" /></td>
	                    <td><c:out value="${mark.science}" /></td>
	                    <td><c:out value="${mark.total}" /></td>
	                    <td><c:out value="${mark.average}" /></td>
	                    
	                    
	                   
	                </tr>
	            </c:forEach>
	        </table>
	    </div>
	    <br>
	    <br>
	    <form  action="/addMark" method="get"  ">
	<button id="log1">Add Mark</button> </form>
	<br>
	<br>
	<form  action="/avgOfClass" method="get"  ">
	<button id="log1">Average of Class</button>
	<br><h2 style="margin-left:5%">${avgOfClass}</h2>
	</form>   
	</html> 