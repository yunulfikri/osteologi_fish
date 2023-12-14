import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KepalaIkanScreen extends StatefulWidget {
  const KepalaIkanScreen({super.key});

  @override
  State<KepalaIkanScreen> createState() => _KepalaIkanScreenState();
}

class _KepalaIkanScreenState extends State<KepalaIkanScreen> {
  WebViewController? _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kepala Ikan"),
      ),
      body: BabylonJSViewer(
        src: 'assets/kepalaikan.glb',
        
      ),
    );
  }
}
