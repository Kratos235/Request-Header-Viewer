<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <title>Request Header Viewer</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="container">

    <h1>Request Header Viewer</h1>

    <a class="btn" href="${pageContext.request.contextPath}/HeaderServlet">View Current Request Headers</a>

    <a class="btn secondary" href="${pageContext.request.contextPath}/history">View Header History</a>

</div>

</body>
</html>