<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Invoice #{{$invoice->invoice_no}}</title>
    <style>
        body {
            font-family: 'DejaVu Sans', 'Arial', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            background: #fff;
        }

        .invoice-box {
            width: 100%;
            margin: auto;
            padding: 10px;
        }

        .invoice-box h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #0986c6;
            letter-spacing: 1px;
        }

        /* ---------- HEADER SECTION ---------- */
        .invoice-header {
            width: 100%;
            border-bottom: 2px solid #0986c6;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }
        
        .company-block.left {
            width: 60%;
            float: left;
        }

        .invoice-details.right {
            width: 35%;
            float: right;
            background: #f5f9fc;
            padding: 12px;
            border-radius: 6px;
            font-size: 14px;
            text-align: right;
        }
        
        .clear {
            clear: both;
        }

        .company-logo {
            max-height: 50px;
            margin-bottom: 8px;
        }

        .company-address h2 {
            margin: 0 0 5px;
            font-size: 18px;
            font-weight: bold;
            color: #0986c6;
            text-align: left;
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
            margin-bottom: 20px;
        }

        table th {
            background: #0986c6;
            color: #fff;
            padding: 8px;
            text-align: center;
            font-size: 14px;
            text-transform: uppercase;
        }

        table td {
            border: 1px solid #eee;
            padding: 8px;
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
    </style>
</head>
<body>
    <div class="invoice-box">
        <h2>RECEIPT</h2>

        <div class="invoice-header">
            <div class="company-block left">
                <!-- Using a base64 encoded image or public_path() might be needed for dompdf -->
                <?php
                     $path = public_path('assets/images/new_logo/fonico_mobiles.jpg');
                     $type = pathinfo($path, PATHINFO_EXTENSION);
                     if(file_exists($path)) {
                        $data = file_get_contents($path);
                        $base64 = 'data:image/' . $type . ';base64,' . base64_encode($data);
                     } else {
                        $base64 = '';
                     }
                ?>
                @if($base64)
                    <img src="{{ $base64 }}" alt="Logo" class="company-logo">
                @endif
                <div class="company-address">
                    <p>
                        Bodakdev, Ahmedabad - 380054<br>
                        <b>Mo:</b> +91 99934 76489
                    </p>
                </div>
            </div>

            <div class="invoice-details right">
                <p><b>Receipt No:</b> #{{ $invoice->invoice_no }}</p>
                <p><b>Date:</b> {{ date("d/m/Y", strtotime($invoice->invoice_date)) }}</p>
            </div>
            <div class="clear"></div>
        </div>

        <div style="margin-bottom: 15px;">
            <b>Bill To:</b><br>
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
                        <td align="right">{{ number_format($item->unit_price, 2) }}</td>
                        <td align="right">{{ number_format($item->total_amount, 2) }}</td>
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
                        <td align="right">{{ number_format($invoice->cgst_amount, 2) }}</td>
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
                        <td align="right">{{ number_format($invoice->discount, 2) }}</td>
                    </tr>
                @endif
                <tr class="totals">
                    <td colspan="4">Net Total</td>
                    <td>{{ number_format($invoice->net_amount, 2) }}</td>
                </tr>
            </tbody>
        </table>

        <div class="amount-words">
            Amount (in words): {{ $amountInWords }}
        </div>

        <div class="terms">
            <h4>Terms & Conditions</h4>
            <ul>
                <li>પાણીથી /ભાંગ તૂટથી/ ઇલેક્ટ્રીક શોર્ટ સર્કિટથી થયેલી નુકસાની ની વોરંટી મળશે નહીં.</li>
                <li>કંપની વોરંટી દરમિયાન ગ્રાહકે જાતે જ કંપનીના સર્વિસ સેન્ટરમાં જવાનું રહેશે અને કંપનીનો નિર્ણય જ માન્ય
                    ગણાશે.</li>
                <li>અમારી શોપ વોરંટી Expiry Date સુધી ગણાશે.</li>
                <li>અમારી વોરંટી દરમિયાન ફોનમાં કોઈ ખામી આવે તો તેની સર્વિસ થશે પાછું લેવા કે રિફંડ આપવામાં આવશે નહીં.</li>
                <li>ફોન લીધા બાદ જો રીટર્ન આપવું હશે કે એક્સચેન્જ કરવું હશે તો અમે આપેલા ભાવ જ માન્ય ગણાશે - ભાવ બાબતે કોઈ
                    રક-જક કરવી નહીં.</li>
                <li>કોઈ પણ ફોન ની બેટરી (mAh) & ફોન ના વપરાશ ઉપર આધાર રાખે છે જેથી વોરંટી દરમિયાન ચેક કર્યા બાદ જો કોઈ ખામી
                    જણાય તો જ (સર્વિસ/ચેન્જ) કરી આપવામાં આવશે. </li>
                <li>ફોન લેવા કે વેચવા માટે અમે આપેલા ભાવ એક દિવસ જ માન્ય રહેશે. </li>
                <li>ઇન્ટરનેશનલ(ગ્લોબલ) નવા કે જુના ફોનમાં કંપનીના નિયમો બદલાતા રહેતા હોય છે જેથી જે તે સમયે કંપની વોરંટી
                    દરમિયાન કંપનીનો નિયમ જ માન્ય રહેશે. </li>
                <li>ફોન લેતા સમયે ફોન પર રહેલા ડેન્ટ કે સ્ક્રેચ ચકાસીને લેવા પછીથી આ બાબતે અમારી કોઇ જવાબદારી રહેશે નહીં.
                </li>
                <li>ફોન લીધા બાદ 24 કલાકની અંદર કંપનીના સર્વિસ સેન્ટરમાં ચેક કરાવી લેવું (જેમકે રીપેર થયેલ છે કે નહીં
                    પાર્ટ્સ ચેન્જ છે કે નહીં બહાર ઓપન કરાવેલ છે કે નહીં વગેરે) પછીથી આ બાબતે અમારી કોઇ જવાબદારી રહેશે નહીં.</li>
                <li>રિપ્લેસમેન્ટ વખતે જે મોડલ ખરીદેલ હશે સામે બીજું સેમ મોડેલ જ મળશે.</li>
                <li>Display માં લાઈન-ડોટ-કલર ચેન્જ કે બીજી અન્ય તકલીફ માં વોરંટી મળશે નહીં.</li>
                <li>Android ઇન્ટરનેશનલ ફોનમાં 5G નેટવર્ક બેન્ડ અલગ આવતા હોવાથી 5G ચાલવા કે ના ચાલવાની જવાબદારી મળતી નથી.
                </li>
            </ul>
        </div>

        <div class="thanks-text">
            ✨ Thanks for Visit! ✨
        </div>
        <div class="footer">
            Authorised Signatory<br><b>FONICO Mobile</b>
        </div>
    </div>
</body>
</html>
