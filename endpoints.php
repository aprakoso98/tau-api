<?php
// error_reporting(0);
$debug = false;
switch ($PostData->action) {
	case "GetManage":
		require "api/GetManage.php";
		break;
	case "UpdateManage":
		require "api/UpdateManage.php";
		break;
	case "PostArticle":
		require "api/PostArticle.php";
		break;
	case "GetArticle":
		require "api/GetArticle.php";
		break;
	case "GetFasilitas":
		require "api/GetFasilitas.php";
		break;
	case "InsertFasilitas":
		require "api/InsertFasilitas.php";
		break;
	case "GetStaff":
		require "api/GetStaff.php";
		break;
	case "InsertStaff":
		require "api/InsertStaff.php";
	case "GetGaleri":
		require "api/GetGaleri.php";
		break;
	case "InsertGaleri":
		require "api/InsertGaleri.php";
		break;
	default:
		$response->Error("Required action", "E0002");
		break;
}
