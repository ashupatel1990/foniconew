@extends('layout.app')

@section('title')
    {{ isset($purchase) ? 'Edit Stock' : 'New Stock' }}
@endsection

@section('content')
    <!-- Start Content-->
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-8">
                <div class="page-title-box">
                    <h4 class="page-title">{{ isset($purchase) ? 'Edit Stock' : 'New Stock' }} Information</h4>
                </div>
            </div>
            <div class="col-4">
                <div class="page-title-box text-right">
                    <h4 class="page-title">
                        <a href="{{ route('allpurchases') }}" class="btn btn-sm btn-success">
                            <i class="mdi mdi-keyboard-backspace"></i> Back
                        </a>
                    </h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-12">
                @include('include.alert')
                <div class="card shadow-lg rounded-3 border-0">
                    <div class="card-body p-4">
                        <h4 class="mb-3 fw-bold text-primary">Single Stock Entry</h4>
                        <form class="form-horizontal" method="post" enctype="multipart/form-data"
                            action="{{ route('purchase.store')}}" id="purchaseForm">
                            @csrf
                            <input type="hidden" name="id" value="{{ isset($purchase) ? $purchase->id : '' }}">
                            <input type="hidden" name="entry_type" value="single">

                            {{-- Row 1: Device Type + Model --}}

                            <div class="row mb-3">
                                <div class="col-md-2">
                                    <label for="storelocation" class="form-label fw-semibold">Store Location</label>
                                    <select class="form-control" id="storelocation" name="storelocation" value="">
                                        <option value="ahmedabad" @selected(old('storelocation', $purchase->storelocation) == 'ahmedabad')>Ahmedabad</option>
                                        <option value="sidhi" @selected(old('storelocation', $purchase->storelocation) == 'sidhi')>Sidhi</option>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label for="devicetype" class="form-label fw-semibold">Device Type</label>
                                    <select class="form-select form-control" id="devicetype" name="device_type" required>
                                        <option value="Phone" @selected(old('device_type', $purchase->device_type) == 'Phone')>
                                            Phone</option>
                                        <option value="Tablet"
                                            @selected(old('device_type', $purchase->device_type) == 'Tablet')>Tablet</option>
                                        <option value="Laptop"
                                            @selected(old('device_type', $purchase->device_type) == 'Laptop')>Laptop</option>
                                        <option value="Accessories"
                                            @selected(old('device_type', $purchase->device_type) == 'Accessories')>Accessories</option>
                                        <option value="Smartwatch"
                                            @selected(old('device_type', $purchase->device_type) == 'Smartwatch')>Smartwatch</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label for="model" class="form-label fw-semibold">Model <span
                                            class="text-danger">*</span></label>
                                    <input type="text" id="model" class="form-control @error('storage') is-invalid @enderror" name="model"
                                        value="{{ old('model', $purchase->model) }}" required>
                                </div>
                                <div class="col-md-3">
                                    <label for="imei" class="form-label fw-semibold">IMEI <span
                                            class="text-danger">*</span></label>
                                    <input type="text" id="imei"
                                        class="form-control @error('imei') is-invalid @enderror" name="imei"
                                        value="{{ old('imei', $purchase->imei) }}" required>
                                </div>
                            </div>

                            {{-- Row 2: IMEI + Storage --}}
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label for="storage" class="form-label fw-semibold">Storage (GB) <span
                                            class="text-danger">*</span></label>
                                    <input type="text" id="storage"
                                        class="form-control @error('storage') is-invalid @enderror"
                                        name="storage" value="{{ old('storage', $purchase->storage) }}" required>
                                </div>
                                <div class="col-md-4">
                                    <label for="warrenty" class="form-label fw-semibold">Brand Warranty <span
                                            class="text-danger">*</span></label>
                                    <select class="form-select form-control" id="warrenty" name="warrenty" value="{{ old('warrentydate', $purchase->warrentydate) ?? 'Non warrenty' }}" required>
                                        <option value="Non warrenty" @selected(old('warrentydate', $purchase->warrentydate) == 'Non warrenty')>Non Warranty</option>
                                        <option value="Warrenty" @selected(old('warrentydate', $purchase->warrentydate) == 'Warrenty')>Warranty</option>
                                    </select>
                                    <div class="warrentydate" style="display:none;">
                                        <input type="date" id="warrentydate" class="form-control"
                                            name="warrentydate" value="{{ old('warrentydate', $purchase->warrentydate) }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label for="color" class="form-label fw-semibold">Color <span
                                            class="text-danger">*</span></label>
                                    <input type="text" id="color" class="form-control" name="color"
                                        value="{{ old('color', $purchase->color) }}" required>
                                </div>
                            </div>

                            {{-- Row 4: Party Name + Contact --}}
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="partyname" class="form-label fw-semibold">Party Name</label>
                                    <input type="text" id="partyname" class="form-control " name="purchase_from"
                                        value="{{ old('purchase_from', $purchase->purchase_from) }}" autocomplete="off">
                                    <div id="parties_suggestions" class="list-group"></div>
                                </div>
                                <div class="col-md-6">
                                    <label for="contactno" class="form-label fw-semibold">Party Contact No</label>
                                    <input type="text" id="contactno" class="form-control" name="contactno"
                                        value="{{ old('contactno', $purchase->contactno) }}">
                                </div>
                            </div>

                            {{-- Row 5: Purchase Date + Purchase Cost --}}
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="purchasedate" class="form-label fw-semibold">Purchase Date <span
                                            class="text-danger">*</span></label>
                                    <input type="date" id="purchasedate" class="form-control"
                                        name="purchase_date" value="{{ old('purchase_date', $purchase->purchase_date) }}">
                                </div>
                                <div class="col-md-3">
                                    <label for="purchasecost" class="form-label fw-semibold">Purchase Cost <span
                                            class="text-danger">*</span></label>
                                    <input type="number" id="purchasecost" class="form-control"
                                        name="purchase_cost" value="{{ old('purchase_cost', $purchase->purchase_cost) }}"
                                        required placeholder="Enter Purchase Cost">
                                </div>
                                <div class="col-md-3">
                                    <label for="msp" class="form-label fw-semibold">MSP<span class="text-danger">*</span></label>
                                    <input type="number" id="msp" class="form-control @error('storage') is-invalid @enderror"
                                        name="msp" value="{{ old('msp', $purchase->msp) }}"
                                        required placeholder="Enter MSP">
                                </div>
                            </div>

                            {{-- Row 6: Repairing Charge + Remark --}}
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <label for="remark" class="form-label fw-semibold">Remark</label>
                                    <textarea id="remark" class="form-control" name="remark" rows="1"
                                        placeholder="Enter Remark">{{ old('remark', $purchase->remark) }}</textarea>
                                </div>
                            </div>

                            {{-- Buttons --}}
                            <div class="text-right">
                                <button type="reset" class="btn btn-outline-danger">
                                    <i class="fe-x me-1"></i> Cancel
                                </button>
                                <button type="submit" class="btn btn-outline-success mx-2">
                                    <i class="fe-check-circle me-1"></i> {{ isset($purchase->id) ? 'Update' : 'Save' }}
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- end row -->
    </div> <!-- container -->

