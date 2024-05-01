const axios = require('axios');
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
const postRegister = async (req,res) => {

  const password = req.body.Password;
  const username = req.body.Username;
  const CFPassword = req.body.RetypePassword
  // kiểm tra xem password và CFPassword có giống nhau không
  if (password !== CFPassword) {
    return res.status(400).json({ error: 'Password and Confirm Password do not match' });
}
  try {
      // Gọi tới API /v1/Register
      const registerResponse = await axios.post('http://localhost:3000/v1/Register', {Username: username,Password: password});
      
      // Kiểm tra mã trạng thái của phản hồi từ API
      if (registerResponse.status === 200) {
          // Nếu mã trã về là 200, có nghĩa là đăng ký thành công
          req.session.user = {
            username: username,
            token: registerResponse.data.token // Giả sử API trả về token khi đăng nhập thành công
        };
          // Chuyển hướng người dùng đến trang homepage
          res.redirect('/');
      } else {
          // Xử lý trường hợp đăng ký không thành công
          // Hiển thị thông báo lỗi cho người dùng
          res.status(400).send('Đăng ký không thành công. Vui lòng kiểm tra lại thông tin và thử lại.');
      }
  } catch (error) {
      // Xử lý lỗi nếu có
      console.error('Đăng ký không thành công:'+ error);
      res.status(500).send('Đăng ký không thành công. Vui lòng thử lại sau.');
  }

}
const postLogin = async (req,res) => {
  const password = req.body.Password;
  const username = req.body.Username;
  try {
    // Gọi tới API /v1/Login
    const LoginResponse = await axios.post('http://localhost:3000/v1/Login', {Username: username,Password: password});
    
    // Kiểm tra mã trạng thái của phản hồi từ API
    if (LoginResponse.status === 200) {
        // Lưu thông tin người dùng vào session hoặc cookie
        req.session.user = {
          username: username,
          token: LoginResponse.data.token // Giả sử API trả về token khi đăng nhập thành công
      };
        res.redirect('/');
    } else {
        // Xử lý trường hợp đăng ký không thành công
        // Hiển thị thông báo lỗi cho người dùng
        res.status(400).send('Đăng nhập không thành công. Vui lòng kiểm tra lại thông tin và thử lại.');
    }
} catch (error) {
    // Xử lý lỗi nếu có
    console.error('Đăng nhập không thành công:'+ error);
    res.status(500).send('Đăng nhập không thành công. Vui lòng thử lại sau.');
}
}
module.exports = {
    getHomepage,getLogin,getMeoVat,
    get4meobienthitdaithanhthitmem,get6luuychonguoimoibatdau,get6Skillslambep,get10bikipchonthucphamtuoi,getCachlamsangamdunnuocdien,getNauanvoingucoc,
    getBuaSang,getBuaTrua,getbanhbao,getbanhtrungthu,getbunca,getburntcheesecakememchay,getchangasaot,getyenmachsuachua,getRegister,getProfile,
    postRegister, postLogin 
}