<?php
  require_once 'bootstrap.php';
  
  if (isAdmin())
  {  
    $param['title']='Личный кабинет';
    
    $result=mysqli_query($link, 'SELECT * FROM Admin WHERE Id='.$_SESSION['Id']);
    if ($row=mysqli_fetch_assoc($result))
    {    
      $param['content']=
  '		<h2 class="col-md-12 text-center">Личный кабинет</h1>
      <form class="col-md-4 col-md-offset-4 form-horizontal" method="post" action="update_profile.php">
        <input type="hidden" name="Id" value="'.$_SESSION['Id'].'"/>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="Name">Имя</label>
          <div class="col-sm-9">
            <input id="Name" name="Name" class="form-group form-control" type="text" value="'.$row['Name'].'"/>
          </div>
        </div>    
        <div class="form-group">
          <label class="col-sm-3 control-label" for="Login">Логин</label>
          <div class="col-sm-9">
            <input id="Login" name="Login" class="form-group form-control" type="text" value="'.$row['Login'].'"/>
          </div>
        </div>    
        <div class="form-group">
          <label class="col-sm-3 control-label" for="Password">Пароль</label>
          <div class="col-sm-9">
            <input id="Password" name="Password" class="form-group form-control" type="text" value=""/>
          </div>
        </div>    
      <input class="form-group form-control btn-primary" type="submit" value="Сохранить"/>
      </form>';
    }
    else
    {
      $param['content']='Неверный Admin.Id = '.$_SESSION['Id'];
    }         
    template($param);
  }
  else
    header('location:'.$config['site_url']);