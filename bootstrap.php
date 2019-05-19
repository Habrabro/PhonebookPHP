<?php

require_once 'common.php';
require_once 'check.php';
require_once 'form.php';

initErrorHandler(); // установка обработчика ошибок

session_start(); // старт сессии

initConfig(); // загрузка конфигурации

connectToDB(); // подключение к БД