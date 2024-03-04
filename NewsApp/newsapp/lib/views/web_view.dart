import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.red,
        ),

        title: const Text("Details",style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: WebViewPlus(
        initialUrl: url,
      ),
    );
  }
}