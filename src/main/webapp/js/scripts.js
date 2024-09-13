function filterMentors() {
    const searchInput = document.getElementById('searchInput').value.toLowerCase();
    const industryFilter = document.getElementById('industryFilter').value;
    const mentors = document.getElementsByClassName('mentor');

    Array.from(mentors).forEach(mentor => {
        const name = mentor.getElementsByTagName('h3')[0].innerText.toLowerCase();
        const industry = mentor.getAttribute('data-industry');

        if (
            (name.includes(searchInput) || searchInput === '') &&
            (industry === industryFilter || industryFilter === '')
        ) {
            mentor.style.display = 'block';
        } else {
            mentor.style.display = 'none';
        }
    });
}

document.getElementById('searchForm').addEventListener('submit', function(event) {
  event.preventDefault(); // Prevent the form from submitting
  var searchTerm = document.getElementById('searchInput').value; // Get the search term
  document.getElementById('searchResult').innerText = "You searched for: " + searchTerm; // Display the search term
});
