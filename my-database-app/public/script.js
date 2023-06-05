document.addEventListener('DOMContentLoaded', function() {
    // Get references to the form and results container
    var searchForm = document.getElementById('searchForm');
    var resultsContainer = document.getElementById('results');
  
    // Add submit event listener to the form
    searchForm.addEventListener('submit', function(e) {
      e.preventDefault();
  
      // Get the form data
      var formData = new FormData(searchForm);
  
      // Convert form data to an object
      var filters = {};
      for (var pair of formData.entries()) {
        filters[pair[0]] = pair[1];
      }
  
      // Perform the search by sending the filters to the backend
      // Replace 'http://localhost:3000/api/search' with your backend endpoint
      fetch('http://localhost:3000/api/search', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(filters)
      })
      .then(function(response) {
        // Handle the response data
        return response.json();
      })
      .then(function(data) {
        // Display the results in the results container
        resultsContainer.innerHTML = JSON.stringify(data);
      })
      .catch(function(error) {
        // Handle the error
        console.error(error);
      });
    });
  });
  