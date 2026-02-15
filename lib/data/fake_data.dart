import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/product.dart';

class FakeData {
  static final List<Category> categories = [
    Category(id: 'c1', name: 'Electronics', icon: Icons.devices),
    Category(id: 'c2', name: 'Fashion', icon: Icons.checkroom),
    Category(id: 'c3', name: 'Shoes', icon: Icons.do_not_step),
    Category(id: 'c4', name: 'Watches', icon: Icons.watch),
    Category(id: 'c5', name: 'Furniture', icon: Icons.chair),
    Category(id: 'c6', name: 'Sports', icon: Icons.sports_soccer),
  ];

  static final List<Product> products = [
    Product(
      id: 'p1',
      name: 'Sony WH-1000XM5',
      description:
          'Industry-leading noise canceling with two processors controlling 8 microphones for unprecedented noise cancellation. With Auto NC Optimizer, noise canceling is automatically optimized based on your wearing conditions and environment.',
      price: 348.00,
      images: [
        'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.8,
      categoryId: 'c1',
      isNew: true,
      reviewCount: 1240,
      colors: [Colors.black, Colors.grey],
    ),
    Product(
      id: 'p2',
      name: 'Nike Air Max 270',
      description:
          'The Nike Air Max 270 delivers unrivaled comfort with a large volume Max Air unit.',
      price: 150.00,
      images: [
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.5,
      categoryId: 'c3',
      reviewCount: 890,
      sizes: ['US 7', 'US 8', 'US 9', 'US 10', 'US 11'],
      colors: [Colors.red, Colors.black, Colors.white],
    ),
    Product(
      id: 'p3',
      name: 'Modern Lounge Chair',
      description:
          'Mid-century modern style armchair with solid wood legs and premium fabric upholstery.',
      price: 299.99,
      images: [
        'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.7,
      categoryId: 'c5',
      reviewCount: 45,
      colors: [Colors.grey, Colors.brown, Colors.blue],
    ),
    Product(
      id: 'p4',
      name: 'Minimalist Watch',
      description:
          'Elegant and simple design for the modern gentleman. Genuine leather strap.',
      price: 120.00,
      images: [
        'https://images.unsplash.com/photo-1524592094714-0f0654e20314?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1522312346375-d1a52e2b99b3?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.6,
      categoryId: 'c4',
      reviewCount: 320,
      colors: [Colors.black, Colors.brown],
    ),
    Product(
      id: 'p5',
      name: 'MacBook Pro M2',
      description:
          'Supercharged by M2 Pro or M2 Max, MacBook Pro takes its power and efficiency further than ever.',
      price: 1299.00,
      images: [
        'https://images.unsplash.com/photo-1517336714731-489689fd1ca4?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.9,
      categoryId: 'c1',
      isNew: true,
      reviewCount: 2100,
      colors: [Colors.grey, Colors.white],
    ),
    Product(
      id: 'p6',
      name: 'Designer Denim Jacket',
      description:
          'Classic denim jacket with a modern twist. Perfect for any casual occasion.',
      price: 89.99,
      images: [
        'https://images.unsplash.com/photo-1576871337632-b9aef4c17ab9?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1601333762779-83bf81eaef56?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.4,
      categoryId: 'c2',
      reviewCount: 150,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [Colors.blue, Colors.black],
    ),
    Product(
      id: 'p7',
      name: 'Smart Fitness Watch',
      description:
          'Track your health and fitness with this advanced smart watch. Features heart rate monitoring, GPS, and sleep tracking.',
      price: 199.99,
      images: [
        'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.5,
      categoryId: 'c4',
      reviewCount: 320,
      colors: [Colors.black, Colors.blue],
    ),
    Product(
      id: 'p8',
      name: 'Leather Office Chair',
      description:
          'Ergonomic office chair with high-quality leather and adjustable support for long working hours.',
      price: 249.50,
      images: [
        'https://images.unsplash.com/photo-1505843490538-5133c6c7d0e1?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1580480055273-228ff5388ef8?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.6,
      categoryId: 'c5',
      reviewCount: 88,
      colors: [Colors.black, Colors.brown],
    ),
    Product(
      id: 'p9',
      name: 'Running Shoes Pro',
      description:
          'Lightweight running shoes designed for speed and comfort. Perfect for marathons or daily jogs.',
      price: 129.99,
      images: [
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.8,
      categoryId: 'c3',
      reviewCount: 450,
      sizes: ['US 8', 'US 9', 'US 10', 'US 11'],
      colors: [Colors.red, Colors.blue],
    ),
    Product(
      id: 'p10',
      name: 'Classic Sunglasses',
      description:
          'Timeless detailed sunglasses with UV protection. A must-have accessory for sunny days.',
      price: 145.00,
      images: [
        'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.3,
      categoryId: 'c2',
      reviewCount: 210,
      colors: [Colors.black, Colors.brown],
    ),
    Product(
      id: 'p11',
      name: 'Wireless Gaming Mouse',
      description:
          'High-precision wireless gaming mouse using 2.4GHz connection. Customizable RGB lighting.',
      price: 79.99,
      images: [
        'https://images.unsplash.com/photo-1527814050087-3793815479db?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1615663245857-acda5b2b8b64?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.7,
      categoryId: 'c1',
      reviewCount: 560,
      colors: [Colors.black],
    ),
    Product(
      id: 'p12',
      name: 'Yoga Mat',
      description:
          'Eco-friendly non-slip yoga mat. Perfect for yoga, pilates, and floor exercises.',
      price: 35.00,
      images: [
        'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1593164842264-854604db0060?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.9,
      categoryId: 'c6',
      reviewCount: 300,
      colors: [Colors.purple, Colors.green],
    ),
    Product(
      id: 'p13',
      name: 'Basketball',
      description:
          'Official size and weight basketball. Excellent grip and durability for indoor and outdoor play.',
      price: 29.99,
      images: [
        'https://images.unsplash.com/photo-1519861531473-92002639313a?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1546519638-68e109498ad0?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.8,
      categoryId: 'c6',
      reviewCount: 150,
      colors: [Colors.orange],
    ),
    Product(
      id: 'p14',
      name: 'Wooden Coffee Table',
      description:
          'Minimalist wooden coffee table. Adds a warm and natural touch to your living room.',
      price: 180.00,
      images: [
        'https://images.unsplash.com/photo-1532372320572-cda25653a26d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1565538420183-b7168d1f8552?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.4,
      categoryId: 'c5',
      reviewCount: 65,
      colors: [Colors.brown, Colors.white],
    ),
    Product(
      id: 'p15',
      name: 'Luxury Gold Watch',
      description:
          'Premium gold-plated watch with a sapphire crystal face. Water-resistant up to 50 meters.',
      price: 450.00,
      images: [
        'https://images.unsplash.com/photo-1547996160-81dfa63595aa?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1619134778706-c4b51c3683c9?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
      ],
      rating: 4.9,
      categoryId: 'c4',
      reviewCount: 85,
      colors: [Colors.yellow],
    ),
  ];
}
