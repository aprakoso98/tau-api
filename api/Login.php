<?php
if (checkIfKeyExist($PostData, ["username", "password"])) {
	$dataLogin = $db->Execute("SELECT * FROM tb_login WHERE tb_login.username=? AND tb_login.password=?", [$PostData->username, $PostData->password]);
	if ($dataLogin) {
		$response->Success(true);
	} else {
		$response->Error('Data tidak ditemukan');
	}
} else {
	$response->Error("Please Check Parameters");
}
