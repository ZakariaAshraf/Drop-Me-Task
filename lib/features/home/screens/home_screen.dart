import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../qr_scan/screens/qr_scan_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: "btn1",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QrScanView()),
          );
        },
        backgroundColor: Colors.white,
        child: Icon(CupertinoIcons.qrcode,size: 40,color: Colors.black,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Press The Scan button",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
