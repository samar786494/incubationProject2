<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix ="c"%>
 

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Cargo Events:</title>
</head>
<body style = "background-color:lightblue">

<style type = "css/text">
input
{

 outline : none; border: none ;padding 10px;
}

</style>

<h2 align = "center">Available Cargo Events:</h2>



<table width = 100% height = 400 border = "5" align = "center">

Filter:<input type="text" name = "keyword" required/>
<tr>
<th>ID</th>

<th>CLIENT ID</th>

<th>EACH CARGO EVENT ID</th>

<th>CARGO EVENT TYPE</th>
<th>RECEIVED DATE</th>
<th>TIMESTAMP</th>

<th>CONFIDENCE</th>

<th>X</th>

<th>Y</th>

<th>Z</th>

<th>WIDTH</th>
<th>DEPTH</th>
<th>HEIGHT</th>


<th>SC_WIDTH</th>
<th>SC_DEPTH</th>
<th>SC_HEIGHT</th>

<th>IMAGES</th>

</tr>


<c:forEach items="${allObjects}"  var ="object">
<tr>
<td style="text-align:center">${object.id}</td>


<td style="text-align:center">${clientId}</td>

<td style="text-align:center">${object.eachcargoeventid}</td>

<td style="text-align:center">${object.cargoeventtype}</td>

<td style="text-align:center">${object.receiveddate}</td>

<td style="text-align:center">${object.timestamp}</td>

<td style="text-align:center">${object.confidence}</td>



<td style="text-align:center">${object.x}</td>

<td style="text-align:center">${object.y}</td>

<td style="text-align:center">${object.z}</td>


<td style="text-align:center">${object.width}</td>

<td style="text-align:center">${object.depth}</td>

<td style="text-align:center">${object.height}</td>


<td style="text-align:center">${object.sc_width}</td>

<td style="text-align:center">${object.sc_depth}</td>

<td style="text-align:center">${object.sc_height}</td>

<td style="text-align:center"><img src="${object.image}" width=10" height="10"></td>




<td style="text-align:center"> <a href="displayObjects">
         <img alt="click here" src="/Downloads/enterkeyimage.png" width=50" height="70"></a></td>


</tr>


</c:forEach>

</table>

<a href ="showCreateClient">Create Client </a>
<a href ="generateReport">Generate Report </a>

</body>
</html>