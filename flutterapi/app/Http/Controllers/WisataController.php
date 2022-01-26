<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Wisata;

class WisataController extends Controller
{
    public function create(Request $request)
    {
        $data = $request->all();
        $wisata = wisata::create($data);

        return response()->json($wisata);
    }
    public function index()
    {
        $wisata = wisata::all();
        return response()->json([
            "wisata" => $wisata
        ]);   
    }
    public function show($id)
    {
        $wisata = wisata::find($id);
        return response()->json($wisata);
    }
    public function update(Request $request, $id)
    {
        $wisata = wisata::find($id);
        
        if (!$wisata) {
            return response()->json(['message' => 'Data not found'], 404);
        }
        
        $this->validate($request, [
            "nama" => "required|unique:wisata",
            "kategori" => "required",
            "gambarUrl" => "required",
            "lokasi" => "required",
            "deskripsi" => "required",
            "harga" => "required",
        ]);

        $data = $request->all();
        $wisata->fill($data);
        $wisata->save();

        return response()->json($wisata);
    }
    public function destroy($id)
    {
        $wisata = wisata::find($id);
        
        if (!$wisata) {
            return response()->json(['message' => 'Data not found'], 404);
        }

        $wisata->delete();

        return response()->json(['message' => 'Data deleted successfully'], 200);
    }
} 