<?php
if (checkIfKeyExist($PostData, ["id", "hide"])) {
	$db->Execute("UPDATE tb_advisors SET hide=? WHERE id=?", [$PostData->hide ? 1 : 0, $PostData->id]);
	$err = $db->error();
	if ($err[2]) {
		$response->Error($err[2]);
	} else {
		$response->Success("Berhasil hide advisors");
	}
} else {
	$response->Error("Please Check Parameters");
}
