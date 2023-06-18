<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Models\Sales;
use App\Models\SalesItem;
use App\Models\Customer;
use App\Models\SalesPaymentItem;
use App\Models\Product;

class ReturnController extends Controller
{
    public function ReturnSearch() 
    {
        $admin = Auth::guard('admin')->user();
        $sales = Sales::orderBy('id','DESC')->get();
        return view('admin.Backend.Return.return_search', compact('admin','sales'));
    }

    // Sale Detailed View 
    public function DetailReturn($id){

        $sale = Sales::findOrFail($id);
        $saleItem = SalesItem::where('sales_id',$id)->get();
        $paysaleItem = SalesPaymentItem::where('sale_id',$id)->get();
        $customers = Customer::orderBy('customer_name','ASC')->get();
        $products = Product::orderBy('product_name','ASC')->get();

        // dd($paysaleItem);

        return view('admin.Backend.Return.return_details',compact('sale','customers','products','saleItem','paysaleItem'));

} // end method 
}
