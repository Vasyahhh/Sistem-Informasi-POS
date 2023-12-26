<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\CabangController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SuplierController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\MerkController;

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

Route::get('/', function () {
    return view('auth.login');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {

});


Route::middleware(['auth'])->group(function () {

    //dashboard
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/dashboard', [DashboardController::class, 'index']);

    //users
    Route::get('/users', [UsersController::class, 'index'])->name('users');
    Route::post('/proses_add_users', [UsersController::class, 'proses_add_users'])->name('proses_add_users');
    Route::post('/proses_edit_users', [UsersController::class, 'proses_edit_users'])->name('proses_edit_users');
    Route::get('/delete_users/users/{id}', [UsersController::class, 'delete_users'])->name('users.delete_users');

    //product
    Route::get('/product', [ProductController::class, 'index'])->name('product');
    Route::get('/add_product', [ProductController::class, 'add_product'])->name('add_product');
    Route::post('/proses_add_product', [ProductController::class, 'proses_add_product'])->name('proses_add_product');
    Route::post('/proses_edit_product', [ProductController::class, 'proses_edit_product'])->name('proses_edit_product');
    Route::get('/exportexcel', [ProductController::class, 'export'])->name('exportexcel');
    Route::get('/exportcsv', [ProductController::class, 'exportcsv'])->name('exportcsv');
    Route::get('/delete_product/product/{id}', [ProductController::class, 'delete_product'])->name('product.delete_product');


    //kategori
    Route::get('/kategori', [KategoriController::class, 'index'])->name('kategori');
    Route::get('/add_kategori', [KategoriController::class, 'add_kategori'])->name('add_kategori');
    Route::post('/proses_add_kategori', [KategoriController::class, 'proses_add_kategori'])->name('proses_add_kategori');
    Route::post('/proses_edit_kategori', [KategoriController::class, 'proses_edit_kategori'])->name('proses_edit_kategori');
    Route::get('/delete/kategori/{id}', [KategoriController::class, 'delete'])->name('kategori.delete');

    // //laporan
    Route::get('/laporan', [LaporanController::class, 'index'])->name('laporan');
    Route::get('/exportexcel', [LaporanController::class, 'export'])->name('exportexcel');
    Route::get('/exportcsv', [LaporanController::class, 'exportcsv'])->name('exportcsv');

    //cabang
    Route::get('/cabang', [CabangController::class, 'index'])->name('cabang');
    Route::post('/proses_add_cabang', [CabangController::class, 'proses_add_cabang'])->name('proses_add_cabang');
    Route::post('/proses_edit_cabang', [CabangController::class, 'proses_edit_cabang'])->name('proses_edit_cabang');
    Route::get('/delete_cabang/cabang/{id}', [CabangController::class, 'delete_cabang'])->name('cabang.delete');

    //suplier
    Route::get('/suplier', [SuplierController::class, 'index'])->name('suplier');
    Route::post('/proses_add_suplier', [SuplierController::class, 'proses_add_suplier'])->name('proses_add_suplier');
    Route::post('/proses_edit_suplier', [SuplierController::class, 'proses_edit_suplier'])->name('proses_edit_suplier');
    Route::get('/delete_suplier/suplier/{id}', [SuplierController::class, 'delete_suplier'])->name('suplier.delete');

    //merk
    Route::get('/merk', [MerkController::class, 'index'])->name('merk');
    Route::post('/proses_add_merk', [MerkController::class, 'proses_add_merk'])->name('proses_add_merk');
    Route::post('/proses_edit_merk', [MerkController::class, 'proses_edit_merk'])->name('proses_edit_merk');
    Route::get('/delete_merk/merk/{id}', [MerkController::class, 'delete_merk'])->name('merk.delete');

    //orders
    Route::get('/orders', [OrderController::class, 'index'])->name('orders');
    Route::get('/load_data', [OrderController::class, 'load_data'])->name('load_data');
    Route::get('/load_data_product', [OrderController::class, 'load_data_product'])->name('load_data_product');
    Route::get('/add_orders', [OrderController::class, 'add_orders'])->name('add_orders');
    Route::get('/jumlah', [OrderController::class, 'add_jumlah'])->name('order.jumlah');
    Route::get('/changejumlah', [OrderController::class, 'changejumlah'])->name('order.change.jml');
    Route::get('/gettotal', [OrderController::class, 'gettotal'])->name('order.gettotal');
    Route::get('/add_orderdfix', [OrderController::class, 'add_orderdfix'])->name('order.add_orderdfix');
    Route::get('/orders/delete', [OrderController::class, 'delete'])->name('orders.delete');
    Route::get('/orders/batal', [OrderController::class, 'batal'])->name('orders.batal');

    //struk belanja
    Route::get('/struck', [ProductController::class, 'laporan_struck'])->name('struck');
});
