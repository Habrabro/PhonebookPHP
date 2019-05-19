<?php
  require_once 'bootstrap.php';
  
  if (checkAdminAndRedirectIfNot())
  {
    if (isset($_GET['Id']))
      mysqli_query($link, 
        'DELETE FROM Person WHERE Id='.((int)$_GET['Id'])); 
  }
  goBack();