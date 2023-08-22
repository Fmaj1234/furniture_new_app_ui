import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_new_app_ui/widgets/cat_product_card.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFF3F6FD),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                    Text(
                      category,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F6FD),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(CupertinoIcons.cart_fill),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                        vertical: 12,
                        horizontal: 30,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.sort),
                          SizedBox(width: 5),
                          Text(
                            "Sort",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
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
                        vertical: 12,
                        horizontal: 30,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.filter_list),
                          SizedBox(width: 5),
                          Text(
                            "Filter",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 50),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.width - 15 - 10) /
                            (2 * 250),
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    if (index % 2 == 0) {
                      return CatProductCard(pIndex: index);
                    }
                    return OverflowBox(
                      maxHeight: 250 + 70,
                      child: Container(
                        margin: EdgeInsets.only(top: 70),
                        child: CatProductCard(pIndex: index),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
