import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'maindata.dart';
class KepalaIkanScreen extends StatefulWidget {
  const KepalaIkanScreen({super.key});

  @override
  State<KepalaIkanScreen> createState() => _KepalaIkanScreenState();
}

class _KepalaIkanScreenState extends State<KepalaIkanScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kepala Ikan"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                padding: const EdgeInsets.all(5.0),
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
                child: const ModelViewer(
                  backgroundColor: Colors.grey,
                  cameraControls: true,
                  src: 'assets/fish_ekor.glb',
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
                child: ListView.builder(
                  itemCount: datakepalaikan.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(datakepalaikan[index].keterangan),
                      leading: Icon(Icons.fiber_manual_record_sharp, color: Color(datakepalaikan[index].warna),),
                    );
                  },
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
