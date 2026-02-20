const express=require('express');
const router=express.Router();
const orders=require('../models/orders_model');

router.post('/cart', function(reguest, response)
{
    orders.addCart(reguest.user.username, reguest.body.payment_method, function(err, result)
    {
        if (err)
        {
            response.send(err);
        }
        else
        {
            response.json(result);
        }
    });
});

router.post('/orders', function(reguest, response)
{
    orders.addProductsToCart(reguest.body, function(err, result)
    {
        if (err)
        {
            response.send(err);
        }
        else
        {
            response.json(result);
        }
    });
});

module.exports=router;