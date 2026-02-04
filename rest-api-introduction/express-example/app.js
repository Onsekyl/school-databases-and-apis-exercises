const express=require('express');
const book = require('./book');
const port=3000;
const app=express();
app.use(express.json()); // This was crucial to get post's to send request.body, but not sure why.

app.listen(port, function()
{
    console.log("Express esimerkki portissa "+port);
});

app.get('/',function(request,response)
{
    response.send("Express API esimerkki ilman tietokantaa portissa "+port);
});

app.use(function(reguest,response,next)
{
    console.log("Middleware1");
    next();
});

app.get('/test1', function(request,response)
{
    response.send("Endpoint test1");
    console.log("Called endpoint test1");
});

app.use(function(reguest,response,next)
{
    console.log("Middleware2");
    next();
});

app.get('/test2/:fname', function(request,response)
{
    response.send("Hello " + request.params.fname);
    console.log("Saying hi for " + request.params.fname);
});

/*
// Doesn't work in newest versions of express
app.get('/test3/:lname?', function(request,response)
{
    response.send("Hello " + request.params.lname);
});
*/

app.get('/book', function(reguest, response)
{
    console.log("Fetched all the books");
    response.send(book.getAllBooks());
});

app.post('/book', function(request, response)
{
    console.log(request.body);
    response.send(request.body);
});

app.post('/user', function(request, response)
{
    console.log(request.body);
    response.send(request.body);
});

app.put('/book/:id', function(request, response)
{
    console.log(request.params.id);
    response.send(request.body);
});

module.exports=app;
