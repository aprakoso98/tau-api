<?php
$path = "article-thumb/";
$upload = new Upload(['folderPath' => "files/$path"]);
if (checkIfKeyExist($PostData, ["id", "tgl", "judul", "url", "foto", "pembuat", "deskripsi", "artikel"])) {
	$image = strlen($PostData->foto) > 70 ? $upload->base64_to_file($PostData->foto) : $PostData->foto;
	$image = strlen($PostData->foto) > 70 ? "$path$image" : $image;
	$data = $db->Execute(
		"UPDATE tb_news SET tgl=?, judul=?, url=?, foto=?, pembuat=?, deskripsi=?, artikel=? WHERE id=?",
		[
			$PostData->tgl, $PostData->judul, $PostData->url,
			$image,
			$PostData->pembuat, $PostData->deskripsi, $PostData->artikel, $PostData->id
		]
	);
	$err = $db->error();
	if ($err[2]) {
		$response->Error($err[2]);
	} else {
		$response->Success("Berhasil edit artikel");
	}
} else {
	$response->Error("Please Check Parameters");
}
