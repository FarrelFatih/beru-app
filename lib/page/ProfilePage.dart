import 'dart:ui';

import 'package:app_movie/widgets/CustomNavigationBar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                ),
                width: double.infinity,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Null",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                          Text(
                            "+6282911882497",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.settings,
                            size: 35,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          height: 80,
                          width: 360,
                          decoration: BoxDecoration(
                            color: Color(0xFFE3CCAE),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "PREMIUM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF0A2647)),
                                onPressed: () {},
                                child: Text("UPGRADE"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wallet_membership_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "Rp 200.000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "+6282911882497",
                                style: TextStyle(
                                  color: Colors.white60,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "TOP-UP",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_border_rounded,
                            color: Colors.white,
                            size: 32,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Get PREMIUM Reward",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_offer_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "My Voucher",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_movies_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "My Movies/Series",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Content You Liked",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_tree_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Share Your Referral Link!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
