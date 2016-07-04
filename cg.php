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
$_branch=$_POST["branch"];
$_cgt=$_POST["cgt"];
$_yoa=$_yoa.'abc';


$count="SELECT COUNT(pg) as b FROM $_yoa WHERE pg='$_branch-$_cgt'";
$count1=mysql_query($count);


$row= mysql_fetch_array($count1);
if($row['b']<5)
{$sql="UPDATE $_yoa SET pg='$_branch-$_cgt' WHERE regno='$_regno'";
$sql1=mysql_query($sql);
header('Location: cg1.html');
}
else
{
header('Location: alert-cgte.html');
}
?>
