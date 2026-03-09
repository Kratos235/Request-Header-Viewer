<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

    <title>Saved Header History</title>
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="container">

    <h2>Saved Header History</h2>

    <c:choose>
        <c:when test="${empty list}">
            <p>No headers have been saved yet.</p>
        </c:when>
        <c:otherwise>

            <table>

                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Value</th>
                    <th>IP</th>
                    <th>Note</th>
                    <th>Actions</th>
                </tr>

                <c:forEach var="h" items="${list}" varStatus="status">

                    <tr>

                        <td>${status.count}</td>
                        <td>${h.name}</td>
                        <td>${h.value}</td>
                        <td>${h.ip}</td>

                        <td class="note-cell">
                            <c:choose>
                                <c:when test="${not empty h.note}">
                                    <span class="note-text">${h.note}</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="note-empty">
                                        <span class="note-dash">&mdash;</span>
                                    </span>
                                </c:otherwise>
                            </c:choose>
                        </td>

                        <td class="actions">
                            <a class="btn" href="${pageContext.request.contextPath}/edit?id=${h.id}">Edit</a>
                            <a class="btn secondary" href="${pageContext.request.contextPath}/delete?id=${h.id}">Delete</a>

                        </td>

                    </tr>

                </c:forEach>

            </table>

        </c:otherwise>
    </c:choose>

    <br>

    <a class="btn" href="${pageContext.request.contextPath}/">Back to Home</a>

</div>

</body>
</html>