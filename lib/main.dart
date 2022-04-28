// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:qrapp/colors/colors.dart';
import 'package:qrapp/icons/appicons.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
            titleSpacing: 0.0,
            backgroundColor: colors.bgColor,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                color: Colors.black,
                iconSize: 30,
                icon: const Icon(AppIcons.bell),
              ),
            ],
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
            )),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.2), BlendMode.dstATop),
                image: const AssetImage("assets/images/circlebg.png"),
                fit: BoxFit.fitHeight,
                alignment: Alignment.bottomRight),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                width: 100.0,
                height: 130.0,
              ),
              // Row(
              //   children: [
              //     Column(
              //       children: [
              //         //  Alignment:Alignment.topRight,
              //         // IconButton(
              //         //   onPressed: () {},
              //         //   icon: const Icon(
              //         //     MaterialIcons.notifications_active,
              //         //     size: 40,
              //         //   ),
              //         // ),
              //       ],
              //     ),
              //   ],
              // ),
              Container(
                width: 320,
                height: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 8,
                        blurRadius: 6,
                        offset: const Offset(0, 4),
                      )
                    ]),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: QrImage(
                        data: "www.facebook.com",
                        version: QrVersions.auto,
                        size: 300,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 50, height: 80),
                  TextButton.icon(
                    icon: const Icon(Icons.share),
                    label: const Text('Share'),
                    style: TextButton.styleFrom(
                      primary: colors.orange1,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  TextButton.icon(
                    icon: const Icon(AppIcons.down),
                    style: TextButton.styleFrom(
                      primary: colors.orange1,
                    ),
                    label: const Text('Download'),
                    onPressed: () {},
                  ),
                ],
              ),
              Column(
                children: [
                  const Center(
                    child: Text("Business Name",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      "Terminal ID : 012356448878",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: colors.orange1,
          onPressed: () {},
          child: Icon(
            AppIcons.menu,
            color: colors.bgColor,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: colors.Navbarcolor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            AppIcons.home,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Wallet",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            AppIcons.subtract,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Portfolio",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //right
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            AppIcons.vector,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "History",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            AppIcons.vector2,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Settings",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
