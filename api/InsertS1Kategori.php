<?php
if (checkIfKeyExist($PostData, ["nama"])) {
	$db->ExecuteAll(
		"INSERT INTO tb_program_s1 (nama) VALUES (?)",
		[$PostData->nama]
	);
	$response->Success("Berhasil tambah kategori program S1");
} else {
	$response->Error("Please Check Parameters");
}
