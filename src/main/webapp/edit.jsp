<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.Header" %>

<html>

<head>

    <title>Edit Header Note</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="container">

    <h2>Edit Header Note</h2>

    <%
        Header h = (Header) request.getAttribute("header");
    %>

    <form action="<%=request.getContextPath()%>/update" method="post">

        <input type="hidden" name="id" value="<%=h.getId()%>">

        <table>

            <tr>
                <td>Header Name</td>
                <td><%=h.getName()%></td>
            </tr>

            <tr>
                <td>Header Value</td>
                <td><%=h.getValue()%></td>
            </tr>

            <tr>
                <td>Client IP</td>
                <td><%=h.getIp()%></td>
            </tr>

            <tr>
                <td>Note</td>
                <td>
                    <input type="text" name="note" value="<%=h.getNote()%>" required>
                </td>
            </tr>

        </table>

        <br>

        <button type="submit" class="btn">Update Note</button>

    </form>

    <br>

    <a class="btn secondary" href="<%=request.getContextPath()%>/history">Back to History</a>

</div>

</body>

</html>