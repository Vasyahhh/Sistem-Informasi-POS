<?php

namespace App\Http\Controllers;

use App\Exports\fix_detail_orderExport;
use App\Models\fix_detail_order;
use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use RealRashid\SweetAlert\Facades\Alert;
use Maatwebsite\Excel\Facades\Excel;

class LaporanController extends Controller
{
    
    public function index()
    {   
        $tot = DB::select('select id_cabang, sum(total) as total from transaction group by id_cabang');
        $name = Users::select('id','name')->get();
        $data = DB::table('fix_detail_order')->paginate();
        return view('laporan.index', compact('data','name','tot'));
    }

    public function export()
    {
        $date = date('Y-m-d');
        return Excel::download(new fix_detail_orderExport, 'Product-' . $date . '.xlsx');
    }
    public function exportcsv()
    {
        return Excel::download(new fix_detail_orderExport, 'product.csv');
    }
    
}
