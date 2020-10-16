<?php
if (checkIfKeyExist($PostData, ["target", "order"])) {
	$table = "tb_$PostData->target";
	$isTableExist = $db->Execute("SHOW TABLES LIKE '$table'");
	if ($isTableExist) {
		$ids = [];
		$cases = [];
		foreach ($PostData->order as $id => $order) {
			array_push($ids, "'$id'");
			array_push($cases, "'$id' THEN '$order'");
		}
		$ids = join(",", $ids);
		$cases = join(" WHEN id=", $cases);
		$query = "UPDATE $table SET position = (CASE WHEN id=$cases END) WHERE id in ($ids)";
		$data = $db->Execute($query, []);
		$response->Success("Sukses ubah urutan");
	} else {
		$response->Error("");
	}
} else {
	$response->Error("Please Check Parameters");
}
