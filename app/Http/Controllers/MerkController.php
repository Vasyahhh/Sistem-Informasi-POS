<?php

namespace App\Http\Controllers;

use App\Models\merk;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use RealRashid\SweetAlert\Facades\Alert;

class MerkController extends Controller
{
    
    public function index()
    {
        $data = DB::table('merks')->paginate();
        return view('merk.index', compact('data'));
    }
    public function proses_add_merk(Request $request)
    {
        $data = merk::create($request->all());
        Alert::success('Satuan Berhasil Di Tambah');
        return redirect()->route('merk', compact('data'));
    }
    public function search_merk(Request $request)
    {
        $keywoard = $request->search;
        $data = merk::where('merk', 'like', '%' . $keywoard . '%')->paginate(10);
        return view('merk.index', compact('data'))->with('i', (request()->input('page', 1) - 1) * 5);
    }

    public function proses_edit_merk(Request $request)
    {
        // dd($request->all());
        DB::table('merks')
            ->where("id_merk", $request->id)
            ->update(['merk' => $request->merk]);
        alert()->success('Berhasil!!!', 'Merk Berhasil DI Ubah');
        return redirect()->route('merk');
    }
    public function delete_merk($id)
    {
        try {
            // dd($id);
            DB::table('merks')->where('id_merk', $id)->delete();
            Alert::success('Merk Berhasil Di Hapus');
            return redirect()->route('merk');
        } catch (Exception $e) {
            return response([
                'success' => false,
                'msg'     => 'Error : ' . $e->getMessage() . ' Line : ' . $e->getLine() . ' File : ' . $e->getFile()
            ]);
        }
    }
}
