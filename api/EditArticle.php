<?php
$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, ["id", "judul", "url", "foto", "pembuat", "deskripsi", "artikel"])) {
	$data = $db->ExecuteAll(
		"UPDATE tb_news SET judul=?, url=?, foto=?, pembuat=?, deskripsi=?, artikel=? WHERE id=?",
		[
			$PostData->judul, $PostData->url,
			strlen($PostData->foto) > 50 ? $upload->base64_to_file($PostData->foto) : $PostData->foto,
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
