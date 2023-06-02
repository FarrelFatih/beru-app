import 'package:app_movie/widgets/Services.dart';
import 'package:app_movie/widgets/UserCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'User.dart';

class GetWidget extends StatefulWidget {
  const GetWidget({super.key});

  @override
  State<GetWidget> createState() => _GetWidgetState();
}

class _GetWidgetState extends State<GetWidget> {
  User? user;
  bool isLoading = false;
  List<User> datas = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    setState(() {
      isLoading = true;
    });
    List<User> newDatas = await Services.gets();
    setState(() {
      datas = newDatas;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
