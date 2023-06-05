app.get('/search', async (req, res) => {
  const searchTerm = req.query.term;
  const table = req.query.table;
  const column = req.query.column;

  if (!table || !column) {
    return res.status(400).send('Missing required parameters: table and column');
  }

  if (!tableNames.includes(table)) {
    return res.status(400).send('Invalid table name');
  }

  if (!columnsByTable[table].includes(column)) {
    return res.status(400).send('Invalid column name');
  }

  try {
    const query = `SELECT * FROM ${table} WHERE ${column} ILIKE $1`;
    const result = await pool.query(query, [`%${searchTerm}%`]);

    res.json(result.rows);
  } catch (error) {
    console.error('Error executing search query:', error);
    res.status(500).send('An error occurred while searching.');
  }
});
