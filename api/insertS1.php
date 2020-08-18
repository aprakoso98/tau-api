<?php
$upload = new Upload();
if (checkIfKeyExist($PostData, ["data"])) {
	$data = [];
	$keys = ["id_program", "nama_prodi", "deskripsi_prodi", "foto_prodi", "visi_prodi", "misi_prodi", "kurikulum_prodi", "kompetensi_prodi", "dosen_prodi"];
	foreach ($PostData->data as $v) {
		if (checkIfKeyExist($v, $keys)) {
			$arr = [];
			foreach ($keys as $key) {
				if ($key === 'foto_prodi') {
					array_push($arr, $upload->base64_to_file($v->key));
				} else {
					array_push($arr, $v->$key);
				}
			}
			array_push($data, $arr);
		} else {
			array_push($data, false);
		}
	}
	if (in_array(false, $data)) {
		$response->Error("Please Check Parameters in data");
	} else {
		$joinedKeys = join(",", $keys);
		$dataValues = array_reduce($data, function ($arr, $curr) {
			return array_merge($arr, $curr);
		}, []);
		$values = join(",", array_map(function () use ($keys) {
			return "(" . preg_replace('/\w+/i', '?', join(",", $keys)) . ")";
		}, $data));
		$db->ExecuteAll(
			"INSERT INTO tb_prodi ($joinedKeys) VALUES $values",
			$dataValues
		);
		$error = $db->error();
		if ($error[2]) {
			$response->Error($error[2]);
		} else {
			$response->Success("Berhasil tambah kategori program S1");
		}
	}
} else {
	$response->Error("Please Check Parameters");
}
