<!DOCTYPE html>
<html>
<head>
    <title>{{ $category->name }}</title>
</head>
<body>
    <h1>{{ $category->name }}</h1>
    <h2>Products:</h2>
    <ul>
        @foreach($products as $product)
            <li><a href="/products/{{ $product->id }}">{{ $product->name }}</a></li>
        @endforeach
    </ul>
</body>
</html>
