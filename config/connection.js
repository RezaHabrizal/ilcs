const { Pool } = require("pg")
const pool = new Pool({
	user: "postgres",
	host: "localhost",
	database: "ILCS",
	password: "1",
	port: 5432
})

// pool.query('SELECT NOW()' , (err, res) => {
//   console.log(err, res)
//   pool.end()
// })

module.exports = pool
