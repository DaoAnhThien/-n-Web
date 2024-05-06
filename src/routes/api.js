const express = require('express');
const router = express.Router();
const {HandleRegister} = require('../controllers/apiController');
const {HandleLogin} = require('../controllers/apiController');
const {HandleForgotPassword} = require('../controllers/apiController');
const {HandleForgotPasswordConfirm} = require('../controllers/apiController');

router.post('/Login',HandleLogin);
router.post('/Register',HandleRegister);
router.post('/ForgotPassword',HandleForgotPassword);
router.post('/ForgotPassword/Confirm',HandleForgotPasswordConfirm);
module.exports = router; 