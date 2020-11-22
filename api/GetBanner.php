<?php
if (checkIfKeyExist($PostData, ["isMobile"])) {
	if (checkIfKeyExist($PostData, ["all"])) {
		$data = $db->ExecuteAll("SELECT * FROM tb_banner WHERE mobile=? ORDER BY position ASC", [$PostData->isMobile ? 1 : 0]);
		$response->Success($data);
	} else {
		$data = $db->ExecuteAll("SELECT * FROM tb_banner WHERE mobile=? AND visible=? ORDER BY position ASC", [$PostData->isMobile ? 1 : 0, 1]);
		$response->Success($data);
	}
} else {
	$response->Error("Please Check Parameters");
}
