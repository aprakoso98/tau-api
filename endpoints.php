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
	default:
		$response->Error("Required action", "E0002");
		break;
}
