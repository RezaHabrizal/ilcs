const fs = require("fs")
const pool = require("./connection")

const query = fs.readFileSync("../Script Test Query.sql").toString()
pool.query(query, (err, res) => {
	if (err) {
		console.log(err)
	} else {
		console.log("success")
	}
})
