const db=require('mysql2');

const connectionString=
'mysql://storeuser:storepass@127.0.0.1/onlinestore';

const connection=db.createPool(connectionString);

module.exports=connection;
