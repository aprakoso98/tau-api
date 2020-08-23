<?php
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_files ORDER BY format ASC", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
