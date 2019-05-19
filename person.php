<?php
  require_once 'bootstrap.php';
  
  if (checkAdminAndRedirectIfNot())
  {
    $param['title']='Кадры';
    $p['tableTitleClass']='lead text-center';
    $p['tableClass']='table table-striped table-center';
    $p['title']='Кадры';
    $p['editHref']='edit_person.php';
    $p['deleteHref']='delete_person.php';
    $param['content']=getDBTableAsHTML(
      'SELECT Id,FullName AS "ФИО" FROM Person',$p);
         
    $f['Action']='add_person.php';
    $f['SubmitTitle']='Добавить';
    $param['content'].= getPersonForm($f);
    
    template($param);
  }