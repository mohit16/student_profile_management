<?php
define('db_name','SPM'); 
$link = mysql_connect("localhost","root","");
 
if(!$link) {
die('Could not Connect : ' . mysql_error());
 }	
 
 
$db_selected = mysql_select_db(db_name,$link);
 
if(!$db_selected) {
die("can\' t use forms1:-- " . mysql_error());
}
$_regno=$_POST["regno"];
$_em=$_POST["em"];
$_nv=$_POST["nv"];
$sql="UPDATE reg1 SET $_em='$_nv' WHERE regno='$_regno'";
$sql1=mysql_query($sql);

if(!$sql1){
die("fail  ". mysql_error());
}
header('Location: alert-modify.html');
 
mysql_close($link);
 
?>