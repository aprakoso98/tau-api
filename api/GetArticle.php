<?php
// $debug = true;

if (checkIfKeyExist($PostData, [])) {
	if ($PostData->url) {
		$data = $db->Execute('SELECT * FROM tb_news WHERE url=?', [$PostData->url]);
		$response->Success($data);
	} else {
		$length = $db->Execute("SELECT count(*) AS total FROM tb_news", []);
		$length->limit = 20;
		if (checkIfKeyExist($PostData, ["from", "limit"])) {
			$from = $PostData->from;
			$limit = $PostData->limit;
			$data = $db->ExecuteAll(
				"SELECT id, judul, deskripsi, foto, url, pembuat, tgl FROM tb_news ORDER BY id DESC LIMIT $from, $limit",
				[]
			);
		} else {
			$data = $db->ExecuteAll("SELECT id, judul, deskripsi, foto, url, pembuat, tgl FROM tb_news ORDER BY id DESC LIMIT $length->limit", []);
		}
		$length->data = $data;
		$response->Success($length);
	}
} else {
	$response->Error("Please Check Parameters");
}
