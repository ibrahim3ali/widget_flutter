import 'package:flutter/material.dart';

class GridViewEx extends StatefulWidget {
  const GridViewEx({super.key});

  @override
  State<GridViewEx> createState() => _GridViewExState();
}

class _GridViewExState extends State<GridViewEx> {
  // حالة لكل منتج (true = تمت الإضافة)
  List<bool> addedToCart = List.filled(products.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('المنتجات')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          final isAdded = addedToCart[index];

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12)],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    product.imageUrl,
                    width: 80,
                    height: 80,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  product.title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: isAdded
                      ? null // زر غير فعال
                      : () {
                          setState(() {
                            addedToCart[index] = true;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('✅ ${product.title} أُضيف للسلة')),
                          );
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isAdded ? Colors.green : null,
                  ),
                  child: Text(isAdded ? '✅ تمت الإضافة' : 'أضف للسلة'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
class Product {
  final String title;
  final String imageUrl;

  Product({required this.title, required this.imageUrl});
}

final List<Product> products = [
  Product(title: 'قهوة', imageUrl: 'https://via.placeholder.com/100x100.png?text=Coffee'),
  Product(title: 'شاي', imageUrl: 'https://via.placeholder.com/100x100.png?text=Tea'),
  Product(title: 'عصير', imageUrl: 'https://via.placeholder.com/100x100.png?text=Juice'),
  Product(title: 'ماء', imageUrl: 'https://via.placeholder.com/100x100.png?text=Water'),
  Product(title: 'لبن', imageUrl: 'https://via.placeholder.com/100x100.png?text=Milk'),
  Product(title: 'صودا', imageUrl: 'https://via.placeholder.com/100x100.png?text=Soda'),
];
