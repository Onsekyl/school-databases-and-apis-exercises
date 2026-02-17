const db=require('../database');
const bcrypt=require('bcryptjs');
const saltrounds=12;


const customers=
{
    getAllCustomers(callback)
    {
        return db.query("SELECT * FROM customers", callback);
    },

    getOneCustomer(username, callback)
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
    },

    update(username, newC, callback)
    {
        bcrypt.hash(newC.password, saltrounds, function(err, hashedPassword)
        {
            if (err)
            {
                return callback(err.message)
            }
            else
            {
                return db.query("UPDATE customers SET firstname=?, lastname=?, password=? WHERE username=?",
                    [newC.firstname, newC.lastname, hashedPassword, username], callback);
            }
        });
    },

    updatePassword(username, newC, callback)
    {
        bcrypt.hash(newC.password, saltrounds, function(err, hashedPassword)
        {
            if (err)
            {
                return callback(err.message);
            }
            else
            {
                return db.query("UPDATE customers SET password=? WHERE username=?",
                    [hashedPassword, username], callback);
            }
        });
    },

    delete(username, callback)
    {
        return db.query("DELETE FROM customers WHERE username=?", [username], callback);
    }
}

module.exports=customers;