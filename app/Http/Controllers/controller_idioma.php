<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ModelLang;

class controller_idioma extends Controller
{
    public function getPrueba(){
        $idiomas = ModelLang::all('NameLang');
        return $idiomas;
    }

    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        //
    }
}
