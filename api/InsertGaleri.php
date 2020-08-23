<?php
$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, ["data"])) {
	$data = $PostData->data;
	foreach ($data as $i => $d) {
		$media = $upload->base64_to_file($d->media);
		$isVideo = $d->isVideo ? '1' : '0';
		$db->Execute("INSERT INTO tb_galeri (nama, deskripsi, media, is_video) VALUES (?,?,?,?)", [$d->nama, $d->deskripsi, $media, $isVideo]);
	}
	$response->Success("Sukses menambah galeri");
} else {
	$response->Error("Please Check Parameters");
}
