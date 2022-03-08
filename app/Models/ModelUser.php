<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ModelUser extends Model
{
    protected $table = 'tb_usuario';
    protected $primaryKey = 'IdUser';
    protected $timestamps = false;
}
