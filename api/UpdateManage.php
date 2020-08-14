<?php
$upload = new Upload();
if (checkIfKeyExist($PostData, ["part", "content", "image"])) {
	$parts = $db->Execute("SELECT * FROM tb_manage WHERE part=?", [$PostData->part]);
	if ($parts) {
		if (isset($PostData->imageNotChange)) {
			$PostData->image = $parts->image;
		} else {
			if ($PostData->image) {
				$PostData->image =  $upload->base64_to_file($PostData->image);
			} else {
				$PostData->image = $parts->image;
			}
		}
		$db->Execute("UPDATE tb_manage SET content=?, image=? WHERE id=? AND part=?", [$PostData->content, $PostData->image, $parts->id, $parts->part]);
		$response->Success("Sukses update $parts->part");
	} else {
		$response->Success("Not Found");
	}
} else {
	$response->Error("Please Check Parameters");
}
