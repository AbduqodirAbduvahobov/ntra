<?php

$name = $_POST['name'];
$address = $_POST['address'];
//dd($name);
$newsBr  = (new App\Branch())->createBranch($name, $address);

