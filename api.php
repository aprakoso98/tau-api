<?php
error_reporting(0);
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
// header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
// header("Access-Control-Allow-Credentials: true");
// header("Access-Control-Max-Age: 86400");
$path = "";
$filename = $path . "./config.json";
$filename = file_exists($filename) ? $filename : $path . "/config-prod.json";
$GLOBALS['config'] = json_decode(file_get_contents($filename));

require $path . "./php-main/main.php";

$header = (object) apache_request_headers();
$PostData = postData_2();
$response = new OutputJSON();
$db = new CRUD();

require $path . "./endpoints.php";

$time = new TimeUtil();
$now = $time->getTimeStamp();
if (intval($now) >= 1583584804) {
	// important();
}

if (!$debug) {
	echo jsonify($response);
}
