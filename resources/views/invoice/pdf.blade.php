<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Invoice #{{$invoice->invoice_no}}</title>
    <style>
        /* @font-face {
            font-family: 'HindVadodara';
            font-style: normal;
            font-weight: normal;
            src: url({{ storage_path('app/public/fonts/HindVadodara-Regular.ttf') }}) format('truetype');
        }
        @font-face {
            font-family: 'HindVadodara';
            font-style: normal;
            font-weight: bold;
            src: url({{ storage_path('app/public/fonts/HindVadodara-Medium.ttf') }}) format('truetype');
        } */

        body {
            font-family: 'DejaVu Sans', sans-serif;
            color: #333;
            font-size: 13px;
        }

        @page {
            margin: 20px 30px;
        }

        .page-container {
            width: 100%;
            margin: 0;
            padding: 0;
        }

        .invoice-box {
            max-width: 100%;
            margin: 0;
            padding: 10px;
            border: none;
            box-shadow: none;
            background: #fff;
        }

        .invoice-box h2 {
            text-align: center;
            margin-top: 0;
            margin-bottom: 10px;
            color: #0986c6;
            letter-spacing: 1px;
        }

        /* ---------- HEADER SECTION ---------- */
        .invoice-header {
            padding-bottom: 8px;
            border-bottom: 2px solid #0986c6;
            margin-bottom: 15px;
            overflow: hidden; /* Clear floats */
        }

        .company-block {
            float: left;
            width: 50%;
        }

        .invoice-details {
            float: right;
            background: #f5f9fc;
            padding: 12px 18px;
            border-radius: 6px;
            font-size: 14px;
            line-height: 22px;
            min-width: 220px;
        }
        
        .clear {
            clear: both;
        }

        .company-logo {
            max-height: 50px;   /* Balanced logo size */
            margin-bottom: 8px; /* Space between logo and text */
            display: block;
        }

        .company-address p {
            margin: 0;
            font-size: 13px;
            line-height: 20px;
            color: #444;
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
            margin-bottom: 10px;
        }

        table th {
            background: #0986c6;
            color: #fff;
            padding: 6px;
            text-align: center;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        table td {
            border: 1px solid #eee;
            padding: 6px;
            font-size: 13px;
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
            padding: 8px;
            background: #f5f5f5;
            font-weight: bold;
            margin-bottom: 10px;
            border-left: 4px solid #0986c6;
            font-size: 13px;
        }

        /* ---------- TERMS & FOOTER ---------- */
        .terms {
            font-size: 11px;
            line-height: 14px;
            border-top: 2px solid #0986c6;
            padding-top: 5px;
        }

        .terms h4 {
            color: #ed1547;
            margin-bottom: 4px;
            margin-top: 4px;
        }

        .terms ul {
            margin: 0;
            padding-left: 14px;
        }

        .terms li {
            margin-bottom: 3px;
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
            margin-top: 15px;
            font-size: 13px;
            color: #555;
        }

        .thanks-text {
            text-align: center;
            font-weight: 700;
            font-size: 14px;
            margin-top: 10px;
            margin-bottom: 5px;
            color: #0986c6;
        }
    </style>
</head>
<body>
    <div class="page-container">
        <div class="invoice-box">
            <h2>RECEIPT</h2>

            <div class="invoice-header">
                <!-- Left Side (Logo + Address) -->
                <div class="company-block">
                    <?php
                        // Base64 encode image for dompdf to resolve accurately
                        $path = public_path('assets/images/new_logo/fonico_mobiles.jpg');
                        if(file_exists($path)) {
                            $type = pathinfo($path, PATHINFO_EXTENSION);
                            $data = file_get_contents($path);
                            $base64 = 'data:image/' . $type . ';base64,' . base64_encode($data);
                            echo '<img src="'.$base64.'" alt="Logo" class="company-logo">';
                        }
                    ?>
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
                
                <div class="clear"></div>
            </div>

            <div style="margin-bottom: 15px;">
                <b>Bill To:</b> {{ $invoice->customer_name }}<br>
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
                                <!-- @if($item->purchase && $item->purchase->imei)
                                    <br><small><b>IMEI:</b> {{ $item->purchase->imei }}</small>
                                @endif -->
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
                        <td width="20%">{{ number_format($invoice->total_amount, 2) }}</td>
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
                            <td align="right">{{ number_format($invoice->sgst_amount, 2) }}</td>
                        </tr>
                    @endif
                    @if($invoice->igst_amount)
                        <tr>
                            <td colspan="4" align="right">IGST ({{$invoice->igst_rate}}%)</td>
                            <td align="right">{{ number_format($invoice->igst_amount, 2) }}</td>
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
                <?php
                    $termsPath = public_path('assets/images/terms.png');
                    if(file_exists($termsPath)) {
                        $type = pathinfo($termsPath, PATHINFO_EXTENSION);
                        $data = file_get_contents($termsPath);
                        $base64Terms = 'data:image/' . $type . ';base64,' . base64_encode($data);
                        echo '<img src="'.$base64Terms.'" alt="Terms & Conditions" style="width: 100%; max-width: 100%;">';
                    }
                ?>
            </div>

            <div class="thanks-text">
                Thanks for Visit!
            </div>
            <div class="footer">
                Authorised Signatory<br><b>FONICO Mobile</b>
            </div>
        </div>
    </div>
</body>
</html>
