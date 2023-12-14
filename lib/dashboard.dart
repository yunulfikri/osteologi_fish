import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(children: [
            BabylonJSViewer(
            src: 'assets/kepalaikan.glb',
        ),
          ]),
        ),
      )),
    );
  }
}