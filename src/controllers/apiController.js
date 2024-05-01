const connection = require('../config/database');
const { createUser } = require('../models/User');
const { findUserByUsernameAndPassword } = require('../models/User');
const {generateAuthToken} = require('../models/User')
const {findUserByUsername} = require('../models/User')


const HandleRegister = async (req, res) => {
    try {
        let password = req.body.Password;
        let username = req.body.Username;
        console.log (password,username);
        // Kiểm tra xem username đã tồn tại chưa
        const existingUser = await findUserByUsername(username);
        if (existingUser) {
            return res.status(400).json({ error: 'Username already exists' });
        }
        // Tạo người dùng mới
        const userId = await createUser(username, password);
        const token = generateAuthToken(userId);
        // Trả về kết quả
        res.status(200).send({ userId, token }); // Bạn cần định nghĩa biến token trước khi sử dụng nó
    } catch (error) {
        console.error('Error registering user:', error);
        res.status(400).json({ error: error.message });
    }
}

const HandleLogin = async (req, res) => {
    try {
        let password = req.body.Password;
        let username = req.body.Username;
        
        // Kiểm tra thông tin đăng nhập 
        const user = await findUserByUsernameAndPassword(username, password);
        console.log(user)
        if (!user) {
            return res.status(400).json({ error: 'Invalid login credentials' });
        }
        // Tạo token
        const token = generateAuthToken(user.id);
        // Trả về kết quả, bao gồm cả ID của người dùng và token
        res.status(200).send({ userId: user.id, token });
    } catch (error) {
        console.error('Error logging in:', error);
        res.status(400).json({ error: error.message });
    }
}



const HandleForgotPassword = (req,res) => {

}
module.exports = {
    HandleRegister, HandleLogin, HandleForgotPassword
}