<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Bank;
use App\Models\Customer;
use App\Models\Product;
use App\Models\Quotation;
use App\Models\QuotationItem;
use App\Models\QuotationPaymentItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use PDF;

class QuotationController extends Controller
{
    public function QuotationForm() 
    {       
        $banks = Bank::orderBy('bank_name','ASC')->get();
        $customers = Customer::orderBy('customer_name','ASC')->get();
        $products = Product::orderBy('product_name','ASC')->get();
        return view('admin.Backend.Quotations.quotation_form', compact('customers','products','banks'));
    }

    public function QuotationStore(Request $request)
    {

        $admin = Auth::guard('admin')->user();

        $quotation_id = Quotation::insertGetId([
            'customer_id' => $request->customer_id,
            'sale_date' => $request->saleDate,
            'expire_date' => $request->expDate,
            'details' => $request->details,
            'sub_total' => $request->subtotal,
            'grand_total' => $request->grandtotal,
            'invoice' => 'STAQ'.date('Y').mt_rand(10000, 99999),
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
        $rateType = $request->input('rateType');
        $amount = $request->input('amount');

        foreach ($item as $key => $value) {

            QuotationItem::create([
                'product_id' => $value,
                'quotation_id' => $quotation_id,
                'qty' => $qty[$key],
                'rate' => $rate[$key],
                'amount' => $amount[$key],


            ]);
        }   



        $payitem = $request->input('payitem');
        $pay_amount = $request->input('pay_amount');
     
        foreach ($payitem as $key => $value) {

            QuotationPaymentItem::create([
                'bank_id' => $value,
                'quotation_id' => $quotation_id,
                'b_paid_amount' => $pay_amount[$key],
            ]);
        }
    
		// return redirect()->back();
        $notification = array(
			'message' => 'Quotation Created Successfully',
			'alert-type' => 'success'
		);

        return redirect()->back()->with($notification);

    }

    public function ManageQuotation (){
       
        $admin = Auth::guard('admin')->user();
        // dd($admin);
        $quotations = Quotation::orderBy('id','DESC')->get();
		return view('admin.Backend.Quotations.manage_quotation',compact('quotations','admin'));
    }

    public function DownloadQuotation ($id){
                    
        $sale = Quotation::with('customer','user')->where('id',$id)->first();
    	$saleItem = QuotationItem::with('product','sales')->where('quotation_id',$id)->orderBy('id','DESC')->get();

		$pdf = PDF::loadView('admin.Backend.Quotations.view_quotation',compact('sale','saleItem'))->setPaper('a4')->setOptions([
				'tempDir' => public_path(),
				'chroot' => public_path(),
		]);
		return $pdf->download('Quotation.pdf');
    }

    	// Sale Detailed View 
	    public function DetailQuotation($id){

            $sale = Quotation::findOrFail($id);
            $saleItem = QuotationItem::where('quotation_id',$id)->get();
            $paysaleItem = QuotationPaymentItem::where('quotation_id',$id)->get();
            $customers = Customer::orderBy('customer_name','ASC')->get();
            $products = Product::orderBy('product_name','ASC')->get();

            // dd($paysaleItem);

            return view('admin.Backend.Quotations.quotation_details',compact('sale','customers','products','saleItem','paysaleItem'));

	} // end method 

    public function QuotationDelete($id){

    	Quotation::findOrFail($id)->delete();

    	$notification = array(
			'message' => 'Quotation Deleted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method 

// END

    public function saveUser(Request $request)
    {
        $request->validate([
    		'customer_id' => 'required',
    		'quoDate' => 'required',
            'expDate' => 'required',
    	],[
    		'customer_id.required' => 'Please Select a Customer',
            'quoDate.required' => 'Please Enter Quotation Date',
            'expDate.required' => 'Please Enter Quotation Expiry Date',
    	]);

        $quotation_id = Quotation::insertGetId([
            'customer_id' => $request->customer_id,
            'auth_id' => $request->auth_id,
            'invoice' => 'STA'.mt_rand(10000000,99999999),
            'quotation_date' => $request->quoDate,
            'expire_date' => $request->expDate,
            'sub_total' => $request->subtotal,
            'grand_total' => $request->grandtotal,
            'discount_percentage' => $request->dper,
            'discount_flat' => $request->dflat,
            'vat_percentage' => $request->vper,
            'vat_amount' => $request->vper,
            'paid_amount' => $request->paidamount,
            'due_amount' => $request->dueamount,
            'total_discount' => $request->dflat,
            'details' => $request->details,
            'created_at' => Carbon::now(),   
  
        ]);

        $item = $request->input('item');
        $description = $request->input('description');
        $unit_cost = $request->input('unit_cost');
        $qty = $request->input('qty');
        $amount = $request->input('amount');
    
        foreach ($item as $key => $value) {
            QuotationItem::create([
                'product_id' => $value,
                'quotation_id' => $quotation_id,
                'qty' => $qty[$key],
                'price' => $unit_cost[$key],
                // 'description' => $description[$key],
                'amount' => $amount[$key],
            ]);
        }
    
		// return redirect()->back();
        $notification = array(
			'message' => 'Quotation Inserted Successfully',
			'alert-type' => 'success'
		);

        return redirect()->back()->with($notification);

    }

    	// Quotation View 
	    public function viewQuotation($quotation_id){

            $quotation = Quotation::findOrFail($quotation_id);
            $quotationItems = QuotationItem::where('quotation_id',$quotation_id)->get();
            $customers = Customer::orderBy('customer_name','ASC')->get();
            $products = Product::orderBy('product_name','ASC')->get();

            return view('admin.Backend.Quotation.quotation_view',compact('quotation','customers','products','quotationItems'));

	} // end method 

    public function AdminInvoiceDownload($quotation_id){

		$quotation = Quotation::with('customer','auth')->where('id',$quotation_id)->first();
    	$quotationItem = QuotationItem::with('product','quotation')->where('quotation_id',$quotation_id)->orderBy('id','DESC')->get();

		$pdf = PDF::loadView('admin.Backend.Quotation.quotation_invoice',compact('quotation','quotationItem'))->setPaper('a4')->setOptions([
				'tempDir' => public_path(),
				'chroot' => public_path(),
		]);
		return $pdf->download('Quotation.pdf');

	} // end method 

    public function getData(Request $request){

    $selectedOption = $request->input('option');
    $data = Customer::findOrFail($selectedOption);

    return $data;

    }

    
    public function getDataProduct(Request $request){

        $selectedOption = $request->input('option');
        $data = Product::findOrFail($selectedOption);
    
        return $data;
    
    }

    public function getProductPrice(Request $request){

        $selectedOption = $request->input('option');
        $data = Product::findOrFail($selectedOption);
    
        return $data;
    
    }

    
}
