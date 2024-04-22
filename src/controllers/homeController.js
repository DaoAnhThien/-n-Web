// const connection = require('../config/database');

// const getHomepage = (req,res) => {
//     let user = [];
//     connection.connect((err) => {
//         if (err) {
//           console.error('Error connecting to MySQL database: ' + err.stack);
//           return;
//         }
//         console.log('Connected to MySQL database!');
      
//         // Thực hiện truy vấn sau khi kết nối đã thành công
//         connection.query(
//           'SELECT * FROM chi_tiet_meo',
//           function (err, result, fields) {
//             user = result;
//             if (err) {
//               console.error('Error executing query: ' + err.stack);
//               return;
//             }
//             console.log(">>>result= ", result);
//             res.send(JSON.stringify(user));
//           }
//         );
//       });

// }
const getHomepage = (req,res) =>{
  res.render('Homepage.ejs')
}
const getLogin = (req,res) => {
    res.render('Login.ejs');
}
const getRegister = (req,res) => {
  res.render('SignUp.ejs');
}
const getMeoVat = (req,res) => {
  res.render('trangmeo.ejs');
}
const getProfile = (req,res) => {
  res.render('Userpage.ejs');
}
const get4meobienthitdaithanhthitmem = (req,res) => {
  res.render('4meobienthitdaithanhthitmem.ejs');
}
const get6luuychonguoimoibatdau = (req,res) => {
  res.render('6luuychonguoimoibatdau.ejs');
}
const get6Skillslambep = (req,res) => {
  res.render('6Skillslambep.ejs');
}
const get10bikipchonthucphamtuoi = (req,res) => {
  res.render('10bikipchonthucphamtuoi.ejs');
}
const getCachlamsangamdunnuocdien = (req,res) => {
  res.render('Cachlamsangamdunnuocdien.ejs');
}
const getNauanvoingucoc = (req,res) => {
  res.render('Nauanvoingucoc.ejs');
}
const getBuaSang = (req,res) => {
  res.render('Buasang.ejs');
}
const getBuaTrua = (req,res) => {
  res.render('Buatrua.ejs');
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


module.exports = {
    getHomepage,getLogin,getMeoVat,
    get4meobienthitdaithanhthitmem,get6luuychonguoimoibatdau,get6Skillslambep,get10bikipchonthucphamtuoi,getCachlamsangamdunnuocdien,getNauanvoingucoc,
    getBuaSang,getBuaTrua,getbanhbao,getbanhtrungthu,getbunca,getburntcheesecakememchay,getchangasaot,getyenmachsuachua,getRegister,getProfile
}