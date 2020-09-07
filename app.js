'use strict';

const express = require('express');

// Constants
const HOST = '0.0.0.0';
const PORT = 8080;

// Just return Hello World in our app
const app = express();
app.get('/',(req,res) => {
    res.send('Hello World');
});

// Start listening
app.listen(PORT, HOST);

// Simple output to remind is where we're listening
console.log(`Server running at http://${HOST}:${PORT}/`);
