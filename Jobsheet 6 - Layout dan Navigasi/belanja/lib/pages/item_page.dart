import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Menampilkan gambar produk
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      item.photoUrl,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Nama produk
              Text(
                item.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Harga produk
              Text(
                'Rp.${item.price}',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              SizedBox(height: 8),
              // Stok produk
              Text(
                'Stock: ${item.stock}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              // Rating produk
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 24),
                  SizedBox(width: 4),
                  Text(
                    '${item.rating}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 24),
              // Tombol Suka
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Tombol Suka
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi saat tombol suka ditekan
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${item.name} ditambahkan ke favorit!'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: Icon(Icons.favorite_border, size: 24),
                    label: Text(
                      'Suka',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  // Tombol "Checkout"
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi ketika tombol checkout ditekan
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Checkout ${item.name}'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: Icon(Icons.payment, size: 24),
                    label: Text(
                      'Checkout',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}