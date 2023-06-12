<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Designation;
use App\Models\Department;
use App\Models\Employee;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image as Image;
use Illuminate\Support\Carbon;

class EmployeeController extends Controller
{
    public function AddEmployee(){
		// $categories = Category::latest()->get();
		$designations = Designation::latest()->get();
		$departments = Department::latest()->get();
		// return view('admin.Backend.Product.product', compact('categories','brands'));
        return view('admin.Backend.Employee.employee', compact('designations','departments'));
	}
    
	public function StoreEmployee(Request $request){

		if ($request->file('image')) {

			$image = $request->file('image');
			$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
			Image::make($image)->resize(200,200)->save('upload/employee/'.$name_gen);
			$save_url = 'upload/employee/'.$name_gen;

			Employee::insertGetId([
				'f_name' => $request->first_name,
				'l_name' => $request->last_name,
				'designation_id' => $request->designation,
				'department_id' => $request->department,
	  
			  'phone' => $request->phone,
				'r_type' => $request->rate_type,
				'salary' => $request->salary,
	  
			  'email' => $request->email,
				'b_group' => $request->b_group,
			  'address' =>  $request->address,
			  'image' =>  $save_url,
		  
				'city' =>  $request->city,
				'country' => $request->country,
				'created_at' => Carbon::now(),   
	  
			]);
		}else{
			Employee::insertGetId([
				'f_name' => $request->first_name,
				'l_name' => $request->last_name,
				'designation_id' => $request->designation,
				'department_id' => $request->department,
	  
			  'phone' => $request->phone,
				'r_type' => $request->rate_type,
				'salary' => $request->salary,
	  
			  'email' => $request->email,
				'b_group' => $request->b_group,
			  'address' =>  $request->address,		  
				'city' =>  $request->city,
				'country' => $request->country,
				'created_at' => Carbon::now(),   
	  
			]);
		}

       $notification = array(
			'message' => 'Employee Added Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

	} // end method

	public function ManageEmployee(){

		$employees = Employee::latest()->get();
		return view('admin.Backend.Employee.manage_employee',compact('employees'));
	}


	// public function EditProduct($id){

	// 	$multiImgs = MultiImg::where('product_id',$id)->get();

	// 	$categories = Category::latest()->get();
	// 	$brands = Brand::latest()->get();
	// 	$subcategory = subCategory::latest()->get();
	// 	$products = Product::findOrFail($id);
	// 	return view('admin.Backend.Product.product_edit',compact('categories','brands','subcategory','products','multiImgs'));

	// }

}
