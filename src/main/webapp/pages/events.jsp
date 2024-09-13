<%@ include file="../header_footer/header.jsp" %>
<div class="container mt-5 pt-5">
    <h1 class="mt-5">Events</h1>
    <hr class="w-25 m-auto">
    <div class="mt-4">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Event Venue</th>
                    <th scope="col">Event Name</th>
                    <th scope="col">Event Date</th>
                    <th scope="col">Description</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Event> events = (List<Event>) request.getAttribute("events");
                if (events != null) {
                    for (Event event : events) {
                %>
                    <tr>
                        <td><%= event.getVenue() %></td>
                        <td><%= event.getName() %></td>
                        <td><%= event.getDate() %></td>
                        <td><%= event.getDescription() %></td>
                    </tr>
                <%
                    }
                } else {
                %>
                    <tr>
                        <td colspan="4">No events found.</td>
                    </tr>
                <%
                }
                %>
            </tbody>
        </table>
    </div>
</div>




<%@include file="../header_footer/footer.jsp"%>