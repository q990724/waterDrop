/*
 * @Author: cfy
 * @Date: 2019-12-30 23:30:02
 * @LastEditTime : 2019-12-30 23:46:12
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Server\app.js
 */
const express = require("express");
const bodyParser = require("body-parser");

// 路由表
const indexRouter = require("./route/index");

var app = express();


app.use("/",indexRouter);

app.use(bodyParser.urlencoded({
    extended: false
}))

app.use(express.static("public"));

app.listen(5050,function(){
    console.log("启动成功!",new Date().toLocaleString());
});