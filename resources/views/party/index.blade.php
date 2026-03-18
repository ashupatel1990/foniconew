@extends('layout.app')

@section('title', 'List Parties')

@section('css')
<style>
    .card { cursor: pointer;}
    .card-body:hover{
        font-size: 1rem;
        box-shadow: 0 0.75rem 6rem rgba(156, 165, 174, 0.3);
    }
    .card p {
        font-size: 0.75rem;
        letter-spacing: 0.5px;
    }
    .border-2 {
        border: 1px solid #867f7f;
        border-radius: 10px;
    }
    .error { color:#f00 }
    .text-green, .text-green h3 { color: #28a745; }
    .text-red, .text-red h3 { color: #dc3545; }
    tr .amount .give { color: rgb(217, 45, 32); font-weight:700 }
    tr .amount .get { color:rgb(18, 183, 106); font-weight:700 }
    tr .amount { text-align: right; }
    tr .lastbalance span { font-weight:600; font-size:15px; } 
    tr .lastbalance span.text-danger { color:#ff1639 !important; }
    .remainingbalance { font-weight:400;  }
    .datetime { color:#000; font-weight:700; }
    .phone { font-size: 14px; font-weight: 400; }
    .avatar { color: rgb(193, 21, 116); font-weight: 700; font-size: 22px; background: rgb(252, 231, 246); border-radius: 50%; width: 40px; height: 40px; line-height: 1; align-items: center; display: flex; justify-content: center; }
</style>
@endsection

@section('content')

<div class="container-fluid">
    <div class="row align-items-center">
        <!-- Title & Buttons for Mobile -->
        <div class="col-12 d-flex justify-content-between align-items-center mb-2 d-md-none">
            <h4 class="page-title mb-0">Parties</h4>
            <div class="d-flex align-items-center mt-2">
                <button type="button" class="btn btn-success btn-sm" data-target="#addnewPartyModal" data-toggle="modal">
                    Add Party
                </button>
            </div>
        </div>

        <!-- Title for Desktop -->
        <div class="col-md-6 mt-2 mb-2 d-none d-md-block">
            <h4 class="page-title">Parties</h4>
        </div>

        <!-- Buttons for Desktop -->
        <div class="col-md-6 d-none d-md-flex justify-content-end">
            <button type="button"
                class="addnew-party-btn btn btn-success" data-target="#addnewPartyModal" data-toggle="modal">
                    + Create Party
            </button>
            <button type="button"
                class="addnew-party-btn btn btn-primary ml-1" data-target="#addnewPartyModal" data-toggle="modal">
                    + Add Transaction
            </button>
        </div>
    </div>
</div>

<div class="row g-3">
    <div class="col-md-4 col-sm-6">
        <div class="card border-2 shadow-sm">
            <div class="card-body text-left">
                <p class="text-muted text-uppercase mb-1">All Parties</p>
                <h3 class="fw-semibold text-primary mb-0">{{count($parties)}}</h3>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-6">
        <div class="card border-2 shadow-sm">
            <div class="card-body text-left text-green">
                <p class="text-uppercase mb-1 ">You'll Give</p>
                <h3 class="fw-semibold mb-0">{{config('constant.currency')}} {{ number_format($totalCredit, 2) }}</h3>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-6">
        <div class="card border-2 shadow-sm">
            <div class="card-body text-left text-red">
                <p class="text-uppercase mb-1">You'll Get:</p>
                <h3 class="fw-semibold mb-0">{{config('constant.currency')}} {{ number_format($totalDebit, 2) }}</h3>
            </div>
        </div>
    </div>
   <!--  <div class="col-md-3 col-sm-6">
        <div class="card border-2 shadow-sm">
            <div class="card-body text-left text-{{ $netBalance > 0 ? 'green':'red'}}">
                <p class="text-uppercase mb-1">Net Balance</p>
                <h3 class="fw-semibold mb-0">{{config('constant.currency')}} {{ number_format($netBalance, 2) }}</h3>
            </div>
        </div>
    </div> -->
</div>

 <div class="row">
    <div class="col-12">
        <div class="card-box">

            @if (count($parties))
            <div class="table-responsive">
                <table class="table table-hover m-0 table-centered dt-responsive nowrap w-100" id="party-table">
                    <thead>
                        <tr>
                           {{-- <th>Sr.No</th> --}}
                            <th>Party Name</th>
                           {{-- <th>Mobile Number</th> --}}
                            <th>Party type</th>
                            <th>Amount</th>
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($parties as $key=>$party)
                            <tr>
                                {{-- <td><a href="javascript:void(0);" data-id="{{$party->id}}" class="view-detail-btn"><b>#{{ $party->id }}</b></a></td> --}}
                                <td style="display:flex;" class="pl-0">
                                    <p class="m-0 d-inline-block align-middle font-16">
                                        <div class="avatar me-3 mr-2">
                                            {{ strtoupper(substr($party->party_name, 0, 1)) }}
                                        </div>
                                        <div>
                                            {{ ucfirst($party->party_name) }}
                                            <br>
                                            @php 
                                                $lastTransaction = $party->transactions()->latest()->first();
                                            @endphp
                                            <small class="mr-2"><b>{{ $lastTransaction ? $lastTransaction->created_at->diffForHumans() : '-' }}</b></small>
                                        </div>
                                    </p>
                                </td>
                             {{--   <td>{{ $party->phone ? $party->phone : '-' }}</td> --}}
                                <td>{{ $party->party_type }}</td>
                                <td class="lastbalance">
                                    @if($party->balance > 0)
                                        <span class="text-success fw-bold">
                                            ₹{{ number_format($party->balance, 2) }}
                                            <small class="d-block">You'll Give</small>
                                        </span>
                                    @elseif($party->balance < 0)
                                        <span class="text-danger fw-bold">
                                            ₹{{ number_format(abs($party->balance), 2) }}
                                            <small class="d-block">You'll Get</small>
                                        </span>
                                    @else
                                        ₹0.00
                                    @endif
                                </td>
                                <td class="text-right">
                                    <button type="button"
                                        data-id="{{$party->id}}" 
                                        class="add-transaction-btn btn btn-success btn-sm mr-1 mb-1">
                                            <i class="fas fa-plus"></i>
                                    </button>
                                    <button type="button"
                                        data-id="{{$party->id}}" 
                                        class="view-party-btn btn btn-primary btn-sm mr-1 mb-1">
                                            <i class="fas fa-eye"></i>
                                    </button>
                                    <button data-id="{{$party->id }}" class="btn btn-info btn-sm mr-1 mb-1 edit-party"><i class="fas fa-edit"></i></button>   
                                    <button type="button" class="btn btn-danger btn-sm delete-transaction mr-1 mb-1 delete-party" data-id="{{ $party->id }}"><i class="fas fa-trash"></i></button>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="pagination-links">
                {{ $parties->appends(request()->query())->links('vendor.pagination.bootstrap-5') }}
            </div>
            @else
                <h4>No Parties found..</h4>
                <a href="{{ route('allpurchases') }}" class="btn btn-sm btn-success waves-effect waves-light">
                    <i class="mdi mdi-keyboard-backspace"></i> Back
                </a>
            @endif
        </div>
    </div>
</div>

<!-- Party Detail Modal -->
<div class="modal fade" id="partyDetailModal" tabindex="-1" role="dialog" aria-labelledby="partyDetailLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="partyDetailLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body pt-0" id="party-detail-content">
                <!-- Dynamic content will be loaded here -->
                Loading...
            </div>
        </div>
    </div>
</div>

<!-- Add New Party Modal -->
<div class="modal fade" id="addnewPartyModal" tabindex="-1" role="dialog" aria-labelledby="newpartyLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="newpartyLabel">Add New Party</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body pt-0" id="newpartyform-content">
                <form class="form-horizontal row g-3" method="post" id="addNewPartyForm" action="{{ route('parties.store')}}">
                    <input type="hidden" name="id" id="partyID">
                    @csrf
                    <div class="col-md-6 mb-3">
                        <label for="party_name" class="form-label">Party Name <span class="text-danger">*</span></label>
                        <input type="text" id="party_name" class="form-control @error('party_name') is-invalid @enderror" name="party_name" value="{{ old('party_name') }}" required tabindex="1" placeholder="Enter Name">
                        @error('party_name')
                            <ul class="parsley-errors-list filled">
                                <li class="parsley-required">{{ $message}}</li>
                            </ul>
                        @enderror
                    </div> 
                    <div class="col-md-6 mb-3">
                        <label for="mobileno" class="form-label">Mobile Number</label>
                        <input type="number" id="mobileno" class="form-control" name="phone" value="{{ old('phone') }}" tabindex="2" placeholder="Enter mobile number">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" id="email" class="form-control" name="email" value="{{ old('email') }}" tabindex="3" placeholder="Enter email">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="party_type" class="form-label">Party Type</label>
                        <select id="party_type" class="form-control" name="party_type" tabindex="4">
                            <option value="Customer">Customer</option>
                            <option value="Supplier">Supplier</option>
                        </select>
                    </div>
                    {{-- <div class="col-md-7 mb-3">
                        <label for="address" class="form-label">Billing Address</label>
                        <textarea id="address" rows="1" class="form-control" name="address" tabindex="5" rows="1" placeholder="Enter Billing Address">{{ old('address') }}</textarea>
                    </div> --}}

                    <div class="text-left col-12">
                        <button type="submit" class="btn btn-primary waves-effect waves-light col-md-2 mb-2" tabindex="13"><i class="fe-check-circle mr-1"></i>Save</button>
                        <button type="reset" class="btn btn-danger waves-effect waves-light col-md-2 mb-2" tabindex="14"><i class="fe-x mr-1"></i>Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
@if(Session::has('message'))
     var type = "{{ Session::get('alert-type','info') }}"
     switch(type){
        case 'info':
        toastr.info(" {{ Session::get('message') }} ");
        break;

        case 'success':
        toastr.success(" {{ Session::get('message') }} ");
        break;

        case 'warning':
        toastr.warning(" {{ Session::get('message') }} ");
        break;

        case 'error':
        toastr.error(" {{ Session::get('message') }} ");
        break; 
     }
@endif 
</script>

<script>
    $(document).ready(function () {
        let table = $("#party-table").DataTable({
            pageLength : 10,
            order: [[0, 'desc']]
        });
        // Initialize Bootstrap modal
        $('#transactionModal').modal({
            show: false,
            backdrop: 'static',
            keyboard: false
        });

        // Handle delete button click
        $('.delete-party').on('click', function () {
            var partyId = $(this).data('id');
            var deleteUrl = '/admin/parties/delete/' + partyId;

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

        /* view Party detail model */
        $(document).on('click', '.view-party-btn', function () {
            const partyId = $(this).data('id');
            jQuery('#party-detail-content').html('Loading...');
            jQuery.ajax({
                url: "/admin/parties/partydetail/" + partyId,
                type: 'GET',
                success: function (response) {
                    $("#partyDetailLabel").html('Party Detail ID : #'+partyId);
                    $('#party-detail-content').html(response);
                    jQuery('#partyDetailModal').modal('show');
                    $('#partyDetailModal').on('hide.bs.modal', function () {
                        document.activeElement.blur();
                    });
                },
                error: function () {
                    $('#party-detail-content').html('<p class="text-danger">Failed to load data.</p>');
                }
            });
        });

        $(document).on('click', '.edit-party', function() {
            const partyID = $(this).data('id');

            // Reset form and clear validation errors
            $('#addNewPartyForm')[0].reset();
            $('#addNewPartyForm').validate().resetForm();

            // Set transaction ID in hidden field
            $('#partyID').val(partyID);

            // Fetch transaction data
            $.ajax({
                url: "/admin/parties/edit/" + partyID,
                type: 'GET',
                success: function(response) {
                    // Pre-fill form fields
                    $('#addNewPartyForm #party_name').val(response.party_name);
                    $('#addNewPartyForm #mobileno').val(response.phone);
                    $('#addNewPartyForm #email').val(response.email);
                    $('#addNewPartyForm #party_type').val(response.party_type).trigger('change');
                    $('#addNewPartyForm #address').html(response.address);
                    $('#addNewPartyForm #partyID').val(response.id);

                    // Show modal
                    $('#addnewPartyModal').modal('show');
                },
                error: function(xhr) {
                    toastr.error('Error fetching transaction details');
                }
            });
        })

        $("#addNewPartyForm").validate({
            rules: {
                party_name: "required"
            },
            messages: {
                party_name: "Please Enter Party"
            },
            submitHandler: function(form) {
                var formData = $(form).serialize();
                $.ajax({
                    url: $(form).attr('action'),
                    type: 'POST',
                    data: formData,
                    success: function(response) {
                        toastr.success(response.message);

                        // Try normal hide
                        $('#addnewPartyModal').modal('hide');

                        // Force hide backup
                        setTimeout(() => {
                            $('#addnewPartyModal').removeClass('show').hide();
                            $('body').removeClass('modal-open');
                            $('.modal-backdrop').remove();
                        }, 300);

                        // Reset form and select2 fields
                        $('#addNewPartyForm')[0].reset();
                        
                        setTimeout(function () {
                            location.reload();
                        }, 3000);
                    },
                    error: function(xhr) {
                        toastr.error('Error storing transaction');
                    }
                });
                return false;
            }
        });

        // $(document).on('click', '.addnew-party-btn', function () {

        // });
    });
</script>
@endsection