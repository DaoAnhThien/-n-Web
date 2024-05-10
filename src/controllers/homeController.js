const axios = require('axios');
const connection = require('../config/database');
const {isLogging} = require('../models/User');
const getHomepage = (req,res) =>{
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('Homepage.ejs', { loggedIn: true, username: username });
} else {
    res.render('Homepage.ejs', { loggedIn: false,username: null });
}
}
const getLogin = (req,res) => {
  res.render('Login.ejs');
}
const getRegister = (req,res) => {
  res.render('SignUp.ejs');
}
const getForgotPassword = (req,res) => {
  res.render('Forgotpassword.ejs')
}
const getMeoVat = (req,res,next) => {
  const loggedIn = req.session.user ? true : false;
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
          //res.render('meovat.handlebars',{user})
          if (loggedIn) {
            const username = req.session.user.username
            res.render('meovat.handlebars', {user, loggedIn: true, username: username });
        } else {
            res.render('meovat.handlebars',{user,loggedIn: false,username: null });
        }
        }
      );
    })
   
}
const getMeo = (req,res,next) => {
  const loggedIn = req.session.user ? true : false;
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
      console.log(">>>result= ", user;
      if (loggedIn) {
        const username = req.session.user.username
        res.render('chitietmeo.handlebars', {user, loggedIn: true, username: username });
    } else {
        res.render('chitietmeo.handlebars',{user,loggedIn: false,username: null });
    }
    }
    );
  })
}
const getProfile = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('Userpage', { loggedIn: true, username: username });
} else {
    res.render('Userpage', { loggedIn: false,username: null });
}
}
const get4meobienthitdaithanhthitmem = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('4meobienthitdaithanhthitmem.ejs', { loggedIn: true, username: username });
} else {
    res.render('4meobienthitdaithanhthitmem.ejs', { loggedIn: false,username: null });
}
}
const get6luuychonguoimoibatdau = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('6luuychonguoimoibatdau.ejs', { loggedIn: true, username: username });
} else {
    res.render('6luuychonguoimoibatdau.ejs', { loggedIn: false,username: null });
}
}
const get6Skillslambep = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('6Skillslambep.ejs', { loggedIn: true, username: username });
} else {
    res.render('6Skillslambep.ejs', { loggedIn: false,username: null });
}
}
const get10bikipchonthucphamtuoi = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('10bikipchonthucphamtuoi.ejs', { loggedIn: true, username: username });
} else {
    res.render('10bikipchonthucphamtuoi.ejs', { loggedIn: false,username: null });
}
}
const getCachlamsangamdunnuocdien = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('Cachlamsangamdunnuocdien.ejs', { loggedIn: true, username: username });
} else {
    res.render('Cachlamsangamdunnuocdien.ejs', { loggedIn: false,username: null });
}
}
const getNauanvoingucoc = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('Nauanvoingucoc', { loggedIn: true, username: username });
} else {
    res.render('Nauanvoingucoc', { loggedIn: false,username: null });
}
}
const getBuaSang = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('BuaSang', { loggedIn: true, username: username });
} else {
    res.render('BuaSang', { loggedIn: false,username: null });
}
}
const getBuaTrua = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('BuaTrua', { loggedIn: true, username: username });
} else {
    res.render('BuaTrua', { loggedIn: false,username: null });
}
}
const getbanhbao = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('banhbao', { loggedIn: true, username: username });
} else {
    res.render('banhbao', { loggedIn: false,username: null });
}
}
const getbanhtrungthu = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('banhtrungthu', { loggedIn: true, username: username });
} else {
    res.render('banhtrungthu', { loggedIn: false,username: null });
}
}
const getbunca = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('bunca', { loggedIn: true, username: username });
} else {
    res.render('bunca', { loggedIn: false,username: null });
}
}
const getburntcheesecakememchay = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('burntcheesecakememchay', { loggedIn: true, username: username });
} else {
    res.render('burntcheesecakememchay', { loggedIn: false,username: null });
}
}
const getchangasaot = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('changasaot', { loggedIn: true, username: username });
} else {
    res.render('changasaot', { loggedIn: false,username: null });
}
}
const getyenmachsuachua = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('yenmachsuachua', { loggedIn: true, username: username });
} else {
    res.render('yenmachsuachua', { loggedIn: false,username: null });
}
}

const getLogout = async (req,res) => {
  try {
    let isLogged = await isLogging(req);
    if (isLogged === false) {
      return res.status(400).send({message: "You are not logged in."});
    }
    req.session.user = null;
    res.redirect('/');
  } catch (error) {
    return res.status(500).send({error: "Server Error"});
  }
}
module.exports = {
    getHomepage,getLogin,getMeoVat,getMeo,
    get4meobienthitdaithanhthitmem,get6luuychonguoimoibatdau,get6Skillslambep,get10bikipchonthucphamtuoi,getCachlamsangamdunnuocdien,getNauanvoingucoc,
    getBuaSang,getBuaTrua,getbanhbao,getbanhtrungthu,getbunca,getburntcheesecakememchay,getchangasaot,getyenmachsuachua,getRegister,getProfile,
     getLogout, getForgotPassword
}