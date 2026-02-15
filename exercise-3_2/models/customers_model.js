const db=require('../database');
const bcrypt=require('bcryptjs');
const saltrounds=12;


const customers=
{
    getAll(callback)
    {
        return db.query("SELECT * FROM customers", callback);
    },

    getOne(username, callback)
    {
        return db.query("SELECT * FROM customers WHERE username=?",
            [username], callback);
    },

    add(newC, callback)
    {
        bcrypt.hash(newC.password, saltrounds, function(err, hashedPassword)
        {
            if (err)
            {
                return callback(err.message);
            }
            else
            {
                return db.query("INSERT INTO customers VALUES(?, ?, ?, ?)",
                    [
                        newC.username,
                        newC.firstname,
                        newC.lastname,
                        hashedPassword
                    ], callback);
            }
        });
    }
}

module.exports=customers;