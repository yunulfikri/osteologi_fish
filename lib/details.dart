import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
class DetailScreen extends StatefulWidget {
  final String judul, ikan, keterangan;
  const DetailScreen({super.key, required this.judul, required this.ikan, required this.keterangan});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.judul),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  width: double.infinity,
                  height: 350.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(234, 234, 234, 1.0),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]
                  ),
                  child: ModelViewer(
                    backgroundColor: Colors.grey,
                    cameraControls: true,
                    src: widget.ikan,
                  ),
                ),
                const Text("Keterangan", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0
                ),),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    padding: const EdgeInsets.all(15.0),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(234, 234, 234, 1.0),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(widget.keterangan, style: const TextStyle(
                          fontSize: 16.0,
                          wordSpacing: 1.5
                        ),textAlign: TextAlign.center,),
                      ],
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}
