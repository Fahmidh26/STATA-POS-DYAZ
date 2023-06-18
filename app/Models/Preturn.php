<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Preturn extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function user(){
    	return $this->belongsTo(Admin::class,'user_id','id');
    }

    public function saleItems()
    {
        return $this->hasMany(SalesItem::class);
    }
}
