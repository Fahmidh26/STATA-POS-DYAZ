<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sales extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function customer(){
    	return $this->belongsTo(Customer::class,'customer_id','id');
    }

    public function saleItems()
    {
        return $this->hasMany(SalesItem::class);
    }
    // public function saleItem(){
    // 	return $this->belongsTo(SalesItem::class,'sale_id','id');
    // }

    // public function saleItemss()
    // {
    //     return $this->hasMany(SalesItem::class);
    // }


}
