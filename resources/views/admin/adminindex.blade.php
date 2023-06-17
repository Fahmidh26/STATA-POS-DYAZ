@extends('admin.aDashboard')
@section('admins')


{{-- @auth
    <p>Hello, {{ Auth::user()->name }}! Your id is {{ Auth::id() }}</p>
@endauth
@guest
    <p>Please login to see your id.</p>
@endguest --}}

<div class="container-fluid py-4">
	<div class="row">
	  <div class="col-xl-4 col-sm-4 mb-xl-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
			  <div class="col-8">
				<div class="numbers">
				  <p
					style="font-size: large"
					class="mb-0 text-capitalize font-weight-bold"
				  >
					Total Customer
				  </p>
				  @if ($customerssum)
				  <h5
				  style="font-size: 36px"
				  class="font-weight-bolder mb-0"
				>
				{{$customerssum}}
				  <span class="text-success text-sm font-weight-bolder"
					>Customers</span
				  >
				</h5>
				  @else
				  <h5
				  style="font-size: 36px"
				  class="font-weight-bolder mb-0"
				>
				0 
				  <span class="text-success text-sm font-weight-bolder"
					>Customers</span
				  >
				</h5>
				  @endif
				  
				</div>
			  </div>
			  <div class="col-4 text-end">
				<div
				  class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md"
				>
				  <i
					class="ni ni-money-coins text-lg opacity-10"
					aria-hidden="true"
				  ></i>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	  <div class="col-xl-4 col-sm-4 mb-xl-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
			  <div class="col-8">
				<div class="numbers">
				  <p
					style="font-size: large"
					class="mb-0 text-capitalize font-weight-bold"
				  >
					Total Product
				  </p>
				  <h5
					style="font-size: 36px"
					class="font-weight-bolder mb-0"
				  >
					{{$productssum}}
					<span class="text-success text-sm font-weight-bolder"
					  >Products</span
					>
				  </h5>
				</div>
			  </div>
			  <div class="col-4 text-end">
				<div
				  class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md"
				>
				  <i
					class="ni ni-world text-lg opacity-10"
					aria-hidden="true"
				  ></i>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	  <div class="col-xl-4 col-sm-4 mb-xl-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
			  <div class="col-8">
				<div class="numbers">
				  <p
					style="font-size: large"
					class="mb-0 text-capitalize font-weight-bold"
				  >
					Total Sale
				  </p>
				  <h5
					style="font-size: 36px"
					class="font-weight-bolder mb-0"
				  >
					{{ $tsale}}
					<span class="text-danger text-sm font-weight-bolder"
					  >Sales</span
					>
				  </h5>
				</div>
			  </div>
			  <div class="col-4 text-end">
				<div
				  class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md"
				>
				  <i
					class="ni ni-paper-diploma text-lg opacity-10"
					aria-hidden="true"
				  ></i>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	  <!-- <div class="col-xl-3 col-sm-6">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
			  <div class="col-8">
				<div class="numbers">
				  <p class="text-sm mb-0 text-capitalize font-weight-bold">
					Sales
				  </p>
				  <h5 class="font-weight-bolder mb-0">
					$103,430
					<span class="text-success text-sm font-weight-bolder"
					  >+5%</span
					>
				  </h5>
				</div>
			  </div>
			  <div class="col-4 text-end">
				<div
				  class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md"
				>
				  <i
					class="ni ni-cart text-lg opacity-10"
					aria-hidden="true"
				  ></i>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div> -->
	</div>
	<div class="row mt-4">
	  <div class="col-lg-7 mb-lg-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
			  <div class="col-lg-6">
				<div class="d-flex flex-column h-100">
				  <p class="mb-1 pt-2 text-bold text-lg">Welcome To The World Of DYAZ</p>
				  <h5 class="font-weight-bolder">DYAZ Dashboard</h5>
				  <p class="mb-5">Product of STATA IT LTD</p>
				  <a
					class="text-body text-sm font-weight-bold mb-0 icon-move-right mt-auto"
					href="javascript:;"
				  >
					Read More
					<i
					  class="fas fa-arrow-right text-sm ms-1"
					  aria-hidden="true"
					></i>
				  </a>
				</div>
			  </div>
			  <div class="col-lg-5 ms-auto text-center mt-5 mt-lg-0">
				<div class="bg-gradient-primary border-radius-lg h-100">
				  <img
					src="../assets/img/shapes/waves-white.svg"
					class="position-absolute h-100 w-50 top-0 d-lg-block d-none"
					alt="waves"
				  />
				  <div
					class="position-relative d-flex align-items-center justify-content-center h-100"
				  >
					<img
					  class="w-100 position-relative z-index-2 pt-4"
					  src="../assets/img/illustrations/rocket-white.png"
					  alt="rocket"
					/>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	  <div class="col-lg-5">
		<div class="card h-100 p-3">
		  <div
			class="overflow-hidden position-relative border-radius-lg bg-cover h-100"
			style="background-image: url('../assets/img/ivancik.jpg')"
		  >
			<span class="mask bg-gradient-dark"></span>
			<div
			  class="card-body position-relative z-index-1 d-flex flex-column h-100 p-3"
			>
			  <h5 class="text-white font-weight-bolder mb-4 pt-2">
				STATA IT LIMITED POS
			  </h5>
			  <p class="text-white">
				STATA IT POS
			  </p>
			  <a
				class="text-white text-sm font-weight-bold mb-0 icon-move-right mt-auto"
				href="https://statait.com"
			  >
				Read More
				<i
				  class="fas fa-arrow-right text-sm ms-1"
				  aria-hidden="true"
				></i>
			  </a>
			</div>
		  </div>
		</div>
	  </div>
	</div>

	<div class="row my-4">
	  <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
		
		<div class="card">
		  <div class="card-header pb-0">
			<div class="row">
			  <div class="col-lg-6 col-7">
				<h6 style="font-size:25px; text-align: right;">Product Stock</h6>
				<!-- <p class="text-sm mb-0">
				  <i class="fa fa-check text-info" aria-hidden="true"></i>
				  <span class="font-weight-bold ms-1">30 done</span> this
				  month
				</p> -->
			  </div>

		  <div class="card-body px-0 pb-2">
			<div class="table-responsive">
			  <table class="table align-items-center mb-0">
				<thead>
				  <tr>
					<th
					  class="text-center text-uppercase text-primary text-lg font-weight-bolder opacity-7"
					>
					  Invoice
					</th>
					<th
					  class="text-center text-uppercase text-primary text-lg font-weight-bolder opacity-7"
					>
					  Customer
					</th>
					<th
					  class="ttext-center text-uppercase text-primary text-lg font-weight-bolder opacity-7"
					>
					Total
					</th>

					<th
					  class="text-center text-uppercase text-primary text-lg font-weight-bolder opacity-7"
					>
					  Sold By
					</th>
					
				  </tr>
				</thead>
				<tbody>

					@foreach ($last5Sales as $item)
				  <tr>
					<td>
					  <div class="d-flex px-2 py-1">
						
						<div
						  class="align-middle text-center text-sm"
						>
						  <h6 class="mb-0 text-lg">{{$item->invoice}}</h6>
						</div>
					  </div>
					</td>
					<td class="align-middle text-center text-sm">
					  <span class="text-lg font-weight-bold">
						{{$item->customer->customer_name}}
					  </span>
					</td>
					<td class="align-middle text-center text-sm">
					  <span class="text-lg font-weight-bold">
						{{$item->grand_total}}
					  </span>
					</td>
					</td>
					<td class="align-middle text-center text-sm">
					  <span class="badge badge-sm bg-gradient-primary">
						{{$item->user->name}}
					  </span>
					</td>
					</td>
				  </tr>
				  @endforeach
				</tbody>
			  </table>
			</div>
		  </div>
		</div>
	
	  </div>
	  @if(Auth::guard('admin')->user()->type=="1" || (Auth::guard('admin')->user()->type=="2"))
	  <div class="col-lg-4 col-md-6">
		<div class="card h-100">
		  <div class="card-header pb-0">
			<h6>Today's Overview</h6>
			
		  </div>

		  <table style="width: 90%; margin-left:5%" class="table table-bordered">
			<thead>
			  <tr>
				<th scope="col">Total Sale</th>
				<td scope="col">TK <b>{{$totalsale}}</b></td>
			  </tr>
			  <tr>
				<th scope="col">Total Purchase</th>
				<td scope="col">TK <b>{{$totalpurchase}}</b></td>
			  </tr>
			  <tr>
				<th scope="col">Last Sale</th>
				<td scope="col">TK <b>{{$lastSale->grand_total}}</b></td>
			  </tr>
			</thead>
		
		  </table>

		  {{-- <div class="card-body p-3">
			<div class="timeline timeline-one-side">
		
			@foreach ($schedules as $schedule)
			  <div class="timeline-block mb-3">
				<span class="timeline-step">
				   <i class="ni ni-bell-55 text-success text-gradient"></i>
				</span>
				<div class="timeline-content">
				  <h6 class="text-dark text-sm font-weight-bold mb-0">
				  {{ $schedule->customer->customer_name }}
				  </h6>
				  <p
					class="text-secondary font-weight-bold text-xs mt-1 mb-0"
				  >
					{{ $schedule->time }}
				  </p>
				</div>
			  </div>
			@endforeach
			
		</div>
		  </div> --}}
		</div>
	  </div>
	  @endif
	</div>

	@include('admin.body.footer')
  </div>

  @endsection