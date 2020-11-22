<?php
$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, ["data"])) {
	$data = $PostData->data;
	$values = join(",", array_map(function ($a) {
		return "(?,?,?)";
	}, $data));
	$arr = [];
	foreach ($data as $a) {
		array_push($arr, $a->nama, $a->bagian, $a->deskripsi);
	}
	$db->Execute("INSERT INTO tb_program_s1 (nama, bagian, deskripsi) VALUES $values", $arr);
	$err = $db->error()[2];
	if ($err) {
		$response->Error($err);
	} else {
		$response->Success("Sukses tambah program");
	}
} else {
	$response->Error("Please Check Parameters");
}
