import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class generate_code extends StatefulWidget {
  const generate_code({super.key});

  @override
  State<generate_code> createState() => _generate_codeState();
}

class _generate_codeState extends State<generate_code> {
  TextEditingController urlController = TextEditingController();
  String qrData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generate QR code')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (qrData.isNotEmpty) ...[
                QrImageView(
                  data: qrData,
                  size: 200.0,
                ),
                SizedBox(height: 20),
              ],
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter URL',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Enter URL',
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    qrData = urlController.text.trim();
                  });
                },
                child: Text('Generate QR code'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
