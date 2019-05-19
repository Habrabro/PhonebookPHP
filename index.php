<?php

require_once 'bootstrap.php';

require_once 'form.php';

$p['title']='Люди';

$p['tableTitleClass']='lead text-center';

$p['tableClass']='table table-striped table-center';

$param['content']= getDBTableAsHTML('SELECT * FROM person',$p);

$param['title']='Телефонный справочник';

template($param);
