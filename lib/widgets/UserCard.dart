import 'package:app_movie/constant/color_style.dart';
import 'package:app_movie/widgets/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 300,
      decoration: BoxDecoration(
        color: color_Palette1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
                child: Text(
                  'ID',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 220,
                child: Text(':${user.id}'),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
                child: Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 220,
                child: Text(':${user.name}'),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 220,
                child: Text(':${user.email}'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
