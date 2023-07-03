<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Models\Sales;
use App\Models\SalesItem;
use App\Models\Customer;
use App\Models\Preturn;
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

    // Return Store
    public function ChalanStore(Request $request)
    {

        $admin = Auth::guard('admin')->user();

        $return_id = Preturn::insertGetId([

            'sale_id' => $request->sale_id,
            'return_date' => $request->saleDate,
            'details' => $request->details,
            'sub_total' => $request->subtotal,
            'grand_total' => $request->grandtotal,
            'return_no' => 'STAR'.date('Y').mt_rand(10000, 99999),
            'user_id' => $admin->id,
            'created_at' => Carbon::now(),   
  
        ]);

        
        $item = $request->input('item');
        $stock = $request->input('stock');
        // $batch = $request->input('batch');
        $qty = $request->input('qnty');
        $rqty = $request->input('rqnty');
        $rate = $request->input('rate');
        // $rateType = $request->input('rateType');
        $amount = $request->input('amount');

        foreach ($item as $key => $value) {

            $matchProduct = Product::where('id',$value)->get();

            $productIDs = $matchProduct->pluck('id')->toArray();
            
            foreach($productIDs as $product) {
                // dd($product);
                // print($product.',');
                $match1Product = Product::where('id',$product)->get();

                if(isset($product->qty) && $product->qty == null){
                    Product::findOrFail($product)->update([
                        'qty' => $qty[$key],
                    ]);
                }else{
                    Product::findOrFail($product)->update([
                        'qty' => $stock[$key] - $qty[$key] ,
                    ]);
                }
            }


            ChalanItem::create([
                'product_id' => $value,
                'chalan_id' => $chalan_id,
                'qty' => $qty[$key],
                'rate' => $rate[$key],
                // 'rateType' => $rateType[$key],
                'amount' => $amount[$key],


            ]);
        }   

		// return redirect()->back();
        $notification = array(
			'message' => 'Chalan Created Successfully',
			'alert-type' => 'success'
		);

        return redirect()->back()->with($notification);

    }
    // END Return Store
}
