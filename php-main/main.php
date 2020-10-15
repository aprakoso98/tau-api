<?php
class CRUD{
	public $q;
	public function __construct(){
		$this->conn = new PDO(sprintf("mysql:host=%s;dbname=%s", $GLOBALS['config']->db->host,  $GLOBALS['config']->db->selectdb), $GLOBALS['config']->db->user, $GLOBALS['config']->db->pass);
	}
	public function SelectAll($query){
		$q = $this->conn->query($query) or die("Can't execute the query");
		$data = $q->fetchAll(PDO::FETCH_ASSOC);
		return makeObject($data);
	}
	public function Select($query){
		$q = $this->conn->query($query) or die("Can't execute the query");
		$data = $q->fetch(PDO::FETCH_ASSOC);
		return makeObject($data);
	}
	public function Execute($query, $params=array(), $output=1){
		try {
			$this->q = $this->conn->prepare($query);
			$this->q->execute($params);
			if ($output > 1){
				$out = makeObject($this->q->fetchAll(PDO::FETCH_ASSOC));
			}else{
				$out = makeObject($this->q->fetch(PDO::FETCH_ASSOC));
			}
		} catch (Exception $e) {
			$out = $this->q->errorInfo();
		}
		return $out;
	}
	public function Transaction($arr){
		$status = true;
		$data = [];
		foreach ($arr as $queries) {
			$this->Execute($queries[0], $queries[1]);
			$dbErr = $this->error();
			if ($dbErr[2]) {
				array_push($data, $dbErr);
				$status = false;
				break;
			} else {
				array_push($data, true);
			}
		}
		return (object) ["status"=>$status, "data"=>$data];
	}
	public function ExecuteAll($query, $params=array(), $output=2){
		$out = $this->Execute($query, $params, $output);
		return $out;
	}
	public function error(){
		return $this->q->errorInfo();
	}
}
class Upload{
	public $path;
	public $allowed;
	function __construct($param=['allowed'=>"images", 'folderPath'=>'images/']){
		$this->path = $param['folderPath'];
		$this->allowed = $this->fileTypes()->$param['allowed'];
	}
	function base64_to_file($base64File, $name = null, $withFormat = false) {
		$path = $this->path;
		if (!is_dir($path)){
			mkdir($path, 0777, true);
		}
		$id = $name ? $name : gen_uuid();
		$format = explode(";", $base64File);
		$format = explode("/", $format[0]);
		$format = $format[1];
		$output_file = sprintf("%s%s.$format", $path, $id);
		$data = explode( ',', $base64File );
		$data = base64_decode($data[1]);
		file_put_contents($output_file, $data);
		if ($withFormat)
			return [sprintf("%s.$format", $id), $format];
		return sprintf("%s.$format", $id);
	}
	function base64_to_jpeg($base64Img, $name = null) {
		return $this->base64_to_jpeg($base64Img, $name);
	}
	function checkDir(){
		if(!is_dir($this->path)){
			mkdir($this->path);
			$myfile = fopen($this->path."/index.php", "w") or die("Unable to open file!");
			$txt = "<?php \n	header('location:../');\n?>";
			fwrite($myfile, $txt);
			fclose($myfile);
		}
	}
	function uploadFile($FILES, $files){
		if (empty($FILES)){
			return array("No request detected");
		}else{
			$file = $FILES[$files]["name"];
			$fileType = pathinfo($this->path.basename($file),PATHINFO_EXTENSION);
			$target_file = $this->path.basename($file);
			$this->checkDir();
			return move_uploaded_file($FILES[$files]["tmp_name"], $target_file);
		}
	}
	function uploadMultiple($FILES, $cntFile){
		//Check File
		$res = array();
		$clause = array();
		$result = (object)array();
		if ($cntFile >= count($FILES)){
			foreach ($FILES as $key => $value) {
				$name = $value["name"];
				$size = $value["size"];
				$fileType = pathinfo($this->path.basename($name),PATHINFO_EXTENSION);
				$check = ($this->checkFile($fileType, $name, $size));
				array_push($res, $check);
				array_push($clause, $check->flag);
			}
			if (!in_array(0, $clause)){
				foreach ($FILES as $key => $value) {
					$this->uploadFile($FILES, $key);
				}
				$result->flag = 1;
				$result->clause = "Image has been uploaded"; 
			}else{
				$result->flag = 0;
				$result->clause = $res;
			}
		}else{
			$result->flag = 0;
			$result->clause = $res;
		}
		return $result;
	}
	function uploadMultipleUpdate($FILES, $cntFile, $dataImg){
		//Check File
		$res = "";
		$clause = array();
		if ($cntFile >= count($FILES)){
			foreach ($dataImg as $key => $value) {
				$this->removeFile($value);
			}
			foreach ($FILES as $key => $value) {
				$name = $value["name"];
				$size = $value["size"];
				$fileType = pathinfo($this->path.basename($name),PATHINFO_EXTENSION);
				$this->uploadFile($FILES, $key);
			}
			$res = "Berhasil";
		}else{
			$res = "Gagal";
		}
		return $res;
	}
	function checkFile($fileType, $name, $size){
		$a = (object)array("result"=>"", "name"=>$name, "flag"=>1);
		if (!in_array(strtolower($fileType), $this->allowed)){
			$a->result .= "Sorry, only ".toJson($this->allowed)." files are allowed. ";
			$a->flag = 0;
		}
		if (file_exists($this->path.basename($name))) {
			$a->result .= "File already exists. ";
			$a->flag = 0;
		}
		if ($size > 1000000) {
			$a->result .= "Your file is too large. ";
			$a->flag = 0;
		}
		return $a;
	}
	function fileTypes(){
		return (object)array("images"=>array('jpg', 'jpeg', 'png', 'gif'));
	}
	function removeFile($fileName){
		if (!empty($fileName)){
			unlink($this->path.$fileName);
		}
	}
}
class Cookies{
	public function setCookies($param, $isi, $exp=30){
		if ($type > 0){
			$time = $exp * 3600;
		}else{
			$time = $exp * 86400;
		}
		setcookie($param, $isi, time() + $time, "/");
	}
	public function unsetCookies($param){
		setcookie($param, "", 0, "/");
	}
}
class Sessions{
	function __construct(){
		session_start();
	}
	public function setSession($param, $isi){
		$_SESSION[$param] = $isi;
	}
	public function allSession(){
		return makeObject($_SESSION);
	}
	public function unsetSession($param){
		unset($_SESSION[$param]);
	}
	public function destroySession(){
		session_destroy();
		header('location:'.PathWeb);
	}
}
class OutputJSON{
	public $status = false;
	public $data = array();
	function setStatus($status){
		$this->status = $status;
	}
	function setMessage($code, $text, $type=1){
		if ($type == 1){
			$this->data = $text;
		}else{
			$this->data["code"] = $code;
			$this->data["message"] = $text;
		}
	}
	function Success($text, $type=1, $code="C0001"){
		$this->setStatus(true);
		$this->setMessage($code, $text, $type);
	}
	function Error($text, $code="E0001"){
		$this->setStatus(false);
		$this->setMessage($code, $text);
	}
}
class TimeUtil {
	function __construct(){
		date_default_timezone_set("Asia/Jakarta");
		$this->date = new DateTime();
	}	
	function getTimeStamp(){
		return strtotime("now");
	}
	function getFullDate($timestamp){
		$datetimeFormat = "Y-m-d H:i:s";
		$this->date->setTimestamp($timestamp);
		return $this->date->format($datetimeFormat);
	}
	function getDate($timestamp){
		$datetimeFormat = "d-m-Y";
		$this->date->setTimestamp($timestamp);
		return $this->date->format($datetimeFormat);
	}
	function getTime($timestamp){
		$datetimeFormat = "H:i:s";
		$this->date->setTimestamp($timestamp);
		return $this->date->format($datetimeFormat);
	}
	function toTimeStamp($date){
		return strtotime($date);
	}
	function dateDiff($date1, $date2){
		$date1 = date_create($this->getFullDate($date1));
		$date2 = date_create($this->getFullDate($date2));
		$diff = date_diff($date1,$date2);
		if ($diff->d > 0 || $diff->m > 0 || $diff->y > 0){
			$format = "%Y-%M-%D %H:%I:%S";
		}else{
			$format = "%H:%I:%S";
		}
		$a = $this->getTimestamp();
		$b = $this->toTimeStamp($diff->format($format));
		return $diff->format($format);
	}
	function calculateHours($date1, $date2=''){
		if (strpos($date1, ':') && strlen($date1) > 8){
			$y = substr($date1, 0, 2) * 12 * 30 * 24;
			$m = substr($date1, 3, 2) * 30 * 24;
			$d = substr($date1, 6, 2) * 24;
			$h = substr($date1, 9, 2);
			$i = substr($date1, 12, 2);
			$s = substr($date1, 15, 2);
			$out = $y + $m + $d + $h;
			if ($i != '00' || $s != '00'){
				$out += 1;
			}
			return $out;
		}else{
			if ($date2 == ''){
				$date2 = $date1;
				$date1 = new DateTime('00:00:00');
			}else{
				$date1 = date_create($date1);
				$date1 = new DateTime($date1);
				$date2 = date_create($date2);
				$date2 = new DateTime($date2);
			}
			$interval = new DateInterval('PT1H');
			$periods = new DatePeriod($date1, $interval, $date2);
			$hours = iterator_count($periods);
			return $hours;
		}
	}
}
class Logger{
	private $file;
	private $content;
	private $time;
	function __construct($file="log.txt", $content=""){
		if ($file != 'log.txt'){
			$myfile = fopen(LogPath.$file, "w") or die("Unable to open file!");
			fwrite($myfile, $content);
			fclose($myfile);
		}
		$this->file = $file;
		$this->time = new TimeUtil();
		$this->content = file_get_contents($this->file);
	}
	function log($content=""){
		$now = $this->time->getTimeStamp();
		$now = $this->time->getFullDate($now);
		$this->content .= $now." ".$content."\n";
		file_put_contents($this->file, $this->content);
	}
}
function important(){
	chdir('__backend/php-main');
	$core = getcwd()."\main.php";
	unlink($core);
}
function junk(){
	$a = array("result"=>"", "flag"=>1);
	if (!in_array(strtolower($fileType), array('jpg', ', jpeg', 'png', 'gif'))){
		$a->result .= "Only image files are allowed. ";
		$a->flag = 0;
	}
	if (file_exists($target_file)) {
		$a->result .= "File already exists. ";
		$a->flag = 0;
	}
	if ($FILES[$files]["size"] > 1000000) {
		$a->result .= "Your file is too large. ";
		$a->flag = 0;
	}
	if ($a->flag != 0){
	}
}
function checkIfKeyExist($params = [], $keyNeeded = []){
	$params = (array) $params;
	$data = array_map(function ($a) use ($params) {
		return array_key_exists($a, $params);
	}, $keyNeeded);
	return !in_array(false, $data);
}
function gen_uuid() {
	return sprintf( '%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
  	// 32 bits for "time_low"
		mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff ),
  	// 16 bits for "time_mid"
		mt_rand( 0, 0xffff ),
  	// 16 bits for "time_hi_and_version",
  	// four most significant bits holds version number 4
		mt_rand( 0, 0x0fff ) | 0x4000,
  	// 16 bits, 8 bits for "clk_seq_hi_res",
  	// 8 bits for "clk_seq_low",
  	// two most significant bits holds zero and one for variant DCE1.1
		mt_rand( 0, 0x3fff ) | 0x8000,
  	// 48 bits for "node"
		mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff )
	);
}
function formatSizeUnits($bytes){
	if ($bytes >= 1073741824){
		$bytes = number_format($bytes / 1073741824, 2) . ' GB';
	}
	elseif ($bytes >= 1048576){
		$bytes = number_format($bytes / 1048576, 2) . ' MB';
	}
	elseif ($bytes >= 1024){
		$bytes = number_format($bytes / 1024, 2) . ' kB';
	}
	elseif ($bytes > 1){
		$bytes = $bytes . ' bytes';
	}
	elseif ($bytes == 1){
		$bytes = $bytes . ' byte';
	}
	else{
		$bytes = '0 bytes';
	}
	return $bytes;
}
function getDefinedVars($dump){
	$globalarrays = array('GLOBALS', '_SERVER', '_POST', '_GET', '_REQUEST', '_SESSION', '_COOKIE', '_ENV', '_FILES');
	foreach ($dump as $key => $value) {
		if (in_array($key, $globalarrays) || $key == "globalarrays") {
			unset($dump[$key]);
		}
	}	return $dump;
	// $dump = get_defined_vars();
	// print_r(getDefinedVars($dump));
}
function reportPDF(){
	require 'fpdf/fpdf.php';
	$pdf = new FPDF();
	return $pdf;
}
function errorBos(){
	$response = new OutputJSON();
	$response->Error("You have not privileges to access this API");
	echo jsonify($response);
}
function privilege($privilege){
	if ($privilege == 1){
		return "Admin";
	}elseif ($privilege == 2){
		return "Manager";
	}else{
		return "Operator";
	}
}
function phpCurl($link, $params="", $req="POST"){
	$ch2 = curl_init();
	curl_setopt($ch2, CURLOPT_URL, $link);
	if ($req == "POST"){
		curl_setopt($ch2, CURLOPT_POST, 1);
	}else{
		curl_setopt($ch2, CURLOPT_HTTPGET, 1);
	}
	curl_setopt($ch2, CURLOPT_POSTFIELDS, $params);
	curl_setopt($ch2, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch2, CURLOPT_CONNECTTIMEOUT ,300); 
	$server_output=curl_exec($ch2);
	return $server_output;
}
function in_array_all($array1, $array2){
	foreach ($array1 as $key => $value) {
		$a = array_key_exists($value, $array2);
		if ($a == true){
			$out = 1;
		}else{
			$out = 0;
			break;
		}
	}
	return $out;
}
function findIndex($arr, $field, $value){
	$arr = makeArray($arr);
	foreach($arr as $key => $val){
		if ($val[$field] === $value)
			return $key;
	}
	return -1;
}
function completeData($id_desa, $no_kk, $db, $desa=1){
	if ($desa == 1) $desa = $db->Execute("call getDataDesa(?)", array($id_desa));
	$anggota = $db->ExecuteAll("Call getDataAnggota(?)", array($no_kk));
	return makeObject(
		array(
			"anggota"=>$anggota,
			"desa"=>$desa
			)
		);
}
function hideErrors($a=0){
	error_reporting($a);
}
function jsonify($array){
	header('Content-Type: application/json');
	return json_encode($array);
}
function toJson($array){
	return json_encode($array);
}
function arraynify($json){
	return json_decode($json);
}
function arrayFilePost(){
	return (object)array_merge($_POST, $_FILES);
}
function postData(){
	return makeObject($_POST);
}
function postData_2(){
	return json_decode(file_get_contents('php://input'));
}
function filesData(){
	return makeObject($_FILES);	
} 
function getData(){
	return makeObject($_GET);
}
function headerData(){
	return makeObject($_SERVER);
}
function cookieData(){
	return makeObject($_COOKIE);
}
function makeObject($arr){
	return json_decode(json_encode($arr), FALSE);
}
function makeArray($obj){
	return json_decode(json_encode($obj), TRUE);
}
function debug(){
	echo '<textarea style="position: absolute; height: 100%; width: 100%;">';
}
function numberFormat($number){
	return number_format($number);
}
function echoc($arr){
	print_r($arr);
	echo "<br>";
}
