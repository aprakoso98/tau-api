<?php
$path = "banner/";
$upload = new Upload(['folderPath' => "files/$path"]);
if (checkIfKeyExist($PostData, [])) {
	if ($PostData->id) {
		if ($PostData->delete) {
			$db->Execute("DELETE FROM tb_banner WHERE id=?", [$PostData->id]);
			$response->Success("Sukses hapus banner");
		} else {
			if (checkIfKeyExist($PostData, ['isMobile'])) {
				$db->Execute("UPDATE tb_banner SET isForBanner=? WHERE mobile=?", ["0", $PostData->isMobile ? 1 : 0]);
				$db->Execute("UPDATE tb_banner SET isForBanner=? WHERE id=?", ["1", $PostData->id]);
				$response->Success("Sukses ubah banner");
			} else {
				$response->Error("Please Check Parameters");
			}
		}
	} else if ($PostData->data) {
		if (checkIfKeyExist($PostData, ['isMobile'])) {
			$data = array_map(function ($a) use ($path, $upload) {
				$image = $upload->base64_to_file($a->file);
				$image = "$path$image";
				return $image;
			}, $PostData->data);
			$isMobile = $PostData->isMobile ? 1 : 0;
			$p = join(",", array_map(function () use ($isMobile) {
				return "(?, '$isMobile')";
			}, $data));
			$db->Execute("INSERT INTO tb_banner (image, mobile) VALUES $p", $data);
			$response->Success("Sukses upload banner");
		} else {
			$response->Error("Please Check Parameters");
		}
	} else {
		$response->Error("No Action");
	}
} else {
	$response->Error("Please Check Parameters");
}
