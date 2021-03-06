<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.MessageFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="http://localhost:7070${pageContext.request.contextPath}/resources/css/default.css"
	type="text/css" rel="stylesheet" />
<title>Java Error</title>
<style>
body {
	font-size: 12pt
}

.minus {
	background:
		url(http://localhost:7070${pageContext.request.contextPath}/resources/images/minus1.jpg)
		no-repeat left top;
	padding-left: 20px
}

h4 {
	font-size: 14pt;
	font-weight: 500;
}

h3 {
	cursor: pointer
}

.plus {
	background:
		url(http://localhost:7070${pageContext.request.contextPath}/resources/images/plus1.jpg)
		no-repeat left top;
	padding-left: 20px;
}

.traceClosed {
	display: none
}

.traceShow {
	display: block
}
</style>
</head>
<body>
	<script type="text/javascript">
		function toggle(el) {
			//alert("toggle");
			var next = el.nextElementSibling;
			if (next.getAttribute("class") == "traceClosed") {
				next.setAttribute("class", "traceShow");
				el.setAttribute("class", "minus");
			} else {
				next.setAttribute("class", "traceClosed");
				el.setAttribute("class", "plus");
			}
		}
	</script>

	<div class="wrapper">
		<h1>Java Error Occurred</h1>
		<h2>
			<a
				href="http://localhost:7070${pageContext.request.contextPath}/index.jsp">Home</a>
		</h2>
		<br>
		<hr />
		<h3 class="plus" onclick="toggle(this)">Technical Support:</h3>
		<div id="trace" class="traceClosed">
			<c:out value="${javaErrKey.message}" escapeXml="false" />
			<br />
			<br />
			<h4>Stack Trace</h4>
			<blockquote>
				<c:out value="${stackTrace}" escapeXml="false" />
				<br />
				<br />
			</blockquote>

		</div>
	</div>
	<!-- end wrapper -->
</body>
</html>