<?php

namespace App\Http\Controllers;
use App\Models\Barang;
use Illuminate\Http\Request;

class BarangController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
            $data = Barang::where('nama_barang','LIKE','%' .$request->search. '%')->paginate(5);
        } else {
            $data = Barang::paginate(5);
        }
        
        return view('databarang', compact('data'));
    }

    public function tambahbarang(){
        return view('tambahdata');
    }
    public function insertdata(Request $request){
       // dd($request->all());
        Barang::create($request->all());
        return redirect()->route('barang')->with('success', 'Data Successfully Added!');
    }
    public function tampilkandata($id){
        $data = Barang::find($id);
        return view('tampildata', compact('data'));
    }
    public function updatedata(Request $request, $id){
        $data = Barang::find($id);
        $data->update($request->all());
        return redirect()->route('barang')->with('success', 'Data Successfully Updated!');

    }
    public function delete($id){
        $data = Barang::find($id);
        $data->delete();
        return redirect()->route('barang')->with('success', 'Data Successfully Deleted!');
    }
    public function show($id){
        $data = Barang::find($id);
        return view('show', compact('data'));
    }
}   
