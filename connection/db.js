const { Pool, Client } = require('pg')

    const connectionString = 'postgres://zgcnminxzgzaih:d6a994a39b6902c0f7e68e7ea897a6f6262ba1c671e130ad5962db5a556ff22c@ec2-23-20-73-25.compute-1.amazonaws.com:5432/deoin7b7vl87m'

    const dbPool = new Pool({
        connectionString: connectionString,
    })


// const dbPool = new Pool ({
//     database : 'personal_web_b30',
//     port : 5432,
//     user : 'postgres',
//     password : 'admin'
// })

module.exports = dbPool

