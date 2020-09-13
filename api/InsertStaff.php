<?php
$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, ["data"])) {
	$data = $PostData->data;
	foreach ($data as $i => $d) {
		$foto = $upload->base64_to_file($d->foto);
		$db->Execute("INSERT INTO tb_staff (nama, jabatan, foto) VALUES (?,?,?)", [$d->nama, $d->jabatan, $foto]);
	}
	$response->Success("Berhasil menambah staff");
} else {
	$response->Error("Please Check Parameters");
}
