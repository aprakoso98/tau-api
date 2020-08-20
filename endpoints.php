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
	case "GetS1":
		require "api/GetS1.php";
		break;
	case "InsertS1":
		require "api/InsertS1.php";
		break;
	case "UpdateS1":
		require "api/UpdateS1.php";
		break;
	case "GetS1Kategori":
		require "api/GetS1Kategori.php";
		break;
	case "InsertS1Kategori":
		require "api/InsertS1Kategori.php";
		break;
	case "InsertProgramStudi":
		require "api/InsertProgramStudi.php";
		break;
	case "GetProgramStudi":
		require "api/GetProgramStudi.php";
		break;
	case "GetProgramStudiKategori":
		require "api/GetProgramStudiKategori.php";
		break;
	case "GetGambar":
		require "api/GetGambar.php";
		break;
	case "UpdateGambar":
		require "api/UpdateGambar.php";
		break;
	default:
		$response->Error("Required action", "E0002");
		break;
}
