<?php
if (checkIfKeyExist($PostData, [])) {
	$least;
	if ($PostData->visible) {
		$least = "WHERE hide=?";
	}
	$data = $db->ExecuteAll("SELECT * FROM tb_advisors $least", $least ? [0] : []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
