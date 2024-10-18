<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Jobs\JobsController;
use App\Http\Controllers\Categories\CategoriesController;
use App\Http\Controllers\Users\UsersController;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::group(['prefix'=>'jobs'],function(){
    Route::get('/single/{id}', [JobsController::class, 'single'])->name('single.job');
    Route::post('/save', [JobsController::class, 'saveJob'])->name('save.job');
    Route::post('/apply', [JobsController::class, 'jobApply'])->name('apply.job');
});

Route::group(['prefix'=>'categories'],function(){
    Route::get('/single/{name}', [CategoriesController::class, 'singleCategory'])->name('categories.single');
});

Route::group(['prefix'=>'users'],function(){
    Route::get('/profile', [UsersController::class, 'profile'])->name('profile');

    Route::get('/applications', [UsersController::class, 'applications'])->name('applications');

    Route::get('/savedjobs', [UsersController::class, 'savedJobs'])->name('saved.jobs');

    Route::get('/edit_details', [UsersController::class, 'editDetails'])->name('edit.details');

    Route::put('/update_details', [UsersController::class, 'updateDetails'])->name('update.details');

    Route::get('/edit_cv', [UsersController::class, 'editCV'])->name('edit.cv');

    Route::post('/update_cv', [UsersController::class, 'updateCV'])->name('update.cv');

    Route::get('/edit_image', [UsersController::class, 'editImage'])->name('edit.image');

    Route::post('/update_image', [UsersController::class, 'updateImage'])->name('update.image');
});


