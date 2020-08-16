<?php
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT id, bagian AS nama FROM tb_program_s1 GROUP BY bagian", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
