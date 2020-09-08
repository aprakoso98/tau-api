<?php
$upload = new Upload(['folderPath' => 'files/']);
$keys = ["nama_prodi", "deskripsi_prodi", "visi_prodi", "misi_prodi", "kurikulum_prodi", /* "foto_prodi", */ "kompetensi_prodi", "dosen_prodi", "id"];
if (checkIfKeyExist($PostData, $keys)) {
	$data = [];
	foreach ($keys as $key) {
		if ($key === 'foto_prodi') {
			// $foto = $PostData->$key;
			// if (strlen($foto) > 50) {
			// 	$foto = $upload->base64_to_file($foto);
			// 	array_push($data, $foto);
			// } else {
			// 	array_push($data, $PostData->$key);
			// }
		} else {
			array_push($data, $PostData->$key);
		}
	}
	$prodi = $db->Execute("SELECT * FROM tb_prodi WHERE id=?", [$PostData->id]);
	if ($prodi) {
		$joinedKeys = join(",", array_map(function ($k) {
			return "$k=?";
		}, array_filter($keys, function ($k) {
			return $k !== 'id';
		})));

		$db->ExecuteAll(
			"UPDATE tb_prodi SET $joinedKeys WHERE id=?",
			$data
		);
		$error = $db->error();
		if ($error[2]) {
			$response->Error($error[2]);
		} else {
			$response->Success("Berhasil Ubah program S1");
		}
	} else {
		$response->Error("Data not found");
	}
} else {
	$response->Error("Please Check Parameters");
}
