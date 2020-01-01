/*
 * @Author: your name
 * @Date: 2020-01-01 23:24:47
 * @LastEditTime : 2020-01-01 23:54:56
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Server\route\direcotr.js
 */
const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/class",(req,res)=>{
    let sql = "select * from director_class";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result
        });
    })
});

router.post("/list",(req,res)=>{
    let type = req.body.type || 0;
    let sql = "select did,dname,avatar from director";

    if(type != 0){
        sql += " where director_class = " + type;
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

router.post("/detail",(req,res)=>{
    let id = req.body.id;
    if(!id){
        res.json({
            code: 300,
            msg: "id is required"
        });
        return;
    }
    let sql = "select * from director,director_class where did = ? and director.director_class = director_class.dc_id";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        // 拿到所有的作品id
        let works = result[0].repWorks;
        let arr = works.split(",");
        let funs = [];
        for(let i = 0; i < arr.length; i++){
            funs.push(new Promise((resolve,reject)=>{
                pool.query(`select id,name,intr,pic,likes,watchs from works where id = ${arr[i]}`,(err,result)=>{
                    if(err) throw err;
                    resolve(result);
                });
            }));
        }

        Promise.all(funs).then(arr=>{
            result[0]["myWorks"] = arr;
            res.json({
                code: 200,
                msg: "success",
                data: result
            });
        });
    });
});

module.exports = router;