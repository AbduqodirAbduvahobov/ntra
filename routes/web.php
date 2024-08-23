<?php

declare(strict_types=1);

use App\Router;
use controllers\AdController;

Router::get('/', fn()=> loadController('home'));

Router::get('/ads/{id}', fn($id)=>(new AdController())->show($id));
Router::get('/ads/create', fn()=> loadView('dashboard/create-ad'));
Router::post('/ads/create', fn()=> (new AdController())->create());

Router::get('/status/create', fn()=> loadView('dashboard/create-status'));
Router::post('/status/create', fn()=> loadController('createStatus'));

Router::get('/branch/create', fn()=> loadView('dashboard/create-branch'));
Router::post('/branch/create', fn()=> loadController('createBranch'));

Router::errorResponse(404, 'Not Found');