<?php
$path = "article-thumb/";
$upload = new Upload(['folderPath' => "files/$path"]);
if (checkIfKeyExist($PostData, ["judul", "url", "foto", "pembuat", "deskripsi", "artikel"])) {
	$image = $upload->base64_to_file($PostData->foto);
	$image = "$path$image";
	if (checkIfKeyExist($PostData, ['tgl'])) {
		$data = $db->Execute(
			"INSERT INTO tb_news (judul, url, tgl, foto, pembuat, deskripsi, artikel) VALUES (?,?,?,?,?,?,?)",
			[$PostData->judul, $PostData->url, $PostData->tgl, $image, $PostData->pembuat, $PostData->deskripsi, $PostData->artikel]
		);
	} else {
		$data = $db->Execute(
			"INSERT INTO tb_news (judul, url, foto, pembuat, deskripsi, artikel) VALUES (?,?,?,?,?,?)",
			[$PostData->judul, $PostData->url, $image, $PostData->pembuat, $PostData->deskripsi, $PostData->artikel]
		);
	}
	$err = $db->error();
	if ($err[2]) {
		$response->Error($err[2]);
	} else {
		$response->Success("Berhasil post artikel");
	}
} else {
	$response->Error("Please Check Parameters");
}
