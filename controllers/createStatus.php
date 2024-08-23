<?php

$name = $_POST['name'];
//dd($name);
$newsSt  = (new App\Status())->createStatus($name);

