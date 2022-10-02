import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Benging",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home,
              size: 28,
            ),
            Icon(
              Icons.search,
              size: 28,
            ),
            Icon(
              Icons.notifications_sharp,
              size: 28,
            ),
            Icon(
              Icons.mail,
              size: 28,
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.account_circle_rounded,
              size: 28,
              color: Colors.black,
            ),
            Row(
              children: [
                Image.asset(
                  "images/logo.png",
                  width: 32,
                  height: 32,
                ),
              ],
            ),
            Row(
              children: [
                Text("none"),
              ],
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Stack(
            fit: StackFit.loose,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 68,
                  )
                ],
              ),
              Positioned(
                top: 1,
                left: 80,
                right: 0,
                child: Row(
                  children: [
                    Text(
                      "Matheus Augusto",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 80,
                right: 0,
                top: 23,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                            "Front-end em flutter para fins de estudo. Construindo de maneira simples um front do Twitter."),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
