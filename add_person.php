<?php
  require_once 'bootstrap.php';
  
  if (checkAdminAndRedirectIfNot())
  {
    if (checkPersonData())
      mysqli_query($link, 
        'INSERT INTO Person (FullName) VALUES ("'.
           addslashes($_POST['FullName']).'")');
  }
  header('location:'.$config['site_url'].'person.php');