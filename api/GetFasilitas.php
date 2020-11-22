<?php
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT * FROM tb_fasilitas ORDER BY position ASC", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
