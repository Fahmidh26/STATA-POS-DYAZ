<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>Download Stock Report</title>

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

    <h3>Product Stock Report</h3>

    <table class="table table-bordered">
      <thead>
        <tr>
          <th class="text-center w-5" scope="col">SL.</th>
          <th class="text-center w-10" scope="col">Name</th>
          <th class="text-center w-10" scope="col">Code</th>
          <th class="text-center w-20" scope="col">Quantity</th>
          <th class="text-center w-20" scope="col">Cost Price</th>
          <th class="text-center w-20" scope="col">Sale Price</th>
        </tr>
      </thead>
      <tbody>
        @php
          $sl = 1;
          $amount = 0;	
          $totalCost = 0;	
					$totalSale = 0;
        @endphp
        @foreach($filter as $item)
        <tr>
          <td>{{$sl++}}</td>
          <td>{{$item->product_name}}</td>
          <td>{{$item->product_code}}</td>
          <td>{{$item->qty}}</td>
         
          <td>{{$item->cost_price}}</td>
          <td>{{$item->sale_price}}</td>

          <td style="display:none;">{{$amount += $item->amount}}</td>
          <td style="display:none;">{{$totalCost += $item->cost_price*$item->qty}}</td>
          <td style="display:none;">{{$totalSale += $item->sale_price*$item->qty}}</td>
        </tr>
        @endforeach
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
         
          <td>{{ $totalCost }}</td>
          <td>{{ $totalSale }}</td>
     				   
         </tr>
      </tbody>
    </table>

  </body>
</html>