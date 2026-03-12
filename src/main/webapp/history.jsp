<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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

            <div class="toolbar">
                <input type="text" id="searchBox" placeholder="Search by name, value, IP..." class="search-input">
                <span class="record-count">Total records: ${fn:length(list)}</span>
            </div>

            <table id="historyTable">

                <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Value</th>
                    <th>IP</th>
                    <th>Note</th>
                    <th>Actions</th>
                </tr>
                </thead>

                <tbody>
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
                            <form action="${pageContext.request.contextPath}/delete" method="post" style="display:inline;"
                                  onsubmit="return confirm('Are you sure you want to delete this record?');">
                                <input type="hidden" name="id" value="${h.id}">
                                <button type="submit" class="btn secondary">Delete</button>
                            </form>
                        </td>

                    </tr>

                </c:forEach>
                </tbody>

            </table>

            <p id="noResults" style="display:none; color:#999;">No matching records found.</p>

            <form action="${pageContext.request.contextPath}/clearAll" method="post" style="display:inline;"
                  onsubmit="return confirm('This will delete ALL records. Are you sure?');">
                <button type="submit" class="btn danger">Clear All Records</button>
            </form>

        </c:otherwise>
    </c:choose>

    <br>

    <a class="btn" href="${pageContext.request.contextPath}/">Back to Home</a>

</div>

<script>
    document.getElementById('searchBox').addEventListener('keyup', function () {
        var filter = this.value.toLowerCase();
        var rows = document.querySelectorAll('#historyTable tbody tr');
        var visibleCount = 0;

        rows.forEach(function (row) {
            var text = row.textContent.toLowerCase();
            if (text.indexOf(filter) > -1) {
                row.style.display = '';
                visibleCount++;
            } else {
                row.style.display = 'none';
            }
        });

        document.getElementById('noResults').style.display = visibleCount === 0 ? '' : 'none';
    });
</script>

</body>
</html>

