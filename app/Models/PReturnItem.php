<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PReturnItem extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function product(){
    	return $this->belongsTo(Product::class,'product_id','id');
    }

    public function returns(){
    	return $this->belongsTo(Preturn::class,'return_id','id');
    }

    public function return()
    {
        return $this->belongsTo(Preturn::class);
    }
}
