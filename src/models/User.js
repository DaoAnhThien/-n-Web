const connection = require('../config/database');
const bcrypt = require('bcryptjs'); 
const jwt = require('jsonwebtoken'); 

const salt = bcrypt.genSaltSync(10);

connection.connect();
const generateAuthToken = (userId) => {
    return jwt.sign({ _id: userId }, process.env.JWT_KEY); // Đảm bảo bạn đã thiết lập biến môi trường JWT_KEY
  };

const createUser = (username, password) => {
    return new Promise((resolve, reject) => {
        bcrypt.hash(password, salt, (err, hashedPassword) => { // Sử dụng salt khi hash password
            if (err) {
                reject(err);
            } else {
                const newUser = {
                    username: username,
                    password: hashedPassword
                };
                const insertUserQuery = 'INSERT INTO user SET ?';
                connection.query(insertUserQuery, newUser, (error, results) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(results.insertId);
                    }
                });
            }
        });
    });
};

const findUserByUsernameAndPassword = (username, password) => {
    return new Promise((resolve, reject) => {
        const selectUserQuery = 'SELECT * FROM user WHERE USERNAME = ?';
        connection.query(selectUserQuery, [username], (error, results) => {
            if (error) {
                reject(error);
            } else {
                if (results.length === 0) {
                    reject({ error: 'Invalid login credentials' });
                } else {
                    const user = results[0];
                    bcrypt.compare(password, user.PASSWORD, (err, isPasswordMatch) => {
                        if (err) {
                            reject(err);
                        } else {
                            if (isPasswordMatch) {
                                resolve({
                                    id: user.ID,
                                    username: user.USERNAME
                                });
                            } else {
                                reject({ error: 'Invalid login credentials' });
                            }
                        }
                    });
                }
            }
        });
    });
};

  const findUserByUsername = (username) => {
    return new Promise((resolve, reject) => {
        const selectUserByUsernameQuery = 'SELECT * FROM user WHERE username = ?';
        connection.query(selectUserByUsernameQuery, [username], (error, results) => {
            if (error) {
                reject(error);
            } else {
                if (results.length === 0) {
                    resolve(null); // Không tìm thấy người dùng với username này
                } else {
                    resolve(results[0]); // Trả về thông tin của người dùng nếu tìm thấy
                }
            }
        });
    });
};
module.exports = {
    createUser,
    findUserByUsernameAndPassword,
    generateAuthToken,
    findUserByUsername
};
