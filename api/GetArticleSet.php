<?php
if (checkIfKeyExist($PostData, [])) {
	$least = $PostData->part ? "WHERE part=?" : "";
	$data = $db->ExecuteAll("SELECT * FROM tb_article_set $least", $PostData->part ? [$PostData->part] : []);
	if (count($data) > 0) {
		if (count($data) == 1) {
			$data = $data[0];
		}
		$response->Success($data);
	}else{
		$response->Error("Not found");
	}
} else {
	$response->Error("Please Check Parameters");
}
