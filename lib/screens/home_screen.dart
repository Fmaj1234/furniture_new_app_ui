import 'package:flutter/material.dart';
import 'package:furniture_new_app_ui/screens/category_screen.dart';
import 'package:furniture_new_app_ui/utils/categories.dart';
import 'package:furniture_new_app_ui/widgets/products_widget.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Material(
        color: Color(0xFFF3F6FD),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our Products",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black54,
                  labelColor: Colors.black,
                  isScrollable: true,
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: Colors.black38,
                  tabs: [
                    Tab(text: "Chairs"),
                    Tab(text: "Sofas"),
                    Tab(text: "Beds"),
                    Tab(text: "Tables"),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 360,
                  child: TabBarView(
                    children: [
                      ProductsWidget(),
                      ProductsWidget(),
                      ProductsWidget(),
                      ProductsWidget(),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.categories.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryScreen(
                                  category: Categories.categories[index],
                                ),
                              ));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              Categories.categories[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      )
                          .animate()
                          .fadeIn(
                            delay: Duration(milliseconds: 200 * index),
                          )
                          .slideX();
                    },
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Best Offers",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      minLeadingWidth: 70,
                      leading: Image.asset("images/Product ${index + 1}.png"),
                      title: Text(
                        "Product Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      subtitle: Text(
                        "category",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38,
                        ),
                      ),
                      trailing: Text(
                        "\$223",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                        .animate()
                        .fadeIn(
                          delay: Duration(milliseconds: 300 * index),
                        )
                        .slideX();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
