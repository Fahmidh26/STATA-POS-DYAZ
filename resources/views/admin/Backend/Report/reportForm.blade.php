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
											</div>
										</div>
										<div class="col-md-4 mb-md-0 mb-4">
											<div>
												<select class="form-control" name="option" id="option">
													<option value="" selected="" disabled>Select Report Type</option>
													<option value="expense">Expense</option>
													<option value="requisition">Requisition</option>
													
													<option value="L/C">L/C</option>
													<option value="sale">Sale</option>
												</select>
											</div>
										</div>
										<div class="col-md-12">
											<div class="">
												<input class="btn bg-gradient-dark mb-0" type="submit" name="save" id="save" value="Filter Data">
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	  @include('admin.body.footer')

	  {{-- TRIAL END --}}
@endsection
