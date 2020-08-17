<?php
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_gambar", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
