/*
 * @Author: your name
 * @Date: 2020-01-02 00:40:51
 * @LastEditTime : 2020-01-02 01:44:04
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Server\route\order.js
 */
const express = require("express");
const router = express.Router();
const pool = require("../pool");

// 获取所有订单
router.post("/list",(req,res)=>{
    let sql = "select * from orders,order_company where orders.company_id = order_company.oc_number";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json({
            code: 200,
            msg: "success",
            data: result
        });
    });
});

// 根据机构名称搜索订单
router.post("/search",(req,res)=>{
    let val = req.body.val;
    let sql = "select * from order_company";
    if(val){
        sql += ` where oc_name = '${val}'`;
    }else{
        res.json({
            code: 300,
            msg: "val is required"
        });
        return;
    }
    console.log(sql);

    pool.query(sql,(err,result2)=>{
        if(err) throw err;
        let id = result2[0].oc_number;
        pool.query(`select * from orders where company_id = ?`,[id],(err,result)=>{
            if(err) throw err;
            res.json({
                code: 200,
                msg: "success",
                data: {
                    me: result2[0],
                    list: result
                }
            });
        })
    });
});

// 取消订单
router.post("/cancel",(req,res)=>{
    let id = req.body.id;
    if(!id){
        res.json({
            code: 300,
            msg: "id is required"
        });
        return;
    }
    let sql = "UPDATE orders SET status=5 WHERE oid = ?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0){
            res.json({
                code: 200,
                msg: "success"
            });
        }else{
            res.json({
                code: 400,
                msg: "failed"
            });
        }
    });
});
module.exports = router;