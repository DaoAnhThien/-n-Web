const express =require('express');
const router=express.Router();

const tipcontroller = require('../controllers/tipdetailController');

router.get('/:slug',tipcontroller.show);


module.exports= router;