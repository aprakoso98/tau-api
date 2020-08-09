<?php
$time = new TimeUtil();
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll(
		"SELECT * FROM tb_news",
		[]
	);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
