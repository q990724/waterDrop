/*
 * @Author: your name
 * @Date: 2019-12-30 23:43:27
 * @LastEditTime : 2019-12-30 23:44:32
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Server\pool.js
 */
const mysql = require("mysql");

var pool = mysql.createPool({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "",
    database: "app_water",
    connectTimeout: 20
});

module.exports = pool;