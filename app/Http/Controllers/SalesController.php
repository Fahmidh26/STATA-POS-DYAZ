<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\AcidProduct;
use App\Models\Bank;
use App\Models\Customer;
use App\Models\PaymentItem;
use App\Models\Product;
use App\Models\Sales;
use App\Models\SalesItem;
use App\Models\SalesPaymentItem;
use App\Models\TodaysProduction;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use PDF;

class SalesController extends Controller
{
    public function SalesForm() 
    {
        // $id = Auth::user()->id;
		// $adminData = Admin::find($id);
        $banks = Bank::orderBy('bank_name','ASC')->get();
        $customers = Customer::orderBy('customer_name','ASC')->get();
        // $inventory = TodaysProduction::sum('qty');
        $acidProducts = AcidProduct::find(1);
        // $acidProducts = AcidProduct::orderBy('product_name','ASC')->first();
        $products = Product::where('qty','>',0)->orderBy('product_name','ASC')->get();
        return view('admin.Backend.Sales.sales_form', compact('customers','banks','acidProducts','products'));
    }

    public function SalesStore(Request $request)
    {   
        // $validateData = $request->validate([
        //     'pInvoice' => 'required',
        // ]);

        $existingInvoice = Sales::where('pInvoice', $request->pInvoice)->first();

        if ($existingInvoice) {
            return redirect()->back()->withErrors(['pInvoice' => 'This Invoice is already taken.']);
        }

        $admin = Auth::guard('admin')->user();

        $sale_id = Sales::insertGetId([
            'customer_id' => $request->customer_id,
            'sale_date' => $request->saleDate,
            'details' => $request->details,
            'sub_total' => $request->subtotal,
            'invoice' => 'STA'.date('Y').mt_rand(10000, 99999),
            'grand_total' => $request->grandtotal,
            'pInvoice' => $request->pInvoice,
            'discount_flat' => $request->dflat,
            'discount_per' => $request->dper,
            'total_vat' => $request->vper,
            'user_id' => $admin->id,
            'p_paid_amount' => $request->paidamount,
            'due_amount' => $request->dueamount,
            'created_at' => Carbon::now(),   
  
        ]);

        
        $item = $request->input('item');
        $stock = $request->input('stock');
        // $batch = $request->input('batch');
        $qty = $request->input('qnty');
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


            SalesItem::create([
                'product_id' => $value,
                'sales_id' => $sale_id,
                'qty' => $qty[$key],
                'rate' => $rate[$key],
                // 'rateType' => $rateType[$key],
                'amount' => $amount[$key],


            ]);
        }   


        //  // Advance
        //  $totalQty = array_sum($qty);
        //  $rate = array_shift($rate);
        //  $rateType = array_shift($rateType);
        
       
        // foreach ($item as $key => $value) {

        //     SalesItem::create([
        //         'product_id' => $value,
        //         'sales_id' => $sale_id,
        //         'qty' => $qty[$key],
        //         'rate' => $rate[$key],
        //         'rateType' => $rateType[$key],
        //         'amount' => $amount[$key],
        //     ]);
        // }

        // Deduct Product Stock
        // $sales = Sales::find($sale_id);
        // $product_id = $sales->customer->id;
        // $customer = Customer::find($customer_id);
       
        // $customer->balance = $chalan->nbalance;
        // $customer->delivery += $chalan->qty;
        // $customer->due -= $chalan->qty;
        // $customer->save();

        // // Retrieve the customer ID from the sales record
        // $customer_id = $sales->customer->id;
        // $customer = Customer::find($customer_id);
        // $customer->balance += $paidAmount;
        // $customer->advance += $totalQty;
        // $customer->due += $totalQty;
        // $customer->rate = $rate;
        // $customer->rateType = $rateType;
        // $customer->save();

       

        $payitem = $request->input('payitem');
        $pay_amount = $request->input('pay_amount');
     
        foreach ($payitem as $key => $value) {

            SalesPaymentItem::create([
                'bank_id' => $value,
                'sale_id' => $sale_id,
                'b_paid_amount' => $pay_amount[$key],
            ]);
        }
    
		// return redirect()->back();
        $notification = array(
			'message' => 'Sale Saved Successfully',
			'alert-type' => 'success'
		);

        return redirect()->back()->with($notification);

    }

    public function ManageSales (){

        $admin = Auth::guard('admin')->user();
        $sales = Sales::orderBy('id','DESC')->get();
		return view('admin.Backend.Sales.manage_sales',compact('sales','admin'));

    }

    public function DownloadSale ($id){
                    
        $sale = Sales::with('customer','user')->where('id',$id)->first();
    	$saleItem = SalesItem::with('product','sales')->where('sales_id',$id)->orderBy('id','DESC')->get();

		$pdf = PDF::loadView('admin.Backend.Sales.view_sales',compact('sale','saleItem'))->setPaper('a4')->setOptions([
				'tempDir' => public_path(),
				'chroot' => public_path(),
		]);
		return $pdf->download('Sale.pdf');
    }

    	// Sale Detailed View 
	    public function DetailSale($id){

            $sale = Sales::findOrFail($id);
            $saleItem = SalesItem::where('sales_id',$id)->get();
            $paysaleItem = SalesPaymentItem::where('sale_id',$id)->get();
            $customers = Customer::orderBy('customer_name','ASC')->get();
            $products = Product::orderBy('product_name','ASC')->get();

            // dd($paysaleItem);

            return view('admin.Backend.Sales.sale_details',compact('sale','customers','products','saleItem','paysaleItem'));

	} // end method 

    public function SaleDelete($id){

    	Sales::findOrFail($id)->delete();

    	$notification = array(
			'message' => 'Sale Deleted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method 

}
