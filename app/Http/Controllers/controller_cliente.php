<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ModelUser;
use App\Models\ModelCustomer;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;


class controller_cliente extends Controller
{
    public function guardarCliente(Request $request){

        try {
            
            $validator = Validator::make($request->all(),[
                'email' => 'required|max:200|email|unique:tb_user,Email',
                'pass' => 'required|max:20|email|min:8',
                'fk_lang' => 'required|max:20|numeric',
                'fk_card' => 'required|max:20|numeric',
                'Nombre' => 'required|max:100',
                'ApellidoP' => 'required|max:100',
                'ApellidoM' => 'required|max:100',
                'BirthDate' => 'required|date_format:Y-m-d',
                'fk_pack' => 'required|max:20|numeric',
            ],
            [
                'email.required' => 'Este campo es requerido.',
                'email.max' => 'Este campo debe ser menor a 200',
                'email.email' => 'Direccion de correo electronico invalido.',
                'email.unique' => 'Este correo ya existe.',
                'pass.required' => 'Este campo es requerido.',
                'pass.max' => 'Este campo debe ser menor a 20 caracteres',
                'pass.min' => 'Este campo debe ser mayor a 8 caracteres',
                'Nombre.required' => 'Este campo es requerido.',
                'Nombre.max' => 'Este campo debe ser menor a 100 caracteres',
                'ApellidoP.required' => 'Este campo es requerido.',
                'ApellidoP.max' => 'Este campo debe ser menor a 100 caracteres',
                'ApellidoM.required' => 'Este campo es requerido.',
                'ApellidoM.max' => 'Este campo debe ser menor a 100 caracteres',
            ]
            );

            if ($validator->fails()) {
                $messages = $validator->messages();
                return response()->json($messages, Response:HTTP_UNPROCESSABLE_ENTITY);
            } else {
                $Pass = Hash::make($request->passwd);
                    $user = new ModelUser;
                    $user->Email = $request->email;
                    $user->Pass = $Pass;
                    $user->Estado = 0;
                    $user->DateRegister = date('Y-m-d H:i:s');
                    $user->fk_lang = $request->fk_lang;
                    $user->fk_card = $request->fk_card;
                    $user->save();

                    $cust = new ModelCustomer;
                    $cust->Nombre = $request->Nombre;
                    $cust->ApellidoP = $request->ApellidoP;
                    $cust->ApellidoM = $request->ApellidoM;
                    $cust->BirthDate = $request->BirthDate;
                    $cust->Estado = 0;
                    $cust->DateRegister = date('Y-m-d H:i:s');
                    $cust->fk_user = $request->fk_user;
                    $cust->fk_pack = $request->fk_pack;
                    $cust->save();

                    return response()->json($cust,200);
            }
            
            
        } catch (Throwable $e) {
            return response(e,500);
        }
        
    }
}
