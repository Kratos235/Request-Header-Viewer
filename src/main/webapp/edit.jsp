<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>

    <title>Edit Header Note</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="container">

    <h2>Edit Header Note</h2>

    <form action="${pageContext.request.contextPath}/update" method="post">

        <input type="hidden" name="id" value="${headerRecord.id}">

        <table>

            <tr>
                <td>Header Name</td>
                <td><c:out value="${headerRecord.name}"/></td>
            </tr>

            <tr>
                <td>Header Value</td>
                <td><c:out value="${headerRecord.value}"/></td>
            </tr>

            <tr>
                <td>Client IP</td>
                <td><c:out value="${headerRecord.ip}"/></td>
            </tr>

            <tr>
                <td>Note</td>
                <td>
                    <input type="text" name="note" value="${headerRecord.note}" required>
                </td>
            </tr>

        </table>

        <br>

        <button type="submit" class="btn">Update Note</button>

    </form>

    <br>

    <a class="btn secondary" href="${pageContext.request.contextPath}/history">Back to History</a>

</div>

</body>

</html>