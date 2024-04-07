// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/services.dart';

class Qrcode extends StatefulWidget {
  final String qrData;
  final double width;
  final double height;

  const Qrcode({
    Key? key,
    required this.qrData,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  _QrcodeState createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: widget.qrData));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('QR code data copied to clipboard')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QrImageView(
            data: widget.qrData,
            version: QrVersions.auto,
            size: 200.0,
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: _copyToClipboard,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Tap to Copy QR Code Data: ${widget.qrData}',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
