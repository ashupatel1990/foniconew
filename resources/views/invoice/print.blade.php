@extends('layout.app')

@section('title')
    Invoice #{{$invoice->invoice_no}}
@endsection
@section('content')
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
        }

        .page-container {
            display: flex;
            justify-content: center;   /* Horizontal center */
            align-items: center;       /* Vertical center */
            min-height: 100vh;         /* Full viewport height */
            background: #f5f5f5;       /* Optional: light background around invoice */
            padding: 20px;             /* Some breathing space */
        }

        .invoice-box {
            max-width: 900px;
            margin: auto;
            padding: 25px 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, .1);
            background: #fff;
            border-radius: 6px;
        }

        .invoice-box h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #0986c6;
            letter-spacing: 1px;
        }

        /* ---------- HEADER SECTION ---------- */
        .invoice-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            padding-bottom: 15px;
            border-bottom: 2px solid #0986c6;
            margin-bottom: 20px;
        }

        /* Left block (Logo + Address stacked) */
        .company-block {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .company-logo {
            max-height: 50px;   /* Balanced logo size */
            margin-bottom: 8px; /* Space between logo and text */
        }

        .company-address h2 {
            margin: 0 0 5px;
            font-size: 18px;
            font-weight: bold;
            color: #0986c6;
        }

        .company-address p {
            margin: 0;
            font-size: 13px;
            line-height: 20px;
            color: #444;
        }

        /* Right block (Invoice details) */
        .invoice-details {
            background: #f5f9fc;
            padding: 12px 18px;
            border-radius: 6px;
            font-size: 14px;
            line-height: 22px;
            min-width: 220px;
            box-shadow: 0 0 4px rgba(0,0,0,0.05);
        }

        .invoice-details p {
            margin: 4px 0;
        }

        .invoice-details b {
            color: #0986c6;
        }

        /* ---------- TABLES ---------- */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table th {
            background: #0986c6;
            color: #fff;
            padding: 10px;
            text-align: center;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        table td {
            border: 1px solid #eee;
            padding: 10px;
            font-size: 14px;
        }

        table tr:nth-child(even) {
            background: #fafafa;
        }

        .totals td {
            text-align: right;
            font-weight: bold;
            background: #f1f8fc;
        }

        /* ---------- AMOUNT IN WORDS ---------- */
        .amount-words {
            padding: 12px;
            background: #f5f5f5;
            font-weight: bold;
            margin-bottom: 20px;
            border-left: 4px solid #0986c6;
            font-size: 14px;
        }

        /* ---------- TERMS & FOOTER ---------- */
        .terms {
            font-size: 12px;
            line-height: 18px;
            border-top: 2px solid #0986c6;
            padding-top: 12px;
        }

        .terms h4 {
            color: #ed1547;
            margin-bottom: 8px;
        }

        .terms ul {
            margin: 0;
            padding-left: 18px;
        }

        .terms li {
            margin-bottom: 6px;
        }

        .gst-notes {
            margin-top: 20px;
            padding: 15px 20px;
            background: #f9f9f9;
            border-left: 4px solid #0986c6;
            border-radius: 4px;
            font-size: 12px;
            line-height: 18px;
            color: #444;
        }

        .gst-notes h4 {
            margin: 0 0 10px;
            font-size: 14px;
            color: #0986c6;
            font-weight: bold;
        }

        .gst-notes ul {
            margin: 0;
            padding-left: 18px;
        }

        .gst-notes li {
            margin-bottom: 6px;
        }

        .footer {
            text-align: center;
            font-weight: bold;
            margin-top: 35px;
            font-size: 14px;
            color: #555;
        }

        .thanks-text {
            text-align: center;
            font-weight: 700;
            font-size: 15px;
            margin-top: 25px;
            margin-bottom: 10px;
            color: #0986c6;
        }


        /* ---------- PRINT FIXES ---------- */
        @media print {
            @page {
                size: A4;
                margin: 10mm; /* give clean page margins */
            }

            body {
                -webkit-print-color-adjust: exact !important;
                color-adjust: exact !important;
                margin: 0;
                background: #fff !important;
            }

            .page-container {
                /* display: block !important; */
                /* padding: 0 !important; */
                background: #fff !important;
                /* min-height: auto !important; */
            }

            .invoice-box {
                /* margin: 0 auto !important; */
                /* box-shadow: none !important; */
                border: none !important;
                /* border-radius: 0 !important; */
                /* width: 100% !important; */
                /* padding: 10mm; controlled padding inside */
            }

            .invoice-details,
            table th,
            .amount-words,
            .terms h4,
            .gst-notes {
                -webkit-print-color-adjust: exact !important;
                color-adjust: exact !important;
            }

            /* shrink text a bit to avoid page break */
            .terms,
            .gst-notes {
                font-size: 11px !important;
                line-height: 16px !important;
            }

            .thanks-text {
                margin-top: 15px !important;
            }
        }
    </style>

    <div class="page-container">
        <div class="invoice-box">
            <h2>RECEIPT</h2>

            <div class="invoice-header">
                <!-- Left Side (Logo + Address) -->
                <div class="company-block">
                    <img src="{{asset('assets/images/new_logo/fonico_mobiles.jpg')}}" alt="Logo" class="company-logo">
                    <div class="company-address">
                        <p>
                            Bodakdev, Ahmedabad - 380054<br>
                            <b>Mo:</b> +91 99934 76489
                        </p>
                    </div>
                </div>

                <!-- Right Side (Invoice Details) -->
                <div class="invoice-details">
                    <p><b>Receipt No:</b> #{{ $invoice->invoice_no }}</p>
                    <p><b>Date:</b> {{ date("d/m/Y", strtotime($invoice->invoice_date)) }}</p>
                </div>
            </div>

            <div>
                <b>Bill To:</b>
                {{ $invoice->customer_name }}<br>
                @if($invoice->customer_no) <b>Mobile:</b> {{$invoice->customer_no}} @endif
            </div>

            <table>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Particulars</th>
                        <th>Qty</th>
                        <th>Rate</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($invoice->items as $index => $item)
                        <tr>
                            <td align="center">{{ $index + 1 }}</td>
                            <td>
                                @php echo nl2br($item->item_description) @endphp
                                @if($item->purchase && $item->purchase->imei)
                                    <br><small><b>IMEI:</b> {{ $item->purchase->imei }}</small>
                                @endif
                                @if($item->warranty_expiry_date)
                                    <br><small><b>Warranty:</b> {{ date("d/m/Y", strtotime($item->warranty_expiry_date)) }}</small>
                                @endif
                            </td>
                            <td align="center">{{ $item->quantity }}</td>
                            <td align="right">₹{{ number_format($item->unit_price, 2) }}</td>
                            <td align="right">₹{{ number_format($item->total_amount, 2) }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            <table>
                <tbody>
                    <tr class="totals">
                        <td colspan="4">Total</td>
                        <td>₹{{ number_format($invoice->total_amount, 2) }}</td>
                    </tr>
                    @if($invoice->cgst_amount)
                        <tr>
                            <td colspan="4" align="right">CGST ({{$invoice->cgst_rate}}%)</td>
                            <td align="right">₹{{ number_format($invoice->cgst_amount, 2) }}</td>
                        </tr>
                    @endif
                    @if($invoice->sgst_amount)
                        <tr>
                            <td colspan="4" align="right">SGST ({{$invoice->sgst_rate}}%)</td>
                            <td align="right">₹{{ number_format($invoice->sgst_amount, 2) }}</td>
                        </tr>
                    @endif
                    @if($invoice->igst_amount)
                        <tr>
                            <td colspan="4" align="right">IGST ({{$invoice->igst_rate}}%)</td>
                            <td align="right">₹{{ number_format($invoice->igst_amount, 2) }}</td>
                        </tr>
                    @endif
                    @if($invoice->discount)
                        <tr>
                            <td colspan="4" align="right">Discount</td>
                            <td align="right">₹{{ number_format($invoice->discount, 2) }}</td>
                        </tr>
                    @endif
                    <tr class="totals">
                        <td colspan="4">Net Total</td>
                        <td>₹{{ number_format($invoice->net_amount, 2) }}</td>
                    </tr>
                </tbody>
            </table>

            <div class="amount-words">
                Amount (in words): {{ $amountInWords }}
            </div>

            <div class="terms-image" style="margin-top: 10px; border-top: 2px solid #0986c6; padding-top: 10px;">
                <img src="{{ asset('assets/images/terms.png') }}" alt="Terms & Conditions" style="width: 100%; max-width: 100%;">
            </div>

            <!-- <div class="gst-notes">
                <h4>GST & HSN Notes</h4>
                <ul>
                    <li>GST on Refurbished mobile phone (HSN Code 8517) and Refurbished Laptop / Desktop (HSN Code: 8471) has been
                        charged under the margin scheme of GST.</li>
                    <li>For HSN code: 8517 (Refurbished Mobile phones) and HSN Code: 8471 (Refurbished Laptop / Desktop), value of
                        supply is determined in accordance with Section 15(5) of the Central Goods and Services Tax Act read with
                        Rule 32(5) of “Determination of the value of supply”. The credit for GST input shall not be available to the
                        buyer if buyer follows the same valuation rule.</li>
                    <li>For HSN code 8517 (other than refurbished Mobile), GST is charged as per the prescribed rate on the full
                        value of the product, for which input credit shall be available to the registered buyer.</li>
                </ul>
            </div> -->

            <div class="thanks-text">
                ✨ Thanks for Visit! ✨
            </div>
            <div class="footer">
                Authorised Signatory<br><b>FONICO Mobile</b>
            </div>
        </div>
    </div>

    <script>
        window.onload = function() {
            window.print();
        }
    </script>
@endsection