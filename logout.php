<?php
  require_once 'common.php';
  
  session_start();
  session_destroy();
  initConfig();
  header('location:'.$config['site_url']);