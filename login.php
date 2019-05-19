<?php
require_once 'bootstrap.php';

if (isset($_POST['login'],$_POST['password']))
{   
$q='SELECT * FROM Admin WHERE '.
  '(Login=\''.addslashes($_POST['login']).'\') AND '.
  '(Password=\''.getHash($_POST['password']).'\')';
$r=mysqli_query($link,$q);
if ($r){
  if (mysqli_num_rows($r)>0){
	$row=mysqli_fetch_array($r);
	$_SESSION['Id']=$row['id'];
  }
};
};

header('location:'.$config['site_url']);