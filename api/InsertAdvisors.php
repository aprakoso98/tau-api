<?php
$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, ["nama_advisors", "foto_advisors"])) {
	$foto = $upload->base64_to_file($PostData->foto_advisors);
	$db->Execute("INSERT INTO tb_advisors (nama_advisors, foto_advisors) VALUES (?,?)", [$PostData->nama_advisors, $foto]);
	$err = $db->error();
	if ($err[2]) {
		$response->Error($err[2]);
	} else {
		$response->Success("Berhasil tambah advisors");
	}
} else {
	$response->Error("Please Check Parameters");
}
