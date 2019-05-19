<?php

function getPersonForm($data=array()) {	
	$c = "";
	
	// 2.
	$ShowCancel = isset($data['ShowCancel']) ? $data['ShowCancel'] : false;
	
	// 3. array_???
	$defaultData = array("Id" => 0, "FullName" => "", "Action" => "", "Method" => "POST", "FormTitle" => "", "SubmitTitle" => "OK", 'ShowCancel' => false, 'CancelTitle' => 'Отмена', 
	'CancelHref' => isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '');
	
	$realData = array_merge($defaultData, $data);
	
	extract($realData);
	
	
	$CancelButton = $ShowCancel ? '<button>'.$CancelTitle.'</button>' : '';

	
	$c .= 
	'<form class="form-horizontal" action = "'.$Action.'" method = "'.$Method.'">
	  <p><b>'.$FormTitle.'</b></p>
	  <div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">'.$FullName.'</label>
		<div class="col-sm-10">
		  <input name = "FullName" class="form-control" id="inputEmail3">
		</div>
	  </div>
	  <div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
		  <button type="submit" class="btn btn-default">'.$SubmitTitle.'</button>
		</div>
	  </div>'.$CancelButton.'</form>';
	return $c;
}


//echo getPersonForm(array("FullName" => "ФИО", "SubmitTitle" => "Добавить",'ShowCancel' => true));