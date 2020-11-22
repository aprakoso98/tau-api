<?php
if (checkIfKeyExist($PostData, ["id"])) {
	$db->Execute("DELETE FROM tb_news WHERE id=?", [$PostData->id]);
	$err = $db->error();
	if ($err[2]) {
		$response->Error($err[2]);
	} else {
		$response->Success("Sukses hapus artikel");
	}
} else {
	$response->Error("Please Check Parameters");
}
