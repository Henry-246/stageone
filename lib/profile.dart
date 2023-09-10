import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://github.com/Henry-246'));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: const Text('My GitHub'),
        ),
        body: WebViewWidget(
          controller: controller,
        ));
  }
}
