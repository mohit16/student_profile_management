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
$_regno = $_POST["regno"];
$_yoa = $_POST["yoa"];
$_yoa=$_yoa.'abc';

$count="SELECT COUNT($_regno) as b FROM reg1 WHERE regno='$_regno'";
$count1=mysql_query($count);


$row= mysql_fetch_array($count1);

if($row['b']<1){
header('Location: alert-deler.html');
}
else
{
$sql="DELETE FROM reg1 WHERE regno='$_regno'";
$sql21=mysql_query($sql);
$sql="DELETE FROM $_yoa WHERE regno='$_regno'";
$sql21=mysql_query($sql);
header('Location: del1.html');
}
?>