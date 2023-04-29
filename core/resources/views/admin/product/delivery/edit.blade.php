<!-- Edit Rider Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form id="editForm" action="{{ route('admin.delivery_rider.update') }}" method="POST">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Edit Rider</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="rider_id" id="rider_id">
                    <div class="form-group">
                        <label for="edit_name">Name *</label>
                        <input type="text" class="form-control" id="edit_name" name="name" placeholder="Enter rider's name" pattern="/^[A-Za-z\s\'-]+$/" required>
                    </div>
                    <div class="form-group">
                        <label for="edit_phone_number">Phone Number *</label>
                        <input type="text" class="form-control" id="edit_phone_number" name="phone_number" placeholder="Enter rider's phone number" pattern="\d+" required>
                    </div>
                    <div class="form-group">
                        <label for="edit_delivery_service">Delivery Service *</label>
                        <select class="form-control" id="edit_delivery_service" name="delivery_service" required>
                            <option value="Mikays Delivery">Mikays Delivery</option>
                            <option value="Maxim Delivery">Maxim Delivery</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Update Rider</button>
                </div>
            </form>
        </div>
    </div>
</div>
