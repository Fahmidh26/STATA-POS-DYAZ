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
use Carbon\Carbon;
use Illuminate\Http\Request;

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
        $products = AcidProduct::orderBy('id','ASC')->get();
        return view('admin.Backend.Sales.sales_form', compact('customers','banks','acidProducts','products'));
    }

    public function SalesStore(Request $request)
    {
        // $request->validate([
    	// 	'supplier_id' => 'required',
    	// 	'chalan' => 'required',
        //     'quoDate' => 'required',
    	// ],[
    	// 	'customer_id.required' => 'Please Select a Customer',
        //     'quoDate.required' => 'Please Enter Quotation Date',
        //     'expDate.required' => 'Please Enter Quotation Expiry Date',
    	// ]);

        $sale_id = Sales::insertGetId([
            'customer_id' => $request->customer_id,
            'sale_date' => $request->saleDate,
            'details' => $request->details,
            'sub_total' => $request->subtotal,
            'grand_total' => $request->grandtotal,
            'discount_flat' => $request->dflat,
            'discount_per' => $request->dper,
            'total_vat' => $request->vper,
            'p_paid_amount' => $request->paidamount,
            'due_amount' => $request->dueamount,
            'created_at' => Carbon::now(),   
  
        ]);

        
        $item = $request->input('item');
        // $stock = $request->input('stock');
        // $batch = $request->input('batch');
        $qty = $request->input('qnty');
        $rate = $request->input('rate');
        $rateType = $request->input('rateType');
        $amount = $request->input('amount');

         // Advance
         $totalQty = array_sum($qty);
         $rate = array_shift($rate);
         $rateType = array_shift($rateType);
        
       
        foreach ($item as $key => $value) {

            SalesItem::create([
                'product_id' => $value,
                'sale_id' => $sale_id,
                'qty' => $qty[$key],
                'rate' => $rate[$key],
                'rateType' => $rateType[$key],
                'amount' => $amount[$key],
            ]);
        }

       
        // Retrieve the sales record by ID
        $sales = Sales::find($sale_id);
        $paidAmount = $sales->p_paid_amount;

        // Retrieve the customer ID from the sales record
        $customer_id = $sales->customer->id;
        $customer = Customer::find($customer_id);
        $customer->balance += $paidAmount;
        $customer->advance += $totalQty;
        $customer->due += $totalQty;
        $customer->rate = $rate;
        $customer->rateType = $rateType;
        $customer->save();

       

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
       
        $sales = Sales::orderBy('id','DESC')->get();
		return view('admin.Backend.Sales.manage_sales',compact('sales'));

    }
}
