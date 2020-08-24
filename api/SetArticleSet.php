<?php
if (checkIfKeyExist($PostData, ["part", "url"])) {
	$db->Execute("UPDATE tb_article_set SET url=? WHERE part=?", [$PostData->url, $PostData->part]);
	$err = $db->error();
	if ($err[2]) {
		$response->Error($err[2]);
	} else {
		$response->Success("Success edit $PostData->part");
	}
} else {
	$response->Error("Please Check Parameters");
}
