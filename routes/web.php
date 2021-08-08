<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// export routes
Route::get("users", [UserController::class, "index"]);
Route::get('export', [UserController::class, "export"])->name("export");


//If
// import routes
// Route::get("import", [UserController::class, "importUser"]);
// Route::post("import", [UserController::class, "import"])->name('import');