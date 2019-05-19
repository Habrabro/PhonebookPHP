<?php
  require_once 'bootstrap.php';
  
  if (checkAdminAndRedirectIfNot())
  {  
    if (checkAdminDataAndId())
    {
      mysqli_query($link,
        'UPDATE Admin SET '.
          'Name="'.addslashes($_POST['Name']).'", '.
          'Login="'.addslashes($_POST['Login']).'", '.
          'Password="'.getHash($_POST['Password']).'" '.
        'WHERE Id='.$_POST['Id']);
      $param['title']='Профиль сохранен';
      $param['content']=
      '<div class="text-center"><p>Профиль сохранен</p><a href="profile.php">Вернуться в личный кабинет</a></div>';         
      template($param); 
    }
    else
    {
      $param['title']='Профиль не сохранен';
      $param['content']=
      '<div class="text-center"><p class="alert-danger">Профиль не сохранен. Данные не корректны.</p><a href="profile.php">Вернуться в личный кабинет</a></div>';         
      template($param); 
    }
  }