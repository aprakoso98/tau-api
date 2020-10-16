<?php
if (checkIfKeyExist($PostData, [])) {
	$data = $db->ExecuteAll("SELECT 
	tb_galeri.id, tb_galeri.nama, tb_galeri.deskripsi, tb_galeri.is_video, tb_galeri.is_embed,
	(
		CASE WHEN tb_galeri.fromFile='1' THEN CONCAT(tb_files.folder, '/', tb_files.file)
				ELSE tb_galeri.media
		END
	) AS media
	FROM tb_galeri LEFT JOIN tb_files ON tb_galeri.media=tb_files.id ORDER BY tb_galeri.position ASC", []);
	$response->Success($data);
} else {
	$response->Error("Please Check Parameters");
}
