const express = require("express")
const app = express()
const port = 3000
const pool = require("./config/connection")

app.set("view engine", "ejs")
app.use(express.urlencoded({ extended: true }))

app.get("/", (req, res) => {
	pool.query(
		`SELECT nilai.nik, siswa.nama, nama_pelajaran AS pelajaran, MAX(nilai.nilai) AS nilai FROM nilai
  INNER JOIN siswa ON nilai.nik=siswa.nik
  INNER JOIN pelajaran USING (id_pelajaran)
  GROUP BY nilai.nik, siswa.nama, nama_pelajaran ORDER BY MAX(nilai.nilai) DESC LIMIT 5`,
		(err, data) => {
			if (err) {
				console.log(err)
			} else {
				res.render("table", { data: data.rows })
			}
		}
	)
})

app.listen(port, () => {
	console.log("app listen on " + port)
})
