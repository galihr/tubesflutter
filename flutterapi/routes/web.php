<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->post('/wisata','WisataController@create');

$router->get('api/wisata','WisataController@index');

$router->get('/wisata/{id}','WisataController@show');

$router->put('/wisata/{id}','WisataController@update');

$router->delete('/wisata/{id}','WisataController@destroy');