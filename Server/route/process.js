/*
 * @Author: your name
 * @Date: 2020-01-02 00:06:41
 * @LastEditTime: 2020-01-02 00:07:50
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: \Server\route\process.js
 */
const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/",(req,res)=>{
    let sql = "select * from process";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result
        });
    });
});

module.exports = router;