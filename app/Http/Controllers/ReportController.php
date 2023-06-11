<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Expense;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\Requisition;
use App\Models\Sales;
use Illuminate\Http\Request;
use Dompdf\Dompdf;

class ReportController extends Controller
{
    public function ReportsForm (){
        return view('admin.Backend.Report.reportForm');
    }

    public function ReportFilter(Request $request){

        $option = $request->option;
        $sdate = $request->sdate;
		$edate = $request->edate;
		
        if($option == "expense"){
            $filtered = Expense::whereBetween('date', [$sdate, $edate])->get();
        }elseif($option == "requisition"){
            $filtered = Requisition::whereBetween('date', [$sdate, $edate])->get();
        }elseif($option == "L/C"){
            $filtered = Purchase::whereBetween('purchase_date', [$sdate, $edate])
            ->get();
        }elseif($option == "sale"){
            $filtered = Sales::whereBetween('sale_date', [$sdate, $edate])
            ->get();
        }else{
            $filtered = Expense::whereBetween('date', [$sdate, $edate])->get();
        }

       $notification = array(
			'message' => 'Filterd Data Successfully',
			'alert-type' => 'success'
		);

	return view('admin.Backend.Report.filteredData' ,compact('filtered','option','sdate','edate'));

    } 


	public function DownloadPDF(Request $request)
    {	
        $sdate = $request->sdate;
		$edate = $request->edate;
        $option = $request->input('soption');
        
        if($option == "expense"){
            $filter = collect(json_decode($request->input('filter'), true))->mapInto(Expense::class);
             if ($request->type === 'pdf') {
            $pdf = new Dompdf();
            $pdf->loadHTML(view('admin.Backend.Report.download_expense_report_pdf',compact('sdate','edate'), ['filter' => $filter])->render());
            $pdf->setPaper('A4', 'landscape');
            $pdf->render();
            $pdf->stream('Expense-Report-' . $sdate . ') - (' . $edate . '.pdf');
            }
        }elseif($option == "requisition"){
            $filter = collect(json_decode($request->input('filter'), true))->mapInto(Requisition::class);
            if ($request->type === 'pdf') {
           $pdf = new Dompdf();
           $pdf->loadHTML(view('admin.Backend.Report.download_requisition_report_pdf',compact('sdate','edate'), ['filter' => $filter])->render());
           $pdf->setPaper('A4', 'landscape');
           $pdf->render();
           $pdf->stream('Requisition-Report(' . $sdate . ') - ('. $edate . ').pdf');
           }
        }elseif($option == "L/C"){
            $filter = collect(json_decode($request->input('filter'), true))->mapInto(Purchase::class);
            if ($request->type === 'pdf') {
           $pdf = new Dompdf();
           $pdf->loadHTML(view('admin.Backend.Report.download_l_c_report_pdf',compact('sdate','edate'), ['filter' => $filter])->render());
           $pdf->setPaper('A4', 'landscape');
           $pdf->render();
           $pdf->stream('L-C-Report(' . $sdate . ') - (' . $edate . ').pdf');
           }
        }
        elseif($option == "sale"){
            $filter = collect(json_decode($request->input('filter'), true))
            ->mapInto(Sales::class);
            
            if ($request->type === 'pdf') {
           $pdf = new Dompdf();
           $pdf->loadHTML(view('admin.Backend.Report.download_sale_report_pdf',compact('sdate','edate'), ['filter' => $filter])->render());
           $pdf->setPaper('A4', 'landscape');
           $pdf->render();
           $pdf->stream('Sale-Report(' . $sdate . ') - (' . $edate . ').pdf');
           }
        }

		
    }
}
