<?php


namespace App\Http\Controllers;

use App\Models\Product;

class ProductController extends Controller
{
    public function show(Product $product)
    {
        $categories = $product->categories;
        return view('products.show', compact('product', 'categories'));
    }
}

