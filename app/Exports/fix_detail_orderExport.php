<?php

namespace App\Exports;

use App\Models\fix_detail_order;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class fix_detail_orderExport implements FromCollection, WithHeadings
{
    public function headings(): array
    {
        return [
            'Id Transaksi',
            'Cabang',
            'Nama Barang',
            'Merk',
            'Kategori',
            'Harga',
            'Jumlah',
            'Total',
            'Tanggal',
        ];
    }
    public function collection()
    {
        return collect(fix_detail_order::getlaporan());
    }
}
