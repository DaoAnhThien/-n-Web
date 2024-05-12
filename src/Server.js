require('dotenv').config()
const express = require('express')
const session = require('express-session');
const path = require('path')
const configViewEngine = require('./config/viewEngine');
const webRouters = require('./routes/web');
const apiRouters = require('./routes/api');
const bodyParser = require('body-parser');

const app = express()
const PORT = process.env.PORT || 8888;
const HOST_NAME = process.env.HOST_NAME;
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
// Cấu hình express-session
app.use(session({
    secret: process.env.SESSION_SECRET, // Chuỗi bí mật để ký và mã hóa cookie, có thể thay đổi
    resave: false,
    saveUninitialized: true
}));
configViewEngine(app);
//Routers
app.use('/', webRouters);
app.use('/v1', apiRouters);

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});