import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScanQRScreen extends StatefulWidget {
  @override
  _ScanQRScreenState createState() => _ScanQRScreenState();
}

class _ScanQRScreenState extends State<ScanQRScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Scan QR screen"),
      ),
    );
  }
}
