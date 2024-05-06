require('dotenv').config()
const express = require('express')
const path = require('path')
const configViewEngine = require('./config/viewEngine');
const webRouters = require('./routes/web');
const connection = require('./config/database');


const app = express()
const PORT = process.env.PORT || 3000;
const HOST_NAME = process.env.HOST_NAME;

//Routers
configViewEngine(app);
app.use('/',webRouters);


app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});