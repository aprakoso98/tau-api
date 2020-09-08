<?php
if (checkIfKeyExist($PostData, ["table", "id"])) {
	$db->Execute("DELETE FROM $PostData->table WHERE id=?", [$PostData->id]);
	$err = $db->error();
	if ($err[2]) {
		$response->Error($err[2]);
	} else {
		$response->Success('Berhasil hapus data');
	}
} else {
	$response->Error("Please Check Parameters");
}
