import 'package:flutter/material.dart';

class scan_code extends StatefulWidget {
  const scan_code({super.key});

  @override
  State<scan_code> createState() => _scan_codeState();
}

class _scan_codeState extends State<scan_code> {
  String qrResult ='scanned data will be shown here';
  Future<void> scanQRCode() async {
    // Implement QR code scanning functionality here
    // This is a placeholder for the actual scanning logic
    setState(() {
      qrResult = 'Sample scanned data'; // Replace with actual scanned data
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
  
            SizedBox(height: 20),
            Text('$qrResult',style:TextStyle(color: Colors.black) ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:scanQRCode ,
              child: Text('Start Scanning'),
            ),
          ],
        )
      ),
    );
  }
}