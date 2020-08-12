<?php
$upload = new Upload();
if (checkIfKeyExist($PostData, ["data"])) {
	$data = $PostData->data;
	foreach ($data as $i => $d) {
		$foto = $upload->base64_to_jpeg($d->foto);
		$db->Execute("INSERT INTO tb_staff (nama, jabatan, foto) VALUES (?,?,?)", [$d->nama, $d->jabatan, $foto]);
	}
	$response->Success("Berhasil menambah fasilitas");
} else {
	$response->Error("Please Check Parameters");
}
