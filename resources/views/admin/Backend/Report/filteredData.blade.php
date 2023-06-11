@extends('admin.aDashboard')
@section('admins')

	  {{-- TRIAL START --}}
	  <div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body p-3">
						<div class="form-filter">
							<form method="post" action="{{ route('report.filter') }}">
								@csrf
								<div class="card-body p-2">
									<div class="row">
										<div class="col-md-4 mb-md-0 mb-4">
											<div class="">
												<input class="form-control date mb-3" value="" type="date" id="sdate" name="sdate" required="">
											</div>
										</div>
										<div class="col-md-4">
											<div class="">
												<input class="form-control date mb-3" value="" type="date" id="edate" name="edate" required="">
												<input class="form-control date mb-3" value="{{$option}}" type="hidden" id="" name="option">
											</div>
										</div>
										<div class="col-md-4 mb-md-0 mb-4">
											<div>
												<select name="option" class="form-control" id="option">
													<option value="" selected="" disabled>Select Report Type</option>
													<option value="expense">Expense</option>
													<option value="requisition">Requisition</option>
													<option value="stock">Stock</option>
													<option value="L/C">L/C</option>
													<option value="sale">Sale</option>
												</select>
											</div>
										</div>
										<div class="col-md-12">
											<div class="">
												<input class="btn bg-gradient-dark mb-0" type="submit" name="save" id="save" value="Filter Schedule">
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-1">
				<div class="card">
					<div class="card-body p-3">
						<div class="form-download">
							<form action="{{ route('download.pdf.filter') }}" method="GET">
								@csrf
								<input type="hidden" name="type" value="pdf">
								<input type="hidden" name="filter" value="{{ $filtered->toJson() }}">
								<input type="hidden" name="soption" value="{{$option}}">
								<input value="{{$sdate}}" type="hidden" name="sdate">
								<input value="{{$edate}}" type="hidden" name="edate">
								<div class="">
									<input class="btn bg-gradient-dark mb-0" type="submit" name="save" id="save" value="PDF">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	

		
	<div class="row mt-4">
		<div class="col-lg-12 mb-lg-0 mb-4">
		  <div class="card">
			<div class="card-body">
			  <div class="row">
							  <!-- /.box-header -->
							  {{-- <div class="box-body"> --}}
								  <div class="table-responsive">
									<table id="example1" class="table table-bordered table-striped">
									  <thead>
										@if ($option == "expense")
										<tr>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Description</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Amount</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Details</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Location</th>
											
																					 
										</tr>
										@elseif ($option == "requisition")
										<tr>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Description</th>
					
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Location</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Details</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Procurement</th>
											<th class="text-uppercase text-secondary text-xxs 
											font-weight-bolder opacity-7">Type</th>
											
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Amount</th>
																					 
										</tr>
										@elseif ($option == "stock")
										<tr>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Name</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Code</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Quantity</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Cost Price</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Sale Price</th>
																					 
										</tr>
										@elseif ($option == "L/C")
										<tr>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">L/C no.</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Supplier</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Product</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Grand Total</th>
																					 
										</tr>
										@elseif ($option == "sale")
										<tr>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Customer</th>
											{{-- <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Product</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty</th> --}}
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Grand Total</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Sold By</th>
																					 
										</tr>
										@endif
										 
									  </thead>
									  <tbody>
					@php
					$amount = 0;
					$totalCost = 0;	
					$totalSale = 0;		
					@endphp
					
					@foreach($filtered as $item)
				   @if ($option == "expense")
				   <tr>
					  <td><h6 class="mb-0 text-sm">{{ $item->date }}</h6></td>
					  <td><h6 class="mb-0 text-sm">{{ $item->expenseType->expenseType }}</h6></td>
					  <td><h6 class="mb-0 text-sm">{{ $item->amount }}</h6></td>
					  <td style="display:none;">{{$amount += $item->amount}}</td>
					  <td><h6 class="mb-0 text-sm">{{ $item->details }}</h6></td>
					  <td><h6 class="mb-0 text-sm">{{ $item->location }}</h6></td>			   
				   </tr>

				   @elseif ($option == "requisition")
				 
				   <tr>
					<td><h6 class="mb-0 text-sm">{{ $item->date }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->requisitionType->requisitionType }}</h6></td>
					
					<td style="display:none;">{{$amount += $item->amount}}</td>
					<td><h6 class="mb-0 text-sm">{{ $item->location }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->details }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->lo }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->type }}</h6></td> 
					<td><h6 class="mb-0 text-sm">{{ $item->status }}</h6></td> 	
					<td><h6 class="mb-0 text-sm">{{ $item->amount }}</h6></td>			   
				 </tr>

				 @elseif ($option == "stock")
					<tr>
						<td><h6 class="mb-0 text-sm">{{ $item->product_name }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->product_code }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->qty }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->cost_price }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->sale_price }}</h6></td>
						<td style="display:none;">{{$totalCost += $item->cost_price*$item->qty}}</td>
						<td style="display:none;">{{$totalSale += $item->sale_price*$item->qty}}</td>
					</tr>

				 @elseif ($option == "L/C")
				 
				 @foreach ($item->purchaseItems as $pitem)
					<tr>
						<td><h6 class="mb-0 text-sm">{{ $item->purchase_date }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->chalan_no }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->supplier->supplier_name }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $pitem->product->product_name }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $pitem->qty }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->grand_total }}</h6></td>
						<td style="display:none;">{{$amount += $item->grand_total}}</td>
					</tr>
				 @endforeach

				 @elseif ($option == "sale")
				 
				 @foreach ($item->saleItems as $sitem)
					<tr>
						<td><h6 class="mb-0 text-sm">{{ $item->sale_date }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->customer->customer_name }}</h6></td>
						{{-- <td><h6 class="mb-0 text-sm">Sulphuric Acid</h6></td> --}}
						{{-- <td><h6 class="mb-0 text-sm">{{ $sitem->qty }}</h6></td> --}}
						<td><h6 class="mb-0 text-sm">{{ $item->grand_total }}</h6></td>
						<td><h6 class="mb-0 text-sm">{{ $item->user->name }}</h6></td>
						<td style="display:none;">{{$amount += $item->grand_total}}</td>
					</tr>
				 @endforeach


				   @endif
					@endforeach


					@if ($option == "expense")
					<tr>
						<td></td>
						<td></td>
						<td>{{$amount}}</td>
						<td></td>
						<td></td>			   
					 </tr>
					 @elseif ($option == "requisition")
					 <tr>
						<td></td>
						<td></td>
					
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td> 	
						<td>{{$amount}}</td>			   
					 </tr>
					 @elseif (($option == "L/C"))
					 <tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>{{$amount}}</td>
					 </tr>
					 @elseif (($option == "stock"))
					 <tr>
						<td></td>
						<td></td>
						<td></td>
						<td>{{ $totalCost }}</td>
						<td>{{ $totalSale }}</td>
					 </tr>
					 @elseif (($option == "sale"))
					 <tr>
						<td></td>
						<td></td>
						{{-- <td></td>
						<td></td> --}}
						<td>{{$amount}}</td>
					 </tr>
					 @endif
									  </tbody>
									   
									</table>
								  </div>
							  {{-- </div> --}}
			  </div>
			</div>
		  </div>
		</div>
  
	  </div>
	</div>
	  @include('admin.body.footer')

	  {{-- TRIAL END --}}
@endsection
