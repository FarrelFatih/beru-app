import 'package:app_movie/page/DataUserPage.dart';
import 'package:app_movie/widgets/CustomNavigationBar.dart';
import 'package:app_movie/widgets/NewMoviesWidget.dart';
import 'package:app_movie/widgets/SerialWidget.dart';
import 'package:app_movie/widgets/UpcomingWidget.dart';
import 'package:app_movie/widgets/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:app_movie/page/HomePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Null",
                          style: TextStyle(
                            color: Color(0xFFE3CCAE),
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "What to Watch?",
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DataUserPage(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xFFE3CCAE),
                          size: 39,
                        ),
                      ),
                      // child: Image.asset(
                      //   "images/profile.jpg",
                      //   height: 60,
                      //   width: 60,
                      // ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 30,
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(left: 5),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              UpcomingWidget(),
              SizedBox(height: 35),
              NewMoviesWidget(),
              SizedBox(height: 35),
              SerialWidget(),
              SizedBox(height: 35),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
