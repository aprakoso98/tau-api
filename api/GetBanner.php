<?php
if (checkIfKeyExist($PostData, ["isMobile"])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_banner WHERE mobile=? ORDER BY position ASC", [$PostData->isMobile ? 1 : 0]);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
