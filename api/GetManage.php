<?php
if (checkIfKeyExist($PostData, ['parts'])) {
	$parts = join(',', array_map(function () {
		return '?';
	}, $PostData->parts));
	$data = $db->ExecuteAll("SELECT * FROM tb_manage WHERE part IN ($parts) ORDER BY id ASC", $PostData->parts);
	$response->Success($data);
} else {
	$least = $PostData->part ? "WHERE part=?" : "";
	$data = $db->ExecuteAll("SELECT * FROM tb_manage $least ORDER BY id ASC", $PostData->part ? [$PostData->part] : []);
	if (count($data) > 0) {
		if (count($data) == 1) {
			$data = $data[0];
		}
		$response->Success($data);
	} else {
		$response->Error("Not found");
	}
}
