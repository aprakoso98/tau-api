<?php
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_banner ORDER BY isForBanner DESC", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
