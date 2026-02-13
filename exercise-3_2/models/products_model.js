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
    },

    update(idP, newP, callback)
    {
        return db.query("UPDATE products SET name=?, price=?, balance=? WHERE id_products=?",
            [
                newP.name,
                newP.price,
                newP.balance,
                idP
            ], callback);
    },

    delete(idP, callback)
    {
        return devicePixelRatio.query("DELETE FROM products WHERE id_products=?", [idP], callback);
    }
}

module.exports=products;
