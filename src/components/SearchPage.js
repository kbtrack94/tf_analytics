import React, { useState } from 'react';
import axios from 'axios';

function SearchPage() {
  const [filters, setFilters] = useState({
    year: '',
    gender: '',
    season: '',
    event: '',
    name: '',
    team: '',
    time: '',
    mark: '',
    round: '',
    score: '',
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFilters((prevState) => ({
      ...prevState,
      [name]: value,
    }));
  };

  const handleSearch = () => {
    // Perform the search by sending the filters to the backend
    axios.post('/api/search', filters)
      .then((response) => {
        // Handle the response data
        console.log(response.data);
      })
      .catch((error) => {
        // Handle the error
        console.error(error);
      });
  };

  return (
    <div>
      <h1>Database Search</h1>
      <input
        type="text"
        name="year"
        value={filters.year}
        onChange={handleInputChange}
        placeholder="Year"
      />
      {/* Add similar input fields for other filters */}
      <button onClick={handleSearch}>Search</button>
    </div>
  );
}

export default SearchPage;