@endsection

@section('scripts')
    <script>
        $(document).ready(function () {
            @if(isset($purchase) && $purchase->warrentydate != null)
                $('#warrenty').hide();
                $('.warrentydate').show();
            @endif

            // Warranty toggle
            $('#warrenty').on('change', function () {
                if ($(this).val() === 'Warrenty') {
                    $('.warrentydate').show();
                } else {
                    $('#warrentydate').hide();
                }
            });

            // Multiple documents preview
            $('#document').on('change', function () {
                $('#document-preview').empty(); // clear old previews
                const files = this.files;

                if (!files.length) return;

                Array.from(files).forEach(file => {
                    const reader = new FileReader();
                    reader.onload = function (e) {
                        let preview;
                        if (file.type.startsWith('image/')) {
                            preview = `<div class="mr-2">
                                          <div class="border rounded shadow-sm p-1">
                                              <img src="${e.target.result}" class="img-fluid rounded" style="height:120px; object-fit:cover;">
                                          </div>
                                       </div>`;
                        } else if (file.type === 'application/pdf') {
                            preview = `<div class="mr-2">
                                          <div class="border rounded shadow-sm p-3 text-center bg-light">
                                              <i class="fe-file-text text-danger fs-3"></i>
                                              <p class="small mt-2">${file.name}</p>
                                          </div>
                                       </div>`;
                        } else {
                            preview = `<div class="mr-2">
                                          <div class="border rounded shadow-sm p-3 text-center bg-light">
                                              <i class="fe-file text-secondary fs-3"></i>
                                              <p class="small mt-2">${file.name}</p>
                                          </div>
                                       </div>`;
                        }
                        $('#document-preview').append(preview);
                    };
                    reader.readAsDataURL(file);
                });
            });

        });
        
    </script>
@endsection