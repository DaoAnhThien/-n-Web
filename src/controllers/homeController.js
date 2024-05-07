const axios = require('axios');
const {isLogging} = require('../models/User');
const getHomepage = (req,res) =>{
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('Homepage', { loggedIn: true, username: username });
} else {
    res.render('Homepage', { loggedIn: false,username: null });
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
const getMeoVat = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('trangmeo', { loggedIn: true, username: username });
} else {
    res.render('trangmeo', { loggedIn: false,username: null });
}
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
    res.render('4meobienthitdaithanhthitmem', { loggedIn: true, username: username });
} else {
    res.render('4meobienthitdaithanhthitmem', { loggedIn: false,username: null });
}
}
const get6luuychonguoimoibatdau = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('6luuychonguoimoibatdau', { loggedIn: true, username: username });
} else {
    res.render('6luuychonguoimoibatdau', { loggedIn: false,username: null });
}
}
const get6Skillslambep = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('6Skillslambep', { loggedIn: true, username: username });
} else {
    res.render('6Skillslambep', { loggedIn: false,username: null });
}
}
const get10bikipchonthucphamtuoi = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('10bikipchonthucphamtuoi', { loggedIn: true, username: username });
} else {
    res.render('10bikipchonthucphamtuoi', { loggedIn: false,username: null });
}
}
const getCachlamsangamdunnuocdien = (req,res) => {
  const loggedIn = req.session.user ? true : false;
  if (loggedIn) {
    const username = req.session.user.username
    res.render('Cachlamsangamdunnuocdien', { loggedIn: true, username: username });
} else {
    res.render('Cachlamsangamdunnuocdien', { loggedIn: false,username: null });
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
    getHomepage,getLogin,getMeoVat,
    get4meobienthitdaithanhthitmem,get6luuychonguoimoibatdau,get6Skillslambep,get10bikipchonthucphamtuoi,getCachlamsangamdunnuocdien,getNauanvoingucoc,
    getBuaSang,getBuaTrua,getbanhbao,getbanhtrungthu,getbunca,getburntcheesecakememchay,getchangasaot,getyenmachsuachua,getRegister,getProfile,
     getLogout, getForgotPassword
}