/*
 * @Author: your name
 * @Date: 2020-01-01 20:04:05
 * @LastEditTime : 2020-01-02 00:25:04
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Server\route\works.js
 */
const express = require("express");
const router = express.Router();
const pool = require("../pool");

// 获取筛选条件
router.get("/filte",(req,res)=>{
    let resultObj = {};
    let tables = ["video_purpose","video_type","video_region","director_class","company_type"];
    let funs = [];
    for(let item of tables){
        funs.push(new Promise((resolve,reject)=>{
            pool.query(`select * from ${item}`,(err,result)=>{
                if(err) throw err;
                resultObj[item] = result;
                resolve();
            });
        }));
    }
    
    Promise.all(funs).then(result=>{
        res.json(resultObj);
    });
});

// 查询视频摘要信息(支持条件筛选)
router.post("/list",(req,res)=>{
    let params = req.body;
    
    // 拿出支持多选的参数,进行处理
    let video_purpose = params.video_purpose || ""; //视频用途
    let video_region = params.video_region || ""; //视频领域
    
    // 拿出剩余单个参数进行处理
    let video_type = params.video_type || ""; //视频形式
    let director_class = params.director_class || ""; //导演类别
    let company_type = params.company_type || ""; //视频主体

    // 拿出分页查询所需参数
    let pageNumber = parseInt(params.pageNumber || 1); // 当前页码
    let pageSize = parseInt(params.pageSize || 12); // 每页数据量

    let dataTotal = 0;
    let offset = (pageNumber - 1) * pageSize;
    let pageTotal = 0;
    let sql_limit = "select * from works,director,director_class where works.director_id = director.did and director.director_class = director_class.dc_id";
    let sql_total = "select count(id) as total from works";
    let filteObj = {
        video_purpose,
        video_region,
        video_type,
        director_class,
        company_type
    }
    let isMoreNotNull = false; // 是否有更多不为空的参数,根据此条件判断是否添加and关键字
    
    for(let key in filteObj){
        if(!isMoreNotNull){
            if(filteObj[key] != ""){
                if(filteObj[key].length > 1 && filteObj[key].indexOf(",") != -1){
                    sql_limit += ` and works.${key} like '%${filteObj[key]}%'`;
                    sql_total += ` where works.${key} like '%${filteObj[key]}%'`;
                }else{
                    sql_limit += ` and works.${key}=${filteObj[key]}`;
                    sql_total += ` and works.${key}=${filteObj[key]}`;
                }
            }
            isMoreNotNull = true;
        }else{
            if(filteObj[key] != ""){
                if(filteObj[key].length > 1 && filteObj[key].indexOf(",") != -1){
                    sql_limit += ` and works.${key} like '%${filteObj[key]}%'`;
                    sql_total += ` and works.${key} like '%${filteObj[key]}%'`;
                }else{
                    sql_limit += ` and works.${key}=${filteObj[key]}`;
                    sql_total += ` and works.${key}=${filteObj[key]}`;
                }
            }
        }
    }
    

    sql_limit += " limit ?,?";
    pool.query(sql_total,(err,result)=>{
        if(err) throw err;
        dataTotal = result[0].total;
        pageTotal = Math.ceil(dataTotal / pageSize);
        pool.query(sql_limit,[offset,pageSize],(err,result)=>{
            if(err) throw err;
            res.json({
                code: 200,
                msg: "success",
                data:{
                    dataTotal,
                    pageTotal,
                    pageNumber,
                    pageSize,
                    list: result
                }
            });
        });
    });
})

// 根据id查询指定视频详细信息
router.post("/detail",(req,res)=>{
    let id = req.body.id;
    if(!id){
        res.json({
            code: 300,
            msg: "id is required",
            data: null
        });
        return;
    }
    pool.query("select * from works where id = ?",[id],(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result[0]
        });
    });
});

// 为视频点赞
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
    let sql = "update works set likes=likes+1 where id = ?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0){
            pool.query("select likes from works where id = ?",[id],(err,result)=>{
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

// 搜索视频
router.post("/search",(req,res)=>{
    let val = req.body.val;
    let sql = "select * from works";
    if(val){
        sql += ` where name like '%${val}%'`;
    }
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