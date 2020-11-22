<?php
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_staff", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
