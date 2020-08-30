<?php
if (checkIfKeyExist($PostData, ["isMobile"])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_banner WHERE mobile=? ORDER BY isForBanner DESC", [$PostData->isMobile ? 1 : 0]);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
