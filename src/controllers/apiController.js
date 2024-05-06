const connection = require('../config/database');
const { createUser } = require('../models/User');
const { findUserByUsernameAndPassword } = require('../models/User');
const {generateAuthToken} = require('../models/User')
const {findUserByUsername} = require('../models/User')
const {isLogging} = require('../models/User')
const { findUserByEmail } = require('../models/User');
const {saveConfirmationCode} = require('../models/User');
const {sendConfirmationEmail,updateUserPassword,findUserByIdInConfirmationCode } = require('../models/User');
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



const HandleForgotPassword = async (req, res) => {
    try {
        let EMAIL = req.body.Email;
        
        // Kiểm tra xem email có trong database không
        const user = await findUserByEmail(EMAIL);
        if (!user) {
            return res.status(400).json({ error: 'Invalid login credentials' });
        }
        
        // Tạo mã xác nhận (ví dụ: mã xác nhận ngẫu nhiên)
        const confirmationCode = Math.floor(100000 + Math.random() * 900000);
        
        // Lưu mã xác nhận vào database hoặc cache
        // Đảm bảo rằng bạn lưu mã xác nhận này kèm với thông tin của người dùng 
        // để kiểm tra tính hợp lệ khi người dùng nhập mã xác nhận
        await saveConfirmationCode(user.ID, confirmationCode);
        
        // Gửi mã xác nhận đến Email
        await sendConfirmationEmail(EMAIL, confirmationCode);
        
        // Phản hồi thành công
        return res.status(200).json({ message: 'Confirmation code sent to your email' });
    } catch (error) {
        console.error('Error in HandleForgotPassword:', error);
        return res.status(500).json({ error: 'Internal server error' });
    }
};
const HandleForgotPasswordConfirm = async (req,res) => {
    try {
        // Lấy thông tin từ request body
        let { Email, Code, NewPassword, ConfirmPassword } = req.body;
        // Kiểm tra xem email có trong bảng user không
        const user = await findUserByEmail(Email);
        if (!user) {
            return res.status(400).json({ error: 'Invalid email' });
        }
        // Kiểm tra xem hai mật khẩu có giống nhau không
        if (NewPassword !== ConfirmPassword) {
            return res.status(400).json({ error: 'Passwords do not match' });
        }
        // Kiểm tra xem user id có trong bảng ConfirmationCode không
        const confirmationCodeUser = await findUserByIdInConfirmationCode(user.ID);
        if (!confirmationCodeUser || confirmationCodeUser.code !== Code) {
            return res.status(400).json({ error: 'Invalid or expired confirmation code' });
        }
        //Lưu mật khẩu mới 
        await updateUserPassword (user.ID,NewPassword);
        return res.status(200).json({ message: 'Password updated successfully' });

    } catch (error) {
        // Xử lý lỗi
        console.error('Error in HandleForgotPasswordConfirm:', error);
        return res.status(500).json({ error: 'Internal server error' });
    }
}


module.exports = {
    HandleRegister, HandleLogin, HandleForgotPassword, HandleForgotPasswordConfirm
}