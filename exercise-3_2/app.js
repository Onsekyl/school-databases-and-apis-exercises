const express=require('express');
const app=express();
const PORT=3000;
const productsRouter=require('./routes/products');
const customersRouter=require('./routes/customers');

app.use(express.json());

app.get('/', function(reguest, response)
{
    response.send("Online Store API");
});

app.use('/products', productsRouter);
app.use('/customers', customersRouter);

app.listen(PORT, function()
{
    console.log("Server listening to port: " + PORT);
});

module.exports=app;
