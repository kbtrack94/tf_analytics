const express = require('express');
const { Pool } = require('pg');

const app = express();

// Configure PostgreSQL connection
const pool = new Pool({
  user: 'tf.admin',
  host: 'localhost',
  database: 'tf_analytics_prd',
  password: 'trackkid',
  port: 5432, // default PostgreSQL port
});

app.get('/search', async (req, res) => {
  const searchTerm = req.query.term;

  try {
    // Query the database for matching records
    const query = 'SELECT * FROM your_table WHERE column ILIKE $1';
    const result = await pool.query(query, [`%${searchTerm}%`]);

    res.json(result.rows);
  } catch (error) {
    console.error('Error executing search query:', error);
    res.status(500).send('An error occurred while searching.');
  }
});

// Start the server
const port = 3000; // You can change this to any port you prefer
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
