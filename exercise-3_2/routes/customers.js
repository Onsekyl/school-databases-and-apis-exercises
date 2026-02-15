const express = require('express');
const router = express.Router();
const customers = require('../models/customers_model');

router.get('/', function(request, response)
{
    customers.getAll(function(err, result)
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

router.get('/:username', function(request, response)
{
    customers.getOne(request.params.username, function(err, result)
    {
        if (err)
        {
            response.send(err);
        }
        else
        {
            response.json(result[0]);
        }
    });
});

router.post('/', function (request, response)
{
    customers.add(request.body, function (err, result)
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

module.exports = router;
