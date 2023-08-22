import 'package:flutter/material.dart';
import 'package:furniture_new_app_ui/screens/product_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CatProductCard extends StatelessWidget {
  final int pIndex;
  const CatProductCard({
    super.key,
    required this.pIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF3F6FD),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => ProductScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  "images/Product ${pIndex + 1}.png",
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Product Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "\$223",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    )
        .animate()
        .fadeIn(
          delay: Duration(milliseconds: 200 * pIndex),
        )
        .scale();
  }
}
