<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class fix_detail_order extends Model
{
    use HasFactory;
    protected $guarded = [];

    protected $table = "fix_detail_order";

    public static function getProductsByBrand()
    {
        return self::select('merk as country', DB::raw('COUNT(*) as value'))
            ->groupBy('merk')
            ->get()
            ->toArray();
    }
    public static function getlaporan()
    {
        $records = DB::table('fix_detail_order')->select('id_transaction', 'id_cabang', 'nama_barang', 'merk', 'kategori', 'harga', 'jumlah', 'total', 'created_at')->get();
        return $records;
    }
}
