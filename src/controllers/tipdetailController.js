const  tips=require('../model/tip');
const connection = require('../config/database');

class tipcontroller{
    //Get /Meo/:slug
    show(req,res){
        res.send('courese');
    }
}

module.exports=new tipcontroller();