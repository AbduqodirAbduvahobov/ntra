<?php

declare(strict_types=1);

use App\Router;
use Controllers\AdController;

Router::get('/', fn() => loadController('home'));

Router::get('/ads/{id}', fn(int $id) => (new AdController())->show($id));
Router::get('/ads/create', fn() => loadView('dashboard/create-ad'));
Router::post('/ads/create', fn() => (new AdController())->create());

Router::get('/ads/update/{id}', fn(int $id) => (new AdController())->update($id));

// Statuses
Router::get('/branch/create', fn() => loadView('dashboard/create-branch'));
Router::post('/branch/create', fn() => loadController('createBranch'));


Router::get('/status/create', fn() => loadView('dashboard/create-status'));
Router::post('/status/create', fn() => loadController('createStatus'));

Router::get('/login',  fn() => loadView('auth/login'), 'guest');
Router::post('/login', fn() => (new \Controller\AuthController())->login());

Router::get('/admin', fn() => loadView('dashboard/home'), 'auth');
Router::get('/profile2', fn() => (new \Controller\UserController())->loadProfile(), 'auth');
Router::delete('/ads/delete/{id}', fn(int $id)=>(new AdController())->delete($id));
Router::errorResponse(404, 'Not Found');