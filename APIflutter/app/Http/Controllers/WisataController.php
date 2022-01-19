<?php

namespace App\Http\Controllers;

use App\Models\Wisata;
use Illuminate\Http\Request;

class WisataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
       return Wisata::all();
    }

    public function indexs()
    {
        //
        $tampils = Kas::orderBy('id')->get();
        return view('kas',compact('tampils'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(request $request)
    {
        //
        $wisata = new Wisata;
        $kas->jumlah = $request->jumlah;
        $kas->deskripsi = $request->deskripsi;
        $kas->divisi = $request->divisi;
        $wisata->save();

        return "data berhasil masuk";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Kas  $kas
     * @return \Illuminate\Http\Response
     */
    public function show(Kas $kas)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kas  $kas
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $edit = Kas::findorFail($id);
        return view('kasedit', compact('edit'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Kas  $kas
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $jumlah = $request->jumlah;
        $deskripsi = $request->deskripsi;
        $divisi = $request->divisi;

        $kas = Kas::find($id);
        $kas->jumlah = $jumlah;
        $kas->deskripsi = $deskripsi;
        $kas->divisi = $divisi;
        $kas->save();
        
        return redirect()->route('kas.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kas  $kas
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        //
        $kas = Kas::find($id);
        $kas->delete();
        return redirect()->route('kas.index');
    }

    public function kas()
    {
        //
        $kas = Kas::all();

        return view("/kas", ["kas" => $kas]);
    }

    public function add(){
        return view ('kasadd');
    }

}
