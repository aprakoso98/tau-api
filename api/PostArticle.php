<?php
$time = new TimeUtil();
if (checkIfKeyExist($PostData, ["judul", "url", "foto", "pembuat", "deskripsi", "artikel"])) {
	$data = $db->ExecuteAll(
		"INSERT INTO tb_news (judul, url, foto, pembuat, deskripsi, artikel) VALUES (?,?,?,?,?,?)",
		[$PostData->judul, $PostData->url, str_split($PostData->foto, 50), $PostData->pembuat, $PostData->deskripsi, $PostData->artikel]
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
