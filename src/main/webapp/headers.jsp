<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

    <title>Current Request Headers</title>
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="container">

    <h2>Current Request Headers</h2>

    <table>

        <tr>
            <th>Header</th>
            <th>Value</th>
        </tr>

        <c:forEach var="entry" items="${headers}">

            <tr>
                <td>${entry.key}</td>
                <td>${entry.value}</td>
            </tr>

        </c:forEach>

    </table>

    <a class="btn secondary" href="${pageContext.request.contextPath}/">Back to Home</a>

</div>

</body>
</html>