<?php
$upload = new Upload();
if (checkIfKeyExist($PostData, ["part", "content", "image"])) {
	$parts = $db->Execute("SELECT * FROM tb_manage WHERE part=?", [$PostData->part]);
	if (isset($parts)) {
		if ($PostData->image) {
			$PostData->image =  $upload->base64_to_jpeg($PostData->image);
		}
		$db->Execute("UPDATE tb_manage SET content=?, image=? WHERE id=? AND part=?", [$PostData->content, $PostData->image, $parts->id, $parts->part]);
		$response->Success("Sukses update $PostData->part");
	} else {
		$response->Error("Not Found");
	}
} else {
	$response->Error("Please Check Parameters");
}
