<?php
$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, ["data"])) {
	$data = $PostData->data;
	foreach ($data as $i => $d) {
		if ($d->is_embed) {
			$media = $d->media;
		} else {
			$media = $upload->base64_to_file($d->media);
		}
		$isVideo = $d->isVideo ? '1' : '0';
		$db->Execute("INSERT INTO tb_galeri (nama, deskripsi, media, is_video, is_embed) VALUES (?,?,?,?,?)", [$d->nama, $d->deskripsi, $media, $isVideo, $d->is_embed]);
	}
	$response->Success("Sukses menambah galeri");
} else {
	$response->Error("Please Check Parameters");
}
