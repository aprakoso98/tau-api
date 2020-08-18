<?php
$debug = true;
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_program_s1", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
