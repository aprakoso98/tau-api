<?php
$upload = new Upload(['folderPath' => "images/"]);
if (checkIfKeyExist($PostData, ["data"])) {
	$data = $PostData->data;
	foreach ($data as $i => $d) {
		$foto = $upload->base64_to_jpeg($d->foto);
		$db->Execute("INSERT INTO tb_fasilitas (nama, deskripsi, foto) VALUES (?,?,?)", [$d->nama, $d->deskripsi, $foto]);
	}
	$response->Success("Berhasil menambah fasilitas");
} else {
	$response->Error("Please Check Parameters");
}
