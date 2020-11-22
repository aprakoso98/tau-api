<?php
if (checkIfKeyExist($PostData, ["id", "id_program"])) {
	$db->Execute("DELETE FROM tb_prodi WHERE id=? AND id_program=?", [$PostData->id, $PostData->id_program]);
	$err = $db->error();
	if ($err[2]) {
		$response->Error($err[2]);
	} else {
		$response->Success("Sukses hapus program");
	}
} else {
	$response->Error("Please Check Parameters");
}
