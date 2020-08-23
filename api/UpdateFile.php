<?php
function execSql($sql, $param){
	global $db;
	$db->Execute($sql, $param);
	$err = $db->error();
	return $err;
}

$upload = new Upload(['folderPath' => 'files/']);
if (checkIfKeyExist($PostData, ["data"])) {
	$insert = [];
	$update = [];
	$delete = [];
	foreach ($PostData->data as $file) {
		if ($file->deleted && $file->id) {
			array_push($delete, $file->id);
		} else if ($file->changed) {
			if ($file->id) {
				array_push($update, $file->id, $file->name);
			} else {
				$fileData = $upload->base64_to_file($file->file);
				array_push($insert, $fileData, $file->name, $file->format);
			}
		} else {
			if ($file->file) {
				$fileData = $upload->base64_to_file($file->file);
				array_push($insert, $fileData, $file->name, $file->format);
			}
		}
	}
	if (count($insert) > 0) {
		$p = join(",", array_map(function ($a) {
			return $a;
		}, array_fill(0, count($insert) / 3, "(?,?,?)")));
		$sqlInsert = "INSERT INTO tb_files (file, name, format) VALUES $p";
	}
	if (count($delete) > 0) {
		$p = join(",", array_map(function ($a) {
			return $a;
		}, array_fill(0, count($delete), "?")));
		$sqlDelete = "DELETE FROM tb_files WHERE id IN ($p)";
	}
	if (count($update) > 0) {
		$p = join(",", array_map(function ($a) {
			return $a;
		}, array_fill(0, count($update) / 2, "(?,?)")));
		$sqlUpdate = "INSERT INTO tb_files (id, name) VALUES $p ON DUPLICATE KEY UPDATE name = VALUES (name)";
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
