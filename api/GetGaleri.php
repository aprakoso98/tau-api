<?php
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_galeri", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
