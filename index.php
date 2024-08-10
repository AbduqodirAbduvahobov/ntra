<?php

declare(strict_types=1);

require __DIR__ . '/bootstrap.php';

$user = new \App\User();

$ads = new \App\Ads();

$status = new \App\Status();

$branch = new \App\Branch();


$new_Ads = $ads->update(7, 'Kvartira',"4ta bola turamiz yana 2 ta kerak", 4, 2,2 , "Toshkent",70, 3);
