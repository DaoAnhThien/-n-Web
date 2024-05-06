const connection = require('../config/database');
const pool= require('../config/database');
const getMeoVat = (req,res,next) => {
  
    let user = [];
    connection.connect((err) => {
        if (err) {
          console.error('Error connecting to MySQL database: ' + err.stack);
          return;
        }
        console.log('Connected to MySQL database!');
        //Thực hiện truy vấn sau khi kết nối đã thành công
        connection.query(
          'SELECT * From meo',
          function (err, result, fields) {
            user = result;
            if (err) {
              console.error('Error executing query: ' + err.stack);
              return;
            }
            console.log(">>>result= ", user);
            res.render('meovat.handlebars',{user})
          }
        );
      })
     
}
const getMeo = (req,res,next) => {
  const slug=req.params.SLUG;
  let user = [];
  let img = [];
  connection.connect((err)=>{
    if(err){
      console.error('Error connecting to MySQL database' +err.stack)
      return;
    }
    console.log('Connect to database succesfully!');
    connection.query(
    'SELECT * from chi_tiet_meo Where SLUG=?', [slug],
    function (err,result,fields){
      let id=result.ID;
      'SELECT * from image_ctmeo where ID_CTMEO=?',[id],
      function (err,result,fields){
            img=result;
      }
      user=result;
      if (err) {
        console.error('Error executing query: ' + err.stack);
        return;
      }
      console.log(">>>result= ", img);
      res.render('chitietmeo.handlebars',{user,img})
    }
    );
  })
}

const getHomepage = (req,res) =>{
  res.render('Homepage.ejs')
}
const getLogin = (req,res) => {
    res.render('Login.ejs');
}
const getRegister = (req,res) => {
  res.render('SignUp.ejs');
}
// const getMeoVat = (req,res) => {
//   res.render('trangmeo.ejs');
// }
const getProfile = (req,res) => {
  res.render('Userpage.ejs');
}
const get4meobienthitdaithanhthitmem = (req,res) => {
  res.render('4meobienthitdaithanhthitmem.ejs');
}
const get6luuychonguoimoibatdau = (req,res) => {
  res.render('6luuychonguoimoibatdau.ejs');
}
// const get6Skillslambep = (req,res) => {
//   res.render('6Skillslambep.ejs');
// }
// const get10bikipchonthucphamtuoi = (req,res) => {
//   res.render('10bikipchonthucphamtuoi.ejs');
// }
const getCachlamsangamdunnuocdien = (req,res) => {
  res.render('Cachlamsangamdunnuocdien.ejs');
}
const getNauanvoingucoc = (req,res) => {
  res.render('Nauanvoingucoc.ejs');
}
const getBuaSang = (req,res) => {
  let user = [];
  let img = [];
  connection.connect((err)=>{
    if(err){
      console.error('Error connecting to MySQL database' +err.stack)
      return;
    }
    console.log('Connect to database succesfully!');
    connection.query(
    'SELECT * from bua_sang',
    function (err,result,fields){
      user=result;
      if (err) {
        console.error('Error executing query: ' + err.stack);
        return;
      }
      console.log(">>>result= ", img);
      res.render('buasang.handlebars',{user})
    }
    );
  })
}
const getBuaTrua = (req,res) => {
  let user = [];
  let img = [];
  connection.connect((err)=>{
    if(err){
      console.error('Error connecting to MySQL database' +err.stack)
      return;
    }
    console.log('Connect to database succesfully!');
    connection.query(
    'SELECT * from bua_trua',
    function (err,result,fields){
      user=result;
      if (err) {
        console.error('Error executing query: ' + err.stack);
        return;
      }
      console.log(">>>result= ", img);
      res.render('buatrua.handlebars',{user})
    }
    );
  })
}
const getbanhbao = (req,res) => {
  res.render('banhbao.ejs');
}
const getbanhtrungthu = (req,res) => {
  res.render('banhtrungthu.ejs');
}
const getbunca = (req,res) => {
  res.render('bunca.ejs');
}
const getburntcheesecakememchay = (req,res) => {
  res.render('burntcheesecakememchay.ejs');
}
const getchangasaot = (req,res) => {
  res.render('changasaot.ejs');
}
const getyenmachsuachua = (req,res) => {
  res.render('yenmachsuachua.ejs');
}
let getMonansang = (req,res) =>{
  const slug=req.params.SLUG;
  let user = [];
  connection.connect((err)=>{
    if(err){
      console.error('Error connecting to MySQL database' +err.stack)
      return;
    }
    console.log('Connect to database succesfully!');
    connection.query(
    'SELECT * from bua_sang Where SLUG=?', [slug],
    function (err,result,fields){
      user = result;
      console.log(">>>result= ", user);
      res.render('chitietmonan.handlebars',{user})
    }
    );
  })
     
}

const getMonantrua = (req,res) =>{
  const slug=req.params.SLUG;
  let user = [];
  connection.connect((err)=>{
    if(err){
      console.error('Error connecting to MySQL database' +err.stack)
      return;
    }
    console.log('Connect to database succesfully!');
    connection.query(
    'SELECT * from bua_trua Where SLUG=?', [slug],
    function (err,result,fields){
      user = result;
      console.log(">>>result= ", user);
      res.render('chitietmonan.handlebars',{user})
    }
    );
  })
     
}

module.exports = {
    getHomepage,getLogin,getMeoVat,getMeo,getMonansang,getMonantrua,
    get4meobienthitdaithanhthitmem,get6luuychonguoimoibatdau,getCachlamsangamdunnuocdien,getNauanvoingucoc,
    getBuaSang,getBuaTrua,getbanhbao,getbanhtrungthu,getbunca,getburntcheesecakememchay,getchangasaot,getyenmachsuachua,getRegister,getProfile
}