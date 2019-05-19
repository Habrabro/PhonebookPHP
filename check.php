<?php

/**
* Функция для проверки формальной корректности учетных данных
* Если параметр не задан или массив пуст, используется $_POST
*
* @param array  $data  Массив с данными для проверки. 
*/
function checkAdminData($data=array())
{
  if (empty($data))
    $data=$_POST;
  if (isset($data['Name'],$data['Login'],$data['Password'])
      AND (strlen(trim($data['Name']))>0)
      AND (strlen(trim($data['Login']))>0)
      AND (strlen(trim($data['Password']))>0))
    return TRUE;
  else
    return FALSE;
}

/**
* Функция для проверки формальной корректности учетных данных и Id
* Если параметр не задан или массив пуст, используется $_POST
*
* @param array  $data  Массив с данными для проверки. 
*/
function checkAdminDataAndId($data=array())
{
  if (empty($data))
    $data=$_POST;
  if (checkAdminData($data)
      AND isset($data['Id'])
      AND (is_numeric($data['Id'])))
    return TRUE;
  else
    return FALSE;
}

//

function checkPersonData($data=array())
{
	if (empty($data))
		$data=$_POST;
	if (isset($data['FullName']))
		return true;
	else
		return false;
}
	
	
	
	