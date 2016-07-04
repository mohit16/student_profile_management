<?php
session_start();
define('db_name','SPM'); 
$link = mysql_connect("localhost","root","");
 
if(!$link) {
die('Could not Connect : ' . mysql_error());
 }	
 
 
$db_selected = mysql_select_db(db_name,$link);
 
if(!$db_selected) {
die("can\' t use forms1:-- " . mysql_error());
}
$_SESSION['regno']=$_regno = $_POST["regno"];
$_name = $_POST["name"];
$_mno = $_POST["mno"];
$_email = $_POST["email"];
$_SESSION['branch']=$_branch=$_POST["branch"];
$_SESSION['yoa']=$_yoa = $_POST["yoa"];
$_rank = $_POST["rank"];
$_categ = $_POST["categ"];
$_status = $_POST["status"];
$_fname = $_POST["fname"];
$_foccu=$_POST["foccu"];
$_fdesignation = $_POST["fdesignation"];
$_fmno = $_POST["fmno"];
$_femail = $_POST["femail"];
$_mname = $_POST["mname"];
$_moccu=$_POST["moccu"];
$_mdesignation = $_POST["mdesignation"];
$_mmno = $_POST["mmno"];
$_memail = $_POST["memail"];

 
$sql = "INSERT INTO reg1(regno,name,mno,email,branch,yoa,rank,categ,status,fname,foccu,fdesignation,fmno,femail,mname,moccu,mdesignation,mmno,memail) VALUES ('$_regno','$_name','$_mno','$_email','$_branch','$_yoa','$_rank','$_categ','$_status','$_fname','$_foccu','$_fdesignation','$_fmno','$_femail','$_mname','$_moccu','$_mdesignation','$_mmno','$_memail')";
 
$sql21=mysql_query($sql);
if(!$sql21){
die("fail  ". mysql_error());
}
header('Location: register1.html');
 
mysql_close($link);
 
?>
 