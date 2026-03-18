@extends('layout.app')

@section('title')
    Manage Invoices
@endsection

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col">
            <div class="page-title-box">
                <h2 class="page-title font-weight-bold text-uppercase">Manage Invoices</h2>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        @if (count($allInvoices))
                            <table class="table table-centered mb-0" id="invoice-table">
                                <thead class="thead-light">
                                    <tr>
                                        <th class="font-weight-bold">Sr No</th>
                                        <th class="font-weight-bold">Invoice No.</th>
                                        <th class="font-weight-bold">Customer Detail</th>
                                        <th class="font-weight-bold">Billing Info</th>
                                        <th class="font-weight-bold">Invoice Date</th>
                                        <th class="font-weight-bold">Action</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @foreach($allInvoices as $key => $invoice)
                                        <tr>
                                            <td class="text-center"><a href="{{route('invoice-detail', $invoice->id)}}"><b>{{ $key + 1 }}</b></a>
                                            </td>
                                            <td>
                                                <a
                                                    href="{{route('invoice-detail', $invoice->id)}}"><b>#{{ $invoice->invoice_no }}</b></a>
                                            </td>
                                            <td>
                                                <ul class="list-unstyled">
                                                    <li><b>Name:</b> {{ ucfirst($invoice->customer_name) }} </li>
                                                    <li>
                                                        <b>Contact:</b>
                                                        @if($invoice->customer_no)
                                                            <a href="tel:{{$invoice->customer_no}}">{{$invoice->customer_no}}</a>
                                                        @else
                                                            <span class="text-muted"> N/A </span>
                                                        @endif

                                                        @foreach($invoice->items as $item)
                                                            @if($item->purchase && $item->purchase->imei)
                                                                <li><b>IMEI:</b> {{ $item->purchase->imei }}</li>
                                                            @endif
                                                        @endforeach
                                                    </li>
                                                </ul>
                                            </td>
                                            <td>
                                                <ul class="list-unstyled">
                                                    @if($invoice->total_amount)
                                                        <li><b>Total Amount:</b> <span>₹{{ number_format($invoice->total_amount, 2) }}</span></li>
                                                    @endif
                                                    @if($invoice->tax_amount)
                                                        <li><b>TAX:</b> <span>₹{{ $invoice->tax_amount }}</span></li>
                                                    @endif
                                                    @if($invoice->discount)
                                                        <li><b>Discount:</b> <span>₹{{ $invoice->discount }}</span></li>
                                                    @endif
                                                    @if($invoice->net_amount)
                                                        <li><b>Net Amount:</b> <span>₹{{ number_format($invoice->net_amount, 2) }}</span></li>
                                                    @endif
                                                </ul>
                                            </td>
                                            <td>{{ date("d-m-Y", strtotime($invoice->invoice_date)) }}</td>
                                            <td>
                                                <a href="{{route('invoice-edit', $invoice->id)}}"
                                                    class="btn  btn-blue waves-effect waves-light" title="Update">
                                                    <i class="mdi mdi-pencil"></i>
                                                </a>
                                                <!-- <a href="{{route('invoice-detail', $invoice->id)}}"
                                                    class="btn  btn-blue waves-effect waves-light" title="View">
                                                    <i class="mdi mdi-eye"></i>
                                                </a> -->
                                                <a href="{{ route('print-invoice', $invoice->id) }}"
                                                    class="btn btn-success waves-effect waves-light" title="print"><i
                                                        class="mdi mdi-printer"></i>
                                                </a>
                                                <a href="{{ route('download-pdf', $invoice->id) }}"
                                                    class="btn btn-danger waves-effect waves-light" title="Download PDF"><i
                                                        class="mdi mdi-file-pdf"></i>
                                                </a>
                                                <button type="button"
                                                    class="btn btn-danger waves-effect waves-light delete-invoice"
                                                    data-id="{{ $invoice->id }}" title="Delete">
                                                    <i class="mdi mdi-delete"></i>
                                                </button>
                                                @if($invoice->customer_no)
                                                    @php
                                                        $signedUrl = URL::signedRoute('public-invoice-pdf', ['id' => $invoice->id]);
                                                        $msg = "Hello " . ucfirst($invoice->customer_name) . ",\n\nThank you for your purchase at FONICO Mobile!\nYour invoice total is ₹" . $invoice->net_amount . ".\n\nYou can view and download your digital invoice here:\n" . $signedUrl;
                                                        
                                                        // Format number for WhatsApp
                                                        $formattedNo = $invoice->customer_no;
                                                        if (!str_starts_with($formattedNo, '+')) {
                                                            $formattedNo = (strlen($formattedNo) == 10) ? '91' . $formattedNo : $formattedNo;
                                                        } else {
                                                            $formattedNo = str_replace('+', '', $formattedNo);
                                                        }
                                                        
                                                        $waUrl = "https://wa.me/" . $formattedNo . "?text=" . urlencode($msg);
                                                    @endphp
                                                    <a href="{{ $waUrl }}" target="_blank"
                                                        class="btn btn-success waves-effect waves-light" title="Share via WhatsApp" style="background-color: #25D366; border-color: #25D366;">
                                                        <i class="mdi mdi-whatsapp"></i>
                                                    </a>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        @else
                            <h4>No Invoices Found</h4>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endSection

@section('scripts')
    <script>
        $(document).ready(function () {
            // Handle delete button click
            $('.delete-invoice').on('click', function () {
                var invoiceId = $(this).data('id');
                var deleteUrl = '/admin/invoice/delete/' + invoiceId;

                // Show confirmation dialog
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) {
                        // Create a form and submit it
                        var form = $('<form method="POST" action="' + deleteUrl + '"></form>');
                        form.append('<input type="hidden" name="_token" value="{{ csrf_token() }}">');
                        $('body').append(form);
                        form.submit();
                    }
                });
            });
        });
    </script>
@endsection