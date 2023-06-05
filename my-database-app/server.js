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

async function fetchTableAndColumnNames() {
  try {
    const tablesQuery = `
      SELECT table_name
      FROM information_schema.tables
      WHERE table_schema = 'public'
        AND table_type = 'BASE TABLE';
    `;

    const tablesResult = await pool.query(tablesQuery);
    const tableNames = tablesResult.rows.map(row => row.table_name);

    const columnsQuery = `
      SELECT table_name, column_name
      FROM information_schema.columns
      WHERE table_schema = 'public';
    `;

    const columnsResult = await pool.query(columnsQuery);
    const columnsByTable = {};

    columnsResult.rows.forEach(row => {
      const tableName = row.table_name;
      const columnName = row.column_name;

      if (!columnsByTable[tableName]) {
        columnsByTable[tableName] = [];
      }

      columnsByTable[tableName].push(columnName);
    });

    return { tableNames, columnsByTable };
  } catch (error) {
    console.error('Error fetching table and column names:', error);
    throw error;
  }
}

let tableNames;
let columnsByTable;

fetchTableAndColumnNames()
  .then(result => {
    tableNames = result.tableNames;
    columnsByTable = result.columnsByTable;
  })
  .catch(error => {
    console.error('Error initializing table and column names:', error);
    process.exit(1);
  });
