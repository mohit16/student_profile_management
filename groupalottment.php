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

$_branch=$_SESSION['branch'];
$_regno=$_SESSION['regno'];
$_yoa=$_SESSION['yoa'];
$_yoa=$_yoa.'abc';
$s1="SELECT COUNT(*) as c FROM information_schema.tables WHERE table_schema = 'spm' AND table_name = '$_yoa'";
$s2=mysql_query($s1);

$s3= mysql_fetch_array($s2);
if($s3['c']<1)
{$sq1="CREATE TABLE $_yoa (regno varchar(255),pg varchar(255),eg varchar(255))";
$sq2=mysql_query($sq1);
if(!$sq2){
die("fail  ". mysql_error());
}
}


$check=0;
for($i=1;$i<=6;$i++)
{$count="SELECT COUNT(pg) as b FROM $_yoa WHERE pg='$_branch-$i'";
$count1=mysql_query($count);


$row= mysql_fetch_array($count1);

if($row['b']<3)
{$sql = "INSERT INTO $_yoa(regno,pg,eg) VALUES ('$_regno','$_branch-$i','$_branch-$i')";

$sql21=mysql_query($sql);
$check=$check+$row['b'];
if($check>29)
echo"adm full";
break;
}
$check=$check+$row['b'];
if($check>29)
{echo"Admission full";
header('Location: alert-g2.html');
}
}

header('Location: alert-g1.html');






?>
