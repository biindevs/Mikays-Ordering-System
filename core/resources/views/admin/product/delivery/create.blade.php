<!-- Create Rider Modal -->
<div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="createModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form action="{{ route('admin.delivery_rider.store') }}" method="POST">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="createModalLabel">Add Rider</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="order_number">Order Number *</label>
                        <select class="form-control" id="order_number" name="order_number" required>
                            <option value="">Select Order Number</option>
                            @foreach ($orderNumbers as $orderNumber)
                                <option value="{{ $orderNumber }}">{{ $orderNumber }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="name">Name *</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter rider's name" pattern="/^[A-Za-z\s\'-]+$/" required>
                    </div>
                    <div class="form-group">
                        <label for="phone_number">Phone Number *</label>
                        <input type="text" class="form-control" id="phone_number" name="phone_number" placeholder="Enter rider's phone number" pattern="\d+" required>
                    </div>
                    <div class="form-group">
                        <label for="status">Delivery Service *</label>
                        <select class="form-control" id="status" name="status" required>
                            <option value="Mikays Delivery">Mikays Delivery</option>
                            <option value="Maxim Delivery">Maxim Delivery</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add Rider</button>
                </div>
            </form>
        </div>
    </div>
</div>