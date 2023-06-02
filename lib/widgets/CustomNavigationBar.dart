import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // Navigasi ke HomePage
              Navigator.pushNamed(context, "homePage");
            },
            child: Icon(
              Icons.home,
              size: 32,
              color: Color(0xFFE3CCAE),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigasi ke CategoryPage
              Navigator.pushNamed(context, "categoryPage");
            },
            child: Icon(
              Icons.category,
              size: 32,
              color: Color(0xFFE3CCAE),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigasi ke FavoritePage
              Navigator.pushNamed(context, "moviePage");
            },
            child: Icon(
              Icons.favorite_border,
              size: 32,
              color: Color(0xFFE3CCAE),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigasi ke ProfilePage
              Navigator.pushNamed(context, "profilePage");
            },
            child: Icon(
              Icons.person,
              size: 32,
              color: Color(0xFFE3CCAE),
            ),
          ),
        ],
      ),
    );
  }
}
