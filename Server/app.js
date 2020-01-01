/*
 * @Author: cfy
 * @Date: 2019-12-30 23:30:02
 * @LastEditTime : 2020-01-02 00:43:40
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Server\app.js
 */
const express = require("express");
const bodyParser = require("body-parser");

// 路由表
const indexRouter = require("./route/index");
const pointRouter = require("./route/point");
const worksRouter = require("./route/works");
const directorRouter = require("./route/direcotr");
const processRouter = require("./route/process");
const orderRouter = require("./route/order");

var app = express();


app.use(bodyParser.urlencoded({
    extended: false
}))

app.use(express.static("public"));

app.listen(5050,function(){
    console.log("启动成功!",new Date().toLocaleString());
});

app.use("/",indexRouter);
app.use("/point",pointRouter);
app.use("/work",worksRouter);
app.use("/director",directorRouter);
app.use("/process",processRouter);
app.use("/admin/order",orderRouter);