import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
class DetailScreen extends StatefulWidget {
  final String judul, ikan, keterangan;
  const DetailScreen({super.key, required this.judul, required this.ikan, required this.keterangan});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late String sourceIkan;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sourceIkan = widget.ikan;

  }
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
                  height: 600.0,
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
                    src: sourceIkan,
                    id: "3Dfish",
                    key: ValueKey(sourceIkan),

                  ),
                ),
                widget.judul == "Kepala Ikan"? Column(
                  children: [
                    GFListTile(
                      title: const Text("Rahang", style: TextStyle(color: Colors.white),),
                      color: Colors.black54,
                      icon: const Icon(Icons.add_circle, color: Colors.blue,),
                      onTap: () {
                        setState(() {
                          sourceIkan="assets/bagian1.glb";
                        });
                      },
                    ),
                    GFListTile(
                      title: const Text("Infraorbitale", style: TextStyle(color: Colors.white),),
                      color: Colors.black54,
                      icon: const Icon(Icons.add_circle, color: Colors.blue,),
                      onTap: (){
                        setState(() {
                          sourceIkan="assets/bagian2.glb";
                        });
                      },
                    ),
                    GFListTile(
                      title: const Text("Operculare", style: TextStyle(color: Colors.white),),
                      color: Colors.black54,
                      icon: const Icon(Icons.add_circle, color: Colors.blue,),
                      onTap: (){
                        setState(() {
                          sourceIkan="assets/bagian2.glb";
                        });
                      },
                    ),
                    GFListTile(
                      title: const Text("reset", style: TextStyle(color: Colors.black),),
                      color: Colors.white,
                      icon: const Icon(Icons.restart_alt, color: Colors.red,),
                      onTap: (){
                        setState(() {
                          sourceIkan="assets/body_update.glb";
                        });
                      },
                    ),
                  ],
                ):const SizedBox(height: 0.0,),
                widget.judul == "Badan Ikan"? Column(
                  children: [
                    GFListTile(
                      title: const Text("AV", style: TextStyle(color: Colors.white),),
                      color: Colors.black54,
                      icon: const Icon(Icons.add_circle, color: Colors.blue,),
                      onTap: () {
                        setState(() {
                          sourceIkan="assets/bagian1.glb";
                        });
                      },
                    ),
                    GFListTile(
                      title: const Text("Os Vertabrae Abdominalis", style: TextStyle(color: Colors.white),),
                      color: Colors.black54,
                      icon: const Icon(Icons.add_circle, color: Colors.blue,),
                      onTap: (){
                        setState(() {
                          sourceIkan="assets/bagian2.glb";
                        });
                      },
                    ),
                    GFListTile(
                      title: const Text("reset", style: TextStyle(color: Colors.black),),
                      color: Colors.white,
                      icon: const Icon(Icons.restart_alt, color: Colors.red,),
                      onTap: (){
                        setState(() {
                          sourceIkan="assets/body_update.glb";
                        });
                      },
                    ),
                  ],
                ):const SizedBox(height: 0.0,),
              ],
            ),
          ),
        )
    );
  }
}
