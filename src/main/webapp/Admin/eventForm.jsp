<%@ include file="../header_footer/header.jsp" %>
<main
	class="d-flex align-items-center primary-background banner-background"
	style="height: 100vh">
<div class="container mt-4 pt-4">
    <div class="card">
        <div class="card-header text-center">
            <h2>Add Event Details</h2>
        </div>
        <div class="card-body">
            <form action="events" method="post">
                <div class="mb-3">
                    <label for="venue" class="form-label">Event Venue:</label>
                    <input type="text" class="form-control" id="venue" name="venue" required>
                </div>
                
                <div class="mb-3">
                    <label for="name" class="form-label">Event Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                
                <div class="mb-3">
                    <label for="date" class="form-label">Event Date:</label>
                    <input type="date" class="form-control" id="date" name="date" required>
                </div>
                
                <div class="mb-3">
                    <label for="description" class="form-label">Description:</label>
                    <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
                </div>
                
                <div class="text-center">
                    <input type="submit" class="btn btn-primary" value="Submit">
                </div>
            </form>
        </div>
    </div>
</div></main>



<%@include file="../header_footer/footer.jsp"%>