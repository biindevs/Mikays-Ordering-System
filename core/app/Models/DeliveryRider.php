<?php

namespace App\Models;

use App\Models\ProductOrder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DeliveryRider extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_order_id',
        'name',
        'phone_number',
        'delivery_service',
        'status',
    ];

    public function productOrder()
    {
        return $this->belongsTo(ProductOrder::class);
    }
}
