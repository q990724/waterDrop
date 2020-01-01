/*
 * @Author: your name
 * @Date: 2019-12-30 23:42:50
 * @LastEditTime : 2020-01-02 00:01:44
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Server\route\index.js
 */
const express = require("express");
const router = express.Router();
const pool = require("../pool");

// 获取轮播图
router.get("/slides",(req,res)=>{
    let sql = "select * from slides";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result
        });
    });
});

// 获取首页推荐文章
router.get("/recPoint",(req,res)=>{
    let sql = "select * from points where isRec=1";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result
        })
    });
});

// 获取首页推荐导演
router.get("/recDirector",(req,res)=>{
    let sql = "select * from director where isRec=1";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result
        })
    });
});

module.exports = router;