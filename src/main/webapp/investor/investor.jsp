<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../header_footer/header.jsp" %>
<h2 class="text-center my-4">List of Investors</h2>
<div class="container">
    <table class="table table-bordered table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Firm</th>
                <th>Industry Focus</th>
                <th>Total Investments</th>
                <th>Location</th>
                <th>Investment Stage</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="investor" items="${investors}">
                <tr>
                    <td>${investor.name}</td>
                    <td>${investor.email}</td>
                    <td>${investor.firm}</td>
                    <td>${investor.industryFocus}</td>
                    <td>${investor.totalInvestments}</td>
                    <td>${investor.location}</td>
                    <td>${investor.investmentStage}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="../header_footer/footer.jsp"%>