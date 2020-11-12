<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.time.LocalTime"%>
<jsp:useBean id="T"  class="wait.T" />
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP</title>
<style type="text/css">
#loader {
  border: 16px solid #f3f3f3; /* Light grey */
  border-top: 16px solid #3498db; /* Blue */
  border-radius: 50%;
  width: 120px;
  height: 120px;
  animation: spin 2s linear infinite;
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
 
</style>
</head>
<body>

<button onclick="btn_clicked()">按下去</button> <br>
ID = <div id="result"></div>


<div id="loader"></div>

</body>

<script type="text/javascript">
function loadData(callback_function) {
	document.getElementById("result").innerHTML=<%=T.open()%>;
	callback_function();
}

function finish() {
	document.getElementById("loader").style.display="none";
}

function btn_clicked() {
	loadData(finish);
}

</script>
</html>