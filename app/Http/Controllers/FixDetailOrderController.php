<?php

namespace App\Http\Controllers;

use App\Models\fix_detail_order;
use Illuminate\Http\Request;

class FixDetailOrderController extends Controller
{
    public function showChart()
{
    $dataPerBulan = fix_detail_order::selectRaw('YEAR(created_at) AS tahun, MONTH(created_at) AS bulan, SUM(total) AS total, COUNT(*) AS jumlah')
        ->groupBy('tahun', 'bulan')
        ->orderBy('tahun', 'ASC')
        ->orderBy('bulan', 'ASC')
        ->get()
        ->toArray();

    return view('dashboard.index')->with('chartData', json_encode($dataPerBulan));
}

}
