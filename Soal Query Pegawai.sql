SELECT nilai.nik, siswa.nama, nilai.kelas, nilai.semester, pelajaran.nama_pelajaran, nilai.type_nilai, nilai.nilai
FROM nilai
INNER JOIN siswa
ON nilai.nik=siswa.nik
INNER JOIN pelajaran
ON nilai.id_pelajaran=pelajaran.id_pelajaran;

SELECT nilai.nik, siswa.nama, pelajaran.nama_pelajaran, nilai.nilai
FROM nilai
INNER JOIN siswa
ON nilai.nik=siswa.nik
INNER JOIN pelajaran
ON nilai.id_pelajaran=pelajaran.id_pelajaran
ORDER BY nilai.nilai DESC;
