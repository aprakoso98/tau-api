<?php
$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, ["judul", "url", "foto", "pembuat", "deskripsi", "artikel"])) {
	$data = $db->ExecuteAll(
		"INSERT INTO tb_news (judul, url, foto, pembuat, deskripsi, artikel) VALUES (?,?,?,?,?,?)",
		[$PostData->judul, $PostData->url || gen_uuid(), $upload->base64_to_file($PostData->foto), $PostData->pembuat, $PostData->deskripsi, $PostData->artikel]
	);
	$err = $db->error();
	if ($err[2]){
		$response->Success("Gagal post artikel");
	}else{
		$response->Success("Berhasil post artikel");
	}
} else {
	$response->Error("Please Check Parameters");
}
