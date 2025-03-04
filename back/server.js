const express = require('express');
const app = express();
const port = process.env.PORT || 8080; // Vérifie que PORT est bien défini

app.get('/', (req, res) => {
    res.send('Server is running');
});

app.listen(port, '0.0.0.0', () => {
    console.log(`Server running on port ${port}`);
});
