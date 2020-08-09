<?php
$time = new TimeUtil();
if (checkIfKeyExist($PostData, ["part", "content", "image"])) {
	$sambutan = $db->Execute("SELECT * FROM tb_manage WHERE part=?", [$PostData->part]);
	if (isset($sambutan)) {
		$db->Execute("UPDATE tb_manage SET content=?, image=? WHERE id=? AND part=?", [$PostData->content, $PostData->image, $sambutan->id, $sambutan->part]);
		$response->Success("Sukses update sambutan");
	} else {
		$response->Error("Not Found");
	}
} else {
	$response->Error("Please Check Parameters");
}
