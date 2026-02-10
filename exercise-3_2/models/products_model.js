const db=require('../database');

const products=
{
    getAll(callback)
    {
        return db.query("SELECT * FROM products", callback);
    },

    getOne(id_products, callback)
    {
        return db.query("SELECT * FROM products WHERE id_products=?",
            [id_products], callback);
    },

    add(newProduct, callback)
    {
        return db.query("INSERT INTO products (name, price, balance) VALUES(?, ?, ?)",
            [newProduct.name, newProduct.price, newProduct.balance],
            callback
        );
    }
}

module.exports=products;
