@extends('layout.app')

@section('title')
    Edit Party
@endsection

@section('content')
<!-- Start Content-->
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-6">
            <div class="page-title-box col-md-10">
                <h4 class="page-title">Edit Party</h4>
            </div>
        </div>
        <div class="col-6">
            <div class="page-title-box col-md-10">
                <h4 class="page-title">
                    <a href="{{ route('parties.listparties') }}" class="btn btn-sm btn-success">
                        <i class="mdi mdi-keyboard-backspace"></i> Back
                    </a>
                </h4>
            </div>
        </div>
    </div>     
    <!-- end page title --> 

    <div class="row">
        <div class="col-12">
            <div class="card d-block">
                <div class="card-body">
                    <form class="form-horizontal row g-3" method="post" enctype="multipart/form-data" action="{{ route('parties.store')}}">
                        @csrf
                        <input type="hidden" value="{{ $party->id }}" name="id">
                        <div class="col-md-3 mb-3">
                            <label for="party_name" class="form-label">Party Name <span class="text-danger">*</span></label>
                            <input type="text" id="party_name" class="form-control @error('party_name') is-invalid @enderror" name="party_name" value="{{ old('party_name', $party->party_name ) }}" required tabindex="1" placeholder="Enter Name">
                            @error('party_name')
                                <ul class="parsley-errors-list filled">
                                    <li class="parsley-required">{{ $message}}</li>
                                </ul>
                            @enderror
                        </div> 
                        <div class="col-md-3 mb-3">
                            <label for="mobileno" class="form-label">Mobile Number</label>
                            <input type="number" id="mobileno" class="form-control" name="phone" value="{{ old('phone', $party->phone) }}" tabindex="2" placeholder="Enter mobile number">
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="text" id="email" class="form-control" name="email" value="{{ old('email', $party->email) }}" tabindex="3" placeholder="Enter email">
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="party_type" class="form-label">Party Type</label>
                            <select id="party_type" class="form-control" name="party_type" tabindex="4">
                                <option value="Customer" @selected($party->party_type == 'Customer')>Customer</option>
                                <option value="Supplier" @selected($party->party_type == 'Supplier')>Supplier</option>
                            </select>
                        </div>
                        <!-- <div class="col-md-5 mb-3">
                            <label for="credit_limit" class="form-label">Credit Limit</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">{{ config('constant.currency') }}</span>
                                </div>
                                <input type="text" id="opening_balance" class="form-control" name="opening_balance" tabindex="5" value="{{ old('opening_balance' , $party->opening_balance) }}" placeholder="Enter amount">
                                <select class="you-got" name="transactiontype" id="transactionType">
                                    <option value="yougot">You Got</option>
                                    <option value="yougave">You Gave</option>
                                </select>
                            </div>
                        </div> -->
                        <div class="col-md-7 mb-3">
                            <label for="address" class="form-label">Billing Address</label>
                            <textarea id="address" class="form-control" name="address" tabindex="5" placeholder="Enter Billing Address">{{ old('address' , $party->address) }}</textarea>
                        </div>

                        <div class="text-left col-12">
                            <button type="submit" class="btn btn-primary waves-effect waves-light col-md-2" ><i class="fe-check-circle mr-1"></i>Update</button>
                            <button type="reset" class="btn btn-danger waves-effect waves-light col-md-2" ><i class="fe-x mr-1"></i>Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">

                            <select class="form-select select2" id="partySelect" style="width: 100%">
                                <option></option>
                                <option value="AK">Alaska</option>
                                <option value="HI">Hawaii</option>
                                <option value="CA">California</option>
                                <option value="NV">Nevada</option>
                                <option value="OR">Oregon</option>
                                <option value="WA">Washington</option>
                                <option value="AZ">Arizona</option>
                                <option value="CO">Colorado</option>
                                <option value="UT">Utah</option>
                            </select>
                        </div> 

                    </div> 

                </div>
            </div>
        </div> 
    </div>  -->
</div> <!-- container -->
<!-- Add Party Modal -->
<div class="modal fade" id="addPartyModal" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title">Add New Party</h5>
        <button class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <div class="modal-body">
        <input type="text" id="newPartyName" class="form-control mb-2" placeholder="Party Name">
        <input type="text" class="form-control mb-2" placeholder="Mobile (optional)">
        <button class="btn btn-primary w-100" id="saveParty">Save</button>
      </div>

    </div>
  </div>
</div>

@endsection