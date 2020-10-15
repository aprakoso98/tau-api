<?php
if (checkIfKeyExist($PostData, [])) {
	if ($PostData->getFolder) {
		$data = $db->ExecuteAll("SELECT folder FROM tb_files GROUP BY folder ORDER BY format ASC", []);
		$response->Success($data);
	} else {
		$data = $db->ExecuteAll("SELECT * FROM tb_files ORDER BY format ASC", []);
		$response->Success($data);
	}
} else {
	$response->Error("Please Check Parameters");
}
