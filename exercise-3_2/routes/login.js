const express=require('express');
const router=express.Router();
const customers=require('../models/customers_model');
const bcrypt=require('bcryptjs');
const jwt=require('jsonwebtoken');

router.post('/', function(request, response)
{
    const username=request.body.username;
    const password=request.body.password;

    if (username && password)
    {
        customers.checkLogin(username, function(err, result)
        {
            if (err)
            {
                response.send(err);
            }
            else
            {
                if (result.length > 0)
                {
                    bcrypt.compare(password, result[0].password, function(err, compareResult)
                    {
                        if (err)
                        {
                            response.send(err);
                        }
                        else
                        {
                            if (compareResult)
                            {
                                const token=generateToken(username, result[0]);
                                response.json(token);
                            }
                            else
                            {
                                console.log("Wrong password");
                                response.status(403).json("Username and password not matching");
                            }
                        }
                    });
                }
                else
                {
                    console.log("No such user");
                    response.status(403).json("Username and password not matching");
                }
            }
        });
    }
    else
    {
        console.log("Username or password missing");
        response.status(403).json("Username and password not matching");
    }
});

function generateToken(username, role)
{
    return jwt.sign({username, role}, process.env.MY_TOKEN, {expiresIn:'1200s'});
}

module.exports=router;