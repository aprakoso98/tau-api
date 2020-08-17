<?php
function execSql($sql, $param)
{
	global $db;
	$db->Execute($sql, $param);
	return $db->error();
}

$upload = new Upload(['folderPath' => 'images/article/']);
if (checkIfKeyExist($PostData, ["data"])) {
	// $data = $db->ExecuteAll("SELECT * FROM tb_gambar", []);
	$insert = [];
	$update = [];
	$delete = [];
	foreach ($PostData->data as $img) {
		if ($img->deleted && $img->id) {
			array_push($delete, $img->id);
		} else if ($img->changed) {
			if ($img->id) {
				array_push($update, $img->id, $img->name);
			} else {
				$image = $upload->base64_to_file($img->image);
				array_push($insert, $image, $img->name);
			}
		} else {
			if ($img->image) {
				$image = $upload->base64_to_file($img->image);
				array_push($insert, $image, $img->name);
			}
		}
	}
	if (count($insert) > 0) {
		$p = join(",", array_map(function ($a) {
			return $a;
		}, array_fill(0, count($insert) / 2, "(?,?)")));
		$sqlInsert = "INSERT INTO tb_gambar (image, name) VALUES $p";
	}
	if (count($delete) > 0) {
		$p = join(",", array_map(function ($a) {
			return $a;
		}, array_fill(0, count($delete), "?")));
		$sqlDelete = "DELETE FROM tb_gambar WHERE id IN ($p)";
	}
	if (count($update) > 0) {
		$p = join(",", array_map(function ($a) {
			return $a;
		}, array_fill(0, count($update) / 2, "(?,?)")));
		$sqlUpdate = "INSERT INTO tb_gambar (id, name) VALUES $p ON DUPLICATE KEY UPDATE name = VALUES (name)";
	}
	$toExec = [[$sqlInsert, $insert], [$sqlUpdate, $update], [$sqlDelete, $delete]];
	$isSuccess = true;
	foreach ($toExec as $sql) {
		if ($sql[0]) {
			$result = execSql($sql[0], $sql[1]);
			if ($result[2]) {
				$isSuccess = $result;
				break;
			}
		}
	}
	if ($isSuccess === true) {
		$response->Success('Berhasil');
	} else {
		$response->Error($isSuccess);
	}
	// $response->Success("Berhasil ubah data gambar");
} else {
	$response->Error("Please Check Parameters");
}
