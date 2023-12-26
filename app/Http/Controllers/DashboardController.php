<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\fix_detail_order;


class DashboardController extends Controller
{
    public function index()
    {
        $tot = DB::select('select id_cabang, sum(total) as total from transaction group by id_cabang');

        $productsByBrand = fix_detail_order::getProductsByBrand();

        $data = [
            'productsByBrand' => $productsByBrand
        ];
        // dd($tot);
        return view('dashboard.index', $data, compact('tot'));

    }
}
