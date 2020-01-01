/*
 * @Author: your name
 * @Date: 2020-01-01 18:19:41
 * @LastEditTime : 2020-01-01 23:10:38
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Server\route\point.js
 */
const express = require("express");
const router = express.Router();
const pool = require("../pool");

// 查询专栏
router.get("/class",(req,res)=>{
    let sql = "select * from points_class";

    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result
        });
    });
});

// 查询主题
router.get("/subclass",(req,res)=>{
    let sql = "select * from points_subclass";

    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result
        });
    });
});

// 分页查询文章(支持按类别查询)
router.post("/list",(req,res)=>{
    let pc_number = parseInt(req.body.pc_number || 0);
    let psc_number = parseInt(req.body.psc_number || 0);
    let page_number = parseInt(req.body.page_number || 1);
    let page_size = parseInt(req.body.page_size || 6);
    let offset = (page_number - 1) * page_size;
    let dataTotal = 0;
    let pageTotal = 0;
    let sql_total = "";
    let sql_limit = "";
    if(pc_number == 0 && psc_number == 0){
        sql_total = "select count(point_id) as total from points";
        sql_limit = "select * from points limit ?,?";
    }else if(pc_number == 0 && psc_number != 0){
        sql_total = "select count(point_id) as total from points where psc_number=" + psc_number;
        sql_limit = `select * from points where psc_number=${psc_number} limit ?,?`;
    }else if(pc_number != 0 && psc_number != 0){
        sql_total = `select count(point_id) as total from points where pc_number=${pc_number} and psc_number=${psc_number}`;
        sql_limit = `select * from points where psc_number=${psc_number} and pc_number=${pc_number} limit ?,?`;
    }else if(pc_number != 0 && psc_number == 0){
        sql_total = `select count(point_id) as total from points where pc_number=${pc_number}`;
        sql_limit = `select * from points where pc_number=${pc_number} limit ?,?`;
    }
    pool.query(sql_total,(err,result)=>{
        if(err) throw err;
        dataTotal = result[0].total;
        pageTotal = Math.ceil(dataTotal / page_size);
        pool.query(sql_limit,[offset,page_size],(err,result)=>{
            if(err) throw err;
            res.json({
                code: 200,
                msg: "success",
                data: {
                    dataTotal,
                    pageTotal,
                    pageNnumber: page_number,
                    pageSize: page_size,
                    list: result
                }
            });
        });
    });
});

// 为文章点赞
router.post("/good",(req,res)=>{
    let id = req.body.id;
    if(!id){
        res.json({
            code: 300,
            msg: "id is required",
            data: null
        });
        return;
    }
    let sql = "update points set point_goodCount=point_goodCount+1 where point_id = ?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0){
            pool.query("select point_goodCount as likes from points where point_id = ?",[id],(err,result)=>{
                if(err) throw err;
                res.json({
                    code: 200,
                    msg: "success",
                    data:{
                        likesCount: result[0].likes
                    }
                });    
            });
        }else{
            res.json({
                code: 400,
                msg: "faild"
            });
        }
    });
});

module.exports = router;