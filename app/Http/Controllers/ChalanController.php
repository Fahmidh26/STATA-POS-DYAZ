<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\AcidProduct;
use App\Models\Customer;
use App\Models\Sales;
use App\Models\Bank;
use App\Models\TodaysProduction;
use Illuminate\Http\Request;
use App\Models\Chalan;
use App\Models\ChalanItem;
use App\Models\Product;
use App\Models\Schedule;
use Carbon\Carbon;
// use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Auth;
use PDF;

class ChalanController extends Controller
{
    public function ChalanForm() 
    {
        // $id = Auth::user()->id;
		// $adminData = Admin::find($id);
        $banks = Bank::orderBy('bank_name','ASC')->get();
        $customers = Customer::orderBy('customer_name','ASC')->get();
        $sales = Sales::orderBy('id','ASC')->get();
        // $inventory = TodaysProduction::sum('qty');
        $acidProducts = AcidProduct::find(1);
        // $acidProducts = AcidProduct::orderBy('product_name','ASC')->first();
        $products = Product::where('qty','>',0)->orderBy('product_name','ASC')->get();
        return view('admin.Backend.Chalan.chalan_form', compact('customers','banks','acidProducts','products','sales'));
    }

    public function ChalanStore(Request $request)
    {

        $admin = Auth::guard('admin')->user();

        $chalan_id = Chalan::insertGetId([
            'customer_id' => $request->customer_id,
            'chalan_date' => $request->saleDate,
            'details' => $request->details,
            // 'sub_total' => $request->subtotal,
            'chalan_no' => 'STAC'.date('Y').mt_rand(10000, 99999),
            // 'grand_total' => $request->grandtotal,
            // 'discount_flat' => $request->dflat,
            // 'discount_per' => $request->dper,
            // 'total_vat' => $request->vper,
            'user_id' => $admin->id,
            'sale_id' => $request->sale_id,
            'purpose' => $request->purpose,
            // 'p_paid_amount' => $request->paidamount,
            // 'due_amount' => $request->dueamount,
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

    public function ManageChalan (){

        $admin = Auth::guard('admin')->user();
        $chalans = Chalan::orderBy('id','DESC')->get();
		return view('admin.Backend.Chalan.manage_chalan',compact('chalans','admin'));

    }

    public function DownloadChalan ($id){
                    
        $chalan = Chalan::with('customer','user')->where('id',$id)->first();
    	$chalanItem = ChalanItem::with('product','chalans')->where('chalan_id',$id)->orderBy('id','DESC')->get();

		$pdf = PDF::loadView('admin.Backend.Chalan.view_chalan',compact('chalan','chalanItem'))->setPaper('a4')->setOptions([
				'tempDir' => public_path(),
				'chroot' => public_path(),
		]);
		return $pdf->download('Chalan.pdf');
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
