<?php
$upload = new Upload(['folderPath' => 'files/']);
$keys = ["id_program", "nama_prodi", "deskripsi_prodi", "foto_prodi", "visi_prodi", "misi_prodi", "kurikulum_prodi", "kompetensi_prodi", "dosen_prodi"];
if (checkIfKeyExist($PostData, $keys)) {
	$data = [];
	foreach ($keys as $key) {
		if ($key === 'foto_prodi') {
			$foto = $PostData->$key;
			$foto = $upload->base64_to_file($foto);
			array_push($data, $foto);
		} else {
			array_push($data, $PostData->$key);
		}
	}
	$joinedKeys = "(" . join(",", $keys) . ")";
	$values = preg_replace('/\w+/i', '?', $joinedKeys);
	$db->ExecuteAll(
		"INSERT INTO tb_prodi $joinedKeys VALUES $values",
		$data
	);
	$error = $db->error();
	if ($error[2]) {
		$response->Error($error[2]);
	} else {
		$response->Success("Berhasil tambah program S1");
	}
} else {
	$response->Error("Please Check Parameters");
}
