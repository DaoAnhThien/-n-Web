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
const {getMeo} = require('../controllers/homeController');
const {getMonansang} = require('../controllers/homeController');
const {getMonantrua} = require('../controllers/homeController');
//const monancontroller = require('../controllers/monancontroller');

const route = require('color-convert/route');
const router = express.Router();

router.get('/',getHomepage);
router.get('/Login',getLogin);
router.get('/Register',getRegister);
router.get('/Profile',getProfile);



router.get('/MeoVat/4-meo-bien-thit-dai-thanh-thit-mem', get4meobienthitdaithanhthitmem); 
router.get('/MeoVat/6-luu-y-cho-nguoi-moi-bat-dau', get6luuychonguoimoibatdau);
// router.get('/MeoVat/6-Skills-lam-bep', get6Skillslambep); 
// router.get('/MeoVat/10-bi-kip-chon-thuc-pham-tuoi', get10bikipchonthucphamtuoi); 
router.get('/MeoVat/Cach-lam-sang-am-dun-nuoc-dien', getCachlamsangamdunnuocdien);
router.get('/MeoVat/Nau-an-voi-ngu-coc', getNauanvoingucoc); 

// Trang meo
router.get('/MeoVat',getMeoVat);
router.get('/MeoVat/:SLUG',getMeo);




// Trang chi tiet mon an
//router.get('/:slug',monancontroller.show);
router.get('/MonAn/Banh-bao', getbanhbao); 
router.get('/buatrua/Banh-trung-thu', getbanhtrungthu); 
router.get('/MonAn/Bun-ca', getbunca);
router.get('/buatrua/burnt-cheese-cake-mem-chay', getburntcheesecakememchay);
router.get('/buatrua/chan-ga-sa-ot', getchangasaot);
router.get('/MonAn/yen-mach-sua-chua', getyenmachsuachua);

// Trang mon an
router.get('/MonAn/Bua-Sang',getBuaSang);
router.get('/MonAn/Bua-Trua',getBuaTrua);
router.get('/MonAn/:SLUG',getMonansang);
router.get('/buatrua/:SLUG',getMonantrua);
module.exports = router; 