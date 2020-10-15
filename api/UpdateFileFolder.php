<?php
if (checkIfKeyExist($PostData, ["id", "folder"])) {
	$file = $db->Execute("SELECT * FROM Tb_files WHERE id=?", [$PostData->id]);
	if ($file) {
		$path = ["files", $file->folder];
		$newPath = ["files", $PostData->folder];
		if (!is_dir(join("/", $newPath))) {
			mkdir(join("/", $newPath), 0777, true);
		}
		array_push($path, $file->file);
		array_push($newPath, $file->file);
		rename(join("/", $path), join("/", $newPath));
		$data = $db->Execute("UPDATE tb_files SET folder=? WHERE id=?", [$PostData->folder, $PostData->id]);
		$response->Success("Sukses");
	} else {
		$response->Error('Data tidak ditemukan');
	}
} else {
	$response->Error("Please Check Parameters");
}
