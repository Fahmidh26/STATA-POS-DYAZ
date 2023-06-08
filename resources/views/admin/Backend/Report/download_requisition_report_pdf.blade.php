<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>Download Requisition Report</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <style type="text/css">

    td, th{
      border: 1px solid black;
    }

    th, td{
    padding: 0px 30px 0px 30px;
    }
      /* Regular styles here */
      
      /* Styles for print output */
      @media print {
          /* Define styles here */
          .print-button {
              display: none;
          }
      }

  </style>
  </head>
  <body>

    <h3>Requisition Report</h3>
    <h5>Date - <span> {{$sdate}}</span> - <span>{{$edate}} </span></h5>

    <table class="table table-bordered">
      <thead>
        <tr>
          <th class="text-center w-5" scope="col">SL.</th>
          <th class="text-center w-10" scope="col">Description</th>
          <th class="text-center w-10" scope="col">Date</th>    
          <th class="text-center w-20" scope="col">Location</th>
          <th class="text-center w-20" scope="col">Details</th>
          <th class="text-center w-10" scope="col">Status</th>
          <th class="text-center w-20" scope="col">Amount</th>
          {{-- <th class="text-center w-10" scope="col">Paid Amount</th>
          <th class="text-center w-10" scope="col">Due Amount</th> --}}
        </tr>
      </thead>
      <tbody>
        @php
          $sl = 1;
          $amount = 0;	
        @endphp
        @foreach($filter as $item)
        <tr>
          <td>{{$sl++}}</td>
          <td>{{$item->requisitionType->requisitionType}}</td>
          <td>{{$item->date}}</td>
          <td style="display:none;">{{$amount += $item->amount}}</td>
          <td>{{$item->location}}</td>
          <td>{{$item->details}}</td>
          <td>{{$item->status}}</td>
          <td>{{$item->amount}}</td>
        </tr>
        @endforeach
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td> 			
          <td>{{$amount}}</td>	   
         </tr>
      </tbody>
    </table>

  </body>
</html>