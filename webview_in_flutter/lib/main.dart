import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_in_flutter/web_view_stack.dart';
import 'dart:async'; // Add this import
import 'navigation_controls.dart'; // Add this import
import 'menu.dart'; // Add this import

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  final controller =
      Completer<WebViewController>(); // Instantiate the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller)
        ],
      ),
      body: WebViewStack(
        controller: controller,
      ),
    );
  }
}
