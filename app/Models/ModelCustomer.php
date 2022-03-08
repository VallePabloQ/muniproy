<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ModelCustomer extends Model
{
    protected $table = 'tb_customer';
    protected $primaryKey = 'IdCust';
    protected $timestamps = false;
}
