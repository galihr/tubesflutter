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
} 