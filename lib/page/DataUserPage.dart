import 'package:app_movie/constant/color_style.dart';
import 'package:app_movie/widgets/GetWidget.dart';
import 'package:app_movie/widgets/PostWidget.dart';
import 'package:app_movie/widgets/Services.dart';
import 'package:app_movie/widgets/UserCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/User.dart';

class DataUserPage extends StatefulWidget {
  const DataUserPage({super.key});

  @override
  State<DataUserPage> createState() => _DataUserPageState();
}

class _DataUserPageState extends State<DataUserPage> {
  User? user;
  bool isLoading = false;
  List<User> datas = [];
  @override
  void initState() {
    super.initState();
    getData();
    // createU();
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
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Builder(builder: (context) {
      //   if (isLoading) {
      //     return Text('Mohon tunggu');
      //   } else if (datas.isEmpty) {
      //     return Text('Data tidak tersedia');
      //   }

      //   return ListView.builder(
      //     itemBuilder: (context, index) {
      //       return GestureDetector(
      //         child: Column(
      //           children: [
      //             UserCard(user: datas[index]),
      //           ],
      //         ),
      //       );
      //     },
      //     itemCount: datas.length,
      //   );
      // }),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Builder(
                  builder: (context) {
                    // return Text('done');
                    if (isLoading) {
                      return Text('Mohon tunggu');
                    } else if (datas.isEmpty) {
                      return Text('Data tidak tersedia');
                    }

                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: Column(
                            children: [
                              UserCard(user: datas[index]),
                            ],
                          ),
                        );
                      },
                      itemCount: datas.length,
                    );
                  },
                ),
              ),
              SizedBox(height: 5),
              user != null
                  ? UserCard(user: user!)
                  : Text(
                      "No Registration User",
                      style: TextStyle(
                        color: color_Black,
                        fontSize: 18,
                      ),
                    ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () async {
                    getData();
                    // User? result = await Services.getById(i);

                    // if (result != null) {
                    //   setState(() {
                    //     user = result;
                    //   });
                    // }
                  },
                  child: Text('GET Users'),
                ),
              ),
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () async {
                    User? result = await Services.createUser(
                        'Farrel', 'Fatih', 'farrelfatih@gmail.com');
                    if (result != null) {
                      setState(
                        () {
                          user = result;
                        },
                      );
                    }
                  },
                  child: Text('POST User'),
                ),
                // width: 180,
                // child: ElevatedButton(
                //   onPressed: () async {
                // User? result = await Services.createUser(
                //     'Farrel', 'Fatih', 'farrelfatih@gmail.com');

                //     if (result != null) {
                //       setState(
                //         () {
                //           user = result;
                //         },
                //       );
                //     }
                //   },
                //   child: Text('POST User'),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
