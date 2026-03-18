<?php

namespace App\Http\Controllers;

use App\Constants\ResponseCode;
use Illuminate\Http\Request;
use App\Services\JsonService;
use App\Models\{Party, Transaction};

class PartyController extends Controller
{
    protected $jsonService;

    public function __construct()
    {
        $this->jsonService  = new JsonService();
    }

    /**
     * Display All parties
     */
    public function index()
    {
        $parties = Party::where('deleted', 0)
            ->with([
                'transactions' => function ($query) {
                    $query->orderBy('payment_date', 'asc');
                }
            ])
            ->withSum([
                'transactions as credit_total' => function ($q) {
                    $q->where('transaction_type', 'credit');
                }
            ], 'amount')
            ->withSum([
                'transactions as debit_total' => function ($q) {
                    $q->where('transaction_type', 'debit');
                }
            ], 'amount')
            ->latest()
            ->paginate(10);

        $totalCredit = $totalDebit = 0;
        foreach($parties as $key=>$party) {
            if ($party->balance > 0)
                $totalCredit += $party->balance;
            if ($party->balance < 0)
                $totalDebit -= $party->balance;
        }

        // $totalCredit = Transaction::where('transaction_type', 'credit')->sum('amount');
        // $totalDebit = Transaction::where('transaction_type', 'debit')->sum('amount');
        $netBalance = $totalCredit - $totalDebit;
        $notification = [
            'message' => 'Party Fetched Successfully',
            'alert-type' => 'success'
        ];
        return view('party.index', compact('parties', 'totalCredit', 'totalDebit', 'netBalance'))->with($notification);
    }

    /**
     * Add New Party
     */
    public function addParty() {
        return view('party.add');
    }

    public function editParty($id) {
        $party = Party::findOrFail($id);

        return response()->json($party, 200);
    }

    /**
     * Party Detil with Transactions */
    public function detailParty($id)
    {
        // $party = Party::where('deleted', 0)->where('id', $id)
        //     ->with(['transactions' => function ($query) {
        //         $query->orderBy('payment_date', 'desc');
        //     }])->get();

        $party = Party::where('deleted', 0)
            ->where('id', $id)
            ->with(['transactions' => function ($query) {
                $query->orderBy('payment_date', 'asc')
                        ->orderBy('id', 'asc');
            }])
            ->firstOrFail();
        $runningBalance = 0;
        // dd($party->transactions)
        $party->transactions->transform(function ($tx) use (&$runningBalance) {

            if ($tx->transaction_type === 'credit') {
                $runningBalance += $tx->amount; // You Got
            } else {
                $runningBalance -= $tx->amount; // You Gave
            }

            $tx->running_balance = $runningBalance;
            return $tx;
        });
        $party->transactions = $party->transactions->reverse()->values();
        return view('party.viewdetail', ['party' => $party]);
    }

    /**
     * Delete Party set deleted=1 in DB 
     * */
    public function deleteParty($id)
    {
        $party = Party::findOrFail($id);
        $party->delete();
        // Party::where('id', $id)->update(['deleted' => 1]);
        $notification = [
            'message' => 'Party Deleted Successfully',
            'alert-type' => 'success'
        ];
        return redirect()->route('parties.listparties')->with($notification);
    }

    /**
     * Save New Party
     */
    public function saveParty(Request $request)
    {
        try {
            $request->validate([
                'party_name' => 'required'
            ]);

            if (! empty($request->id)) {
                $party = Party::findOrFail($request->id);
                if ($party) {
                    $party->update([
                        'party_name'   => $request->party_name,
                        'phone'        => $request->phone,
                        'address'      => $request->address,
                        'email'        => $request->email,
                        'party_type'   => $request->party_type,
                    ]);
                    return $this->jsonService->sendResponse(true, $party, 'Party updated successfully', ResponseCode::SUCCESS);
                } 
            } else {
                $data         = $request->all();
                $party        = Party::create($data);
                // Party::create([
                //     'party_name'   => $request->party_name,
                //     'phone'        => $request->phone,
                //     'address'      => $request->address,
                //     'email'        => $request->email,
                //     'party_type'   => $request->party_type,
                // ]);
                return $this->jsonService->sendResponse(false, null, 'Party Created Successfully', ResponseCode::SUCCESS);
            }
        } catch (\Illuminate\Validation\ValidationException $e) {
            return $this->jsonService->sendResponse(false, $e->errors(), 'Validation failed', ResponseCode::UNPROCESSABLE_ENTITY);
        }
        // $party = Party::updateOrCreate(
        //     ['id' => $request->id], // condition
        //     [
        //         'party_name'   => $request->party_name,
        //         'phone'        => $request->phone,
        //         'address'      => $request->address,
        //         'email'        => $request->email,
        //         'party_type'   => $request->party_type,
        //     ]
        // );

        // $responseData = [
        //     'party_name'    => $transaction ?? null,
        //     'phone' => $openingBalance['balance'],
        //     'address'    => $openingBalance['cash_balance'],
        //     'email'    => $openingBalance['bank_balance'],
        //     'party_type'        => $totalIn,
        // ];
        // $notification = [
        //     'message' => $request->id 
        //         ? 'Party Updated Successfully' 
        //         : 'Party Added Successfully',
        //     'alert-type' => 'success'
        // ];
        // return $this->jsonService->sendResponse(true, $responseData, 'Party updated successfully', ResponseCode::SUCCESS);
        // return redirect()->route('parties.listparties')->with($notification);
    }
}
