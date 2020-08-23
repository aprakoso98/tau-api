<?php
$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, [])) {
	if ($PostData->id) {
		if ($PostData->delete) {
			$db->Execute("DELETE FROM tb_banner WHERE id=?", [$PostData->id]);
		$response->Success("Sukses hapus banner");
	} else {
		$db->Execute("UPDATE tb_banner SET isForBanner=?", ["0"]);
		$db->Execute("UPDATE tb_banner SET isForBanner=? WHERE id=?", ["1", $PostData->id]);
		$response->Success("Sukses ubah banner");
		}
	} else if ($PostData->data) {
		$data = array_map(function ($a) use ($upload) {
			$image = $upload->base64_to_file($a->file);
			return $image;
		}, $PostData->data);
		$p = join(",", array_map(function () {
			return "(?)";
		}, $data));
		$db->Execute("INSERT INTO tb_banner (image) VALUES $p", $data);
		// $response->Success($p);
		$response->Success("Sukses tambah banner");
	} else {
		$response->Error("No Action");
	}
} else {
	$response->Error("Please Check Parameters");
}
