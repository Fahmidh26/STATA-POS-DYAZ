@extends('admin.aDashboard')
@section('admins')

  {{-- TRIAL START --}}
  <div class="container-fluid">
	<div class="row">
	  <div class="col-lg-12 mb-lg-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
				
			<form class="insert-form" id="insert_form" method="post" action="">
			@csrf
			<div class="row">
				<div class="col">
					<div class="row mb-3">
						<div class="col-3"><label  class="text-uppercase text-dark text-xs font-weight-bold" for="mySelect">Customer</label></div>
						<div class="col">
							<input class="form-control" value="{{$sale->customer->customer_name
							}}" type="text" id="address" name="address" required="">
						</div>
						</div>
	
						<div class="row mb-3">
							<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Address</label></div>
							<div class="col"><input class="form-control" value="{{$sale->customer->address
							}}" type="text" id="address" name="address" required="">
						</div>
							
						</div>
						<div class="row mb-3">
							<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Phone</label></div>
							<div class="col"><input value="{{$sale->customer->phone
							}}" class="form-control mb-3" type="text" id="phone" name="phone" required=""></div>
							
						</div>
	
						{{-- <div class="row mb-3">
							<div class="col-2"><label>Address</label></div>
							<div class="col"><input class="form-control mb-3" type="text" id="address" name="address" readonly></div>
						</div> --}}
				</div>
				<div class="col">
					<div class="row mb-3">
						<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Sale Date</label></div>
						<div class="col"><input class="form-control" value="{{$sale->sale_date}}" type="date" id="saleDate" name="saleDate" required=""></div>
					</div>
					{{-- <div class="row mb-3">
						<div class="col-2"><label>Details</label></div>
						<div class="col"><input class="form-control mb-3" type="text" id="details" name="details"></div>
					</div> --}}
					<div class="row mb-3">
						<div class="col-3"> <label class="text-uppercase text-dark text-xs font-weight-bold" for="details">Details</label></div>
						<div class="col"><textarea class="form-control" name="details" id="details" rows="1">{{$sale->details}}</textarea></div>
					</div>

					<div class="row mb-3">
						<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Previous Invoice</label></div>
						<div class="col"><input value="{{$sale->pInvoice}}" class="form-control mb-3" type="text" id="pInvoice" name="pInvoice"></div>
						
					</div>
					{{-- <div class="row mb-3">
						<div class="col"><input class="form-control mb-3" type="hidden" id="auth_id" name="auth_id"  value="{{ Auth::id()}}">
					</div>
			
				</div> --}}
			</div>
			<div class="table-responsive">
				<table id="table_field" class="table align-items-center mb-0">
				<thead>
					  <tr>
						<th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Item Information</th>
						<th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Sold/Unit</th> 
						<th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Stock/Unit</th>
						<th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Quantity</th>
						<th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Rate</th>
						{{-- <th>Dis. Value</th>
						<th>Vat %</th>
						<th>VAT Value</th> --}}
						<th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Total</th>
						{{-- <th class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Action</th> --}}
					</tr>
				</thead>
				@foreach ($saleItem as $item)
				<tr>
					<td>
						<select id="item" name="item[]" class="form-control" required="" >
							<option value="{{$item->product_id}}" selected="">{{$item->product->product_name}}</option>
							{{-- @foreach($products as $product)
								 <option value="{{ $product->id }}">{{ $product->product_name }}</option>	
							@endforeach --}}
						</select>
					</td>
					<td><input class="form-control qnty" value="{{$item->qty}}" type="number" id="qnty" name="qnty[]"  readonly></td>
					  <td><input class="form-control stock" type="text" value="{{$item->product->qty}}" id="stock" name="stock[]" required="" readonly></td>
						<td><input class="form-control rqnty" type="number" id="rqnty" name="rqnty[]"></td>
					  <td><input class="form-control rate" value="{{$item->rate}}" type="number" id="rate" name="rate[]"></td>
					  <td><input class="form-control total" type="number" id="amount" name="amount[]" value="0" readonly></td>
					  <td>
						{{-- <a name="add" id="add" class="btn bg-gradient-dark mb-0"><i class="fas fa-plus" aria-hidden="true"></i></a> --}}
						{{-- <i class="fa-solid fa-circle-plus display-4 text-success" type="button" name="add" id="add" ></i> --}}
					</td>
				</tr>
				@endforeach

				</table>
				<hr>
					<div class="row">
					<div class="col">
					</div>

					<div class="col-4">
						<div class="row mb-2">
							<div class="col-4"><label  class="text-uppercase text-dark text-xs font-weight-bold">Sub Total</label></div>
							<div class="col"><span><input class="form-control" type="text" name="subtotal" id="subtotal" value="{{$sale->sub_total}}" readonly></span>
							</div>
						</div>
					
						<div class="row mb-2">
							<div class="col-4"><label  class="text-uppercase text-dark text-xs font-weight-bold ">Grand Total</label></div>
							<div class="col"><input value="{{$sale->grand_total}}" class="form-control" type="text" name="grandtotal" id="grandtotal" readonly>
							</div>
						</div>
						{{-- <div class="row mb-2">
							<div class="col-4"><label class="text-uppercase text-dark text-xs font-weight-bold ">Paid Amount</label></div>
							<div class="col"><input readonly value="{{$sale->p_paid_amount}}" class="form-control" type="number" name="paidamount" id="paidamount">
							</div>
						</div>
						<div class="row mb-2">
							<div class="col-4"><label class="text-uppercase text-dark text-xs font-weight-bold ">Due Amount</label></div>
							<div class="col"><input value="{{$sale->due_amount}}" class="form-control" type="text" name="dueamount" id="dueamount" readonly>
							</div>
						</div> --}}

					
					</div>
				</div>
				{{-- <div class="row">
					<div class="col">
						<div class="table-responsive">
							<table id="table_fieldpayment" class="table align-items-center mb-0">
							<thead>
							<tr>
							  <th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Payment Type</th>
							  <th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">Paid Amount</th>
							
						  </tr>

							</thead>
							@foreach ($paysaleItem as $pitem)
						  <tr>
								<td>
								  <select id="payitem" name="payitem[]" class="form-control" required="" >
									  <option selected="">{{$pitem->payment->bank_name}}</option>
									
								  </select>	  
							  </td>
								<td><input class="form-control pay_amount" type="number" id="pay_amount" name="pay_amount[]" value="{{$pitem->b_paid_amount}}" required=""></td>
							
								<input class="form-control sumPayment" type="text" name="sumPayment" id="sumPayment" hidden readonly>
						  </tr>
						  @endforeach
					  </table>
					</div>
					</div>
					<div class="col">				
					</div>
				</div> --}}
				
				{{-- <input class="btn bg-gradient-dark mb-0" type="submit" name="save" id="save" value="
				Save Purchase"> --}}
			</div>
			{{-- <div class="container">
				<div class="row">
				  <div class="col">
				  </div>
				  <div class="col">
					<input type="submit" class="btn bg-gradient-primary w-100" value="Add Sale">
				  </div>
				  <div class="col">
				  </div>
				</div>
			  </div> --}}
			
	  </form>
	</div>
</div>
</div>
</div>

</div>

@include('admin.body.footer')

{{-- TRIAL END --}}

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

  <script>
	// Add a search field to the dropdown
	$("#mySearch").on("keyup", function() {
	  var value = $(this).val().toLowerCase();
	  $("#mySelect option").filter(function() {
		$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	  });
	});
  </script>
  
  <script>
	$(document).ready(function(){

	// $("#mySelect").change(function() {
    //   // get the selected option value
    //   var selectedOption = $(this).val();

    //   // make an AJAX request to the server
    //   $.get('/get-data', { option: selectedOption }, function(data) {
    //     // update the field with the response data
    //     $("#address").val(data.address);
	// 	$("#phone").val(data.phone);
	// 	console.log(data);
	// 	$('.js-example-basic-single').select2();

    //   });
    // });
	
	$("#table_field tbody").on("input", ".rate", function () {
                var rate = parseFloat($(this).val());
                var qnty = parseFloat($(this).closest("tr").find(".rqnty").val());
                var total = $(this).closest("tr").find(".total");
                total.val(qnty * rate);
				totalPrice();
				duePrice();
            });
	$("#table_field tbody").on("input", ".rqnty", function () {
		var qnty = parseFloat($(this).val());
		var rate = parseFloat($(this).closest("tr").find(".rate").val());
		var total = $(this).closest("tr").find(".total");
		total.val(rate * qnty);
		totalPrice();
		duePrice();
	});
	// $("#discount-percentage").on("input", ".dper", function () {
	// 	var discount_value = this.value;
	// 	var grandtotal = document.getElementById("grandtotal").value;
	// 	var discount = grandtotal - (discount_value / 100) * grandtotal;
	// 	$("#grandtotal").val(discount);
	// 	console.log(discount);
	// });


		  function duePrice(){
			$("#paidamount").val($("#sumPayment").val());
			$("#dueamount").val(($("#grandtotal").val()) - ($("#sumPayment").val()));
		  }

	function totalPrice(){
		var sum = 0;
	
		$(".total").each(function(){
		sum += parseFloat($(this).val());
		});
		$("#grandtotal").val(sum);
		$("#subtotal").val(sum);	
	}

	function totalPayment(){
		var sum = 0;
	
		$(".pay_amount").each(function(){
		sum += parseFloat($(this).val());
		});

		$("#sumPayment").val(sum);
	}
	

	$("#item").change(function() {
      // get the selected option value
      var selectedOption = $(this).val();
		// console.log('hello');
      // make an AJAX request to the server
      $.get('/get-data-product', { option: selectedOption }, function(data) {
        // update the field with the response data
        $("#stock").val(data.qty);
		$("#rate").val(data.sale_price);
      });
    });

	$("#table_field tbody").on("change", "select[name='item[]']", function () {
		var product_id = $(this).val();
		var stock = $(this).closest("tr").find(".stock");
		var rate = $(this).closest("tr").find(".rate");
		$.get('/get-data-product', { option: product_id }, function(data) {
        // update the field with the response data
		console.log('Hello');
		if(data.qty == null){
			stock.val(0);
			rate.val(0);
		}else{
			stock.val(data.qty);
			rate.val(data.sale_price);
		}
			
      });
		// price.val(product_id);
               
    });

	document.querySelector('#paidamount').addEventListener('input', function() {
		$("#dueamount").val("");
 		var paidamount = this.value;
		var grandtotal = document.getElementById("grandtotal").value;
		var duetotal = grandtotal - paidamount;
		$("#dueamount").val(duetotal);
  // Now you can use the inputValue variable to access the value of the input element
	});
	

	// $("select[name='item[]']").each(function() {
	// 	var selectedOption = $(this).val();
	// 	console.log('hello');
		
	// });

	});
</script>

<script>
	$(document).ready(function() {
    $('.select2').select2({
        placeholder: 'Select an option',
        allowClear: true
    });
});
</script>

@endsection