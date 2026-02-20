const db=require('../database');

const orders=
{
    addCart(username, payment_method, callback)
    {
        return db.query("INSERT INTO cart(username, payment_method) VALUES(?, ?)",
            [
                username,
                payment_method
            ], callback);
    },

    addProductsToCart(newC, callback)
    {
        return db.query("INSERT INTO orders(id_cart, id_products, amount) VALUES(?, ?, ?)",
            [
                newC.id_cart,
                newC.id_products,
                newC.amount
            ], callback);
    }
}

module.exports=orders;