const express = require('express');
const {getHomepage} = require('../controllers/homeController');
const {getLogin} = require('../controllers/homeController');
const {getRegister} = require('../controllers/homeController');
const {getProfile} = require('../controllers/homeController');
const {getMeoVat} = require('../controllers/homeController');
const {get4meobienthitdaithanhthitmem} = require('../controllers/homeController');
const {get6luuychonguoimoibatdau} = require('../controllers/homeController');
const {get6Skillslambep} = require('../controllers/homeController');
const {get10bikipchonthucphamtuoi} = require('../controllers/homeController');
const {getCachlamsangamdunnuocdien} = require('../controllers/homeController');
const {getNauanvoingucoc} = require('../controllers/homeController');
const {getBuaSang} = require('../controllers/homeController');
const {getBuaTrua} = require('../controllers/homeController');
const {getbanhbao} = require('../controllers/homeController');
const {getbanhtrungthu} = require('../controllers/homeController');
const {getbunca} = require('../controllers/homeController');
const {getburntcheesecakememchay} = require('../controllers/homeController');
const {getchangasaot} = require('../controllers/homeController');
const {getyenmachsuachua} = require('../controllers/homeController');
const {postRegister} = require('../controllers/homeController');
const {postLogin} = require('../controllers/homeController');
const {getLogout} = require('../controllers/homeController');
const {getForgotPassword} = require('../controllers/homeController');
const route = require('color-convert/route');
const router = express.Router();

// Middleware kiểm tra xem người dùng đã đăng nhập hay chưa
const checkLoggedIn = (req, res, next) => {
    // Kiểm tra xem người dùng đã đăng nhập hay chưa
    if (req.session.loggedIn) {
        // Nếu đã đăng nhập, gán thông tin người dùng vào req.locals để truy cập trong file view
        req.locals.username = req.session.username;
    }
    // Tiếp tục xử lý các yêu cầu tiếp theo
    next();
  };
router.get('/',checkLoggedIn,getHomepage);

router.get('/Login',getLogin);
router.post('/Login',postLogin);

router.get('/Register',getRegister);
router.post('/Register/',postRegister);

router.get('/Logout',getLogout);

router.get('/ForgotPassword',getForgotPassword);
router.get('/Profile',getProfile);

// Trang meo
router.get('/MeoVat',getMeoVat);
// Trang chi tiet meo
router.get('/MeoVat/4-meo-bien-thit-dai-thanh-thit-mem', get4meobienthitdaithanhthitmem); 
router.get('/MeoVat/6-luu-y-cho-nguoi-moi-bat-dau', get6luuychonguoimoibatdau);
router.get('/MeoVat/6-Skills-lam-bep', get6Skillslambep); 
router.get('/MeoVat/10-bi-kip-chon-thuc-pham-tuoi', get10bikipchonthucphamtuoi); 
router.get('/MeoVat/Cach-lam-sang-am-dun-nuoc-dien', getCachlamsangamdunnuocdien);
router.get('/MeoVat/Nau-an-voi-ngu-coc', getNauanvoingucoc); 
// Trang mon an
router.get('/MonAn/Bua-Sang',getBuaSang);
router.get('/MonAn/Bua-Trua',getBuaTrua);
// Trang chi tiet mon an
router.get('/MonAn/Banh-bao', getbanhbao); 
router.get('/MonAn/Banh-trung-thu', getbanhtrungthu); 
router.get('/MonAn/Bun-ca', getbunca);
router.get('/MonAn/burnt-cheese-cake-mem-chay', getburntcheesecakememchay);
router.get('/MonAn/chan-ga-sa-ot', getchangasaot);
router.get('/MonAn/yen-mach-sua-chua', getyenmachsuachua);

module.exports = router; 