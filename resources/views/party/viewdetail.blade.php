<div class="partydetail d-flex align-items-center mb-2">
    <div class="avatar me-3">
        {{ strtoupper(substr($party->party_name, 0, 1)) }}
    </div>
    <h4 class="pt-2 mt-0 font-18 ml-1"> {{ $party->party_name }} <div class="phone">{{ $party->phone }}</div> </h4>
</div>
@if (count($party->transactions))
    <div class="table-responsive">
        <table class="table table-bordered table-centered mb-0">
            <thead>
                <tr>
                    <th>Entries</th>
                    <th class="text-center">You Gave</th>
                    <th class="text-center">You Got</th>
                </tr>
            </thead>
            <tbody>

                @foreach($party->transactions as $key=>$transaction)
                <tr>
                    <td class="datetime">
                        {{ $transaction->created_at->setTimezone('Asia/Kolkata')->format('d M Y') }} - {{ $transaction->created_at->setTimezone('Asia/Kolkata')->format('h:i A') }} <br/>
                        <span class="remainingbalance">
                            {{ $loop->last ? 'Opening Balance:': 'Balance:' }}<span class="{{ $transaction->running_balance >= 0 ? 'text-success' : 'text-danger' }}">
                                {{ $transaction->running_balance >= 0 ? '' : '-' }}{{ number_format(abs($transaction->running_balance), 2) }}
                            </span>
                        </span>
                    </td>
                    <td class="amount">
                        <span class="give">
                            @if($transaction->transaction_type == 'debit') 
                                {{ $transaction->amount ? '₹' .number_format($transaction->amount, 2) : '-' }}
                            @else
                            -
                            @endif
                        </span>
                    </td>
                    <td class="amount">
                        <span class="get">
                            @if($transaction->transaction_type == 'credit') 
                                {{ $transaction->amount ? '₹' .number_format($transaction->amount, 2) : '-' }}
                            @else
                                -
                            @endif
                        </span>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@else
    <p><strong>No entries added</strong></p>
@endif