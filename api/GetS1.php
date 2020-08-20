<?php
if (checkIfKeyExist($PostData, ["id_program"])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_prodi WHERE id_program=?", [$PostData->id_program]);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
