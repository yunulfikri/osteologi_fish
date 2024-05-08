import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:osteologi_fish/details.dart';
import 'package:osteologi_fish/kepalaikan.dart';
import 'package:getwidget/getwidget.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(const GetMaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OSTEOLOGI IKAN KEURELING',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 123, 183)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'OSTEOLOGI IKAN KEURELING'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imageList = [
    "Ikan ini telah terdaftar sebagai biota yang semakin berkurang dan berada dalam daftar merah IUCN.",
    "Ikan keureling di wilayah aceh banyak dijumpai di sungai Tangse.",
    "Mayoritas penelitian keureling masih berkaitan dengan upaya ekologi dan domestikasi.",
    "Tulang rangka Ikan keureling terdiri dari skeleton axial dan skeleton appendicularis.",
    "Ikan ini juga memiliki dua pasang sungut pada rahang atas"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Column(children: [
          GFCarousel(
            autoPlay: true,
            items: imageList.map(
              (url) {
                return Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff00B4DB),
                            Color(0xff0083B0),
                          ],
                        )),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text("Fakta Ikan Keureling",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24.0,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Text(
                            url,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ));
              },
            ).toList(),
            onPageChanged: (index) {
              setState(() {
                index;
              });
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("Menu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
          GFListTile(
            avatar: const CircleAvatar(
              backgroundImage: AssetImage("assets/kepala.png")
            ),
            titleText: 'Kepala',
            subTitleText:
                'Memiliki karakteristik kepala yang unik...lihat selengkapnya',
            icon: const Icon(Icons.read_more, color: Colors.blue,),
            onTap: () {
              Get.to(const DetailScreen(
                  judul: "Kepala Ikan",
                  ikan: "assets/fish_kepala.glb",
                  keterangan:
                      "Ikan Keureling, atau Tor tambroides, memiliki karakteristik kepala yang unik. Secara morfologis, Ikan Keureling memiliki mulut terminal dengan lipatan kulit terjumbai yang dapat disembulkan pada bibir. Bentuk moncongnya cembung dan memiliki dua pasang sungut pada rahang atas. Bagian kepala atau ossa cranium merupakan bagian dari skeleton axial Ikan Keureling. Struktur ini, bersama dengan ossa verterbrae, ossa costae, dan urostylus vertebralis, membentuk kerangka utama ikan ini"));
            },
          ),
          GFListTile(
            avatar: const CircleAvatar(
                backgroundImage: AssetImage("assets/badan.png")
            ),
            titleText: 'Badan',
            subTitleText:
                'Memiliki struktur yang kompleks...lihat selengkapnya',
            icon: const Icon(Icons.read_more, color: Colors.blue,),
            onTap: () {
              Get.to(const DetailScreen(
                  judul: "Badan Ikan",
                  ikan: "assets/body_update.glb",
                  keterangan:
                      "Bagian badan Ikan Keureling, atau Tor tambroides, memiliki struktur yang kompleks dan terdiri dari skeleton axial dan skeleton appendicularis. Skeleton axial mencakup ossa cranium, ossa verterbrae, ossa costae, dan urostylus vertebralis. Sedangkan, skeleton appendicularis terdiri dari sepasang sirip dada (pinna pectoralis), sepasang sirip perut (pinna pelvis), sirip punggung (pinna dorsalis), sirip anal (pinna analis), dan sirip ekor (pinna caudalis). Struktur ini memberikan Ikan Keureling kemampuan untuk bergerak dan beradaptasi dengan lingkungan hidupnya"));
            },
          ),
          GFListTile(
            avatar: const CircleAvatar(
                backgroundImage: AssetImage("assets/ekor.png")
            ),
            titleText: 'Ekor',
            subTitleText:
                'Memiliki struktur yang penting untuk gerakan dan navigasi ikan...lihat selengkapnya',
            icon: const Icon(Icons.read_more, color: Colors.blue,),
            onTap: () {
              Get.to(const DetailScreen(
                  judul: "Ekor Ikan",
                  ikan: "assets/fish_ekor.glb",
                  keterangan:
                      "Bagian ekor Ikan Keureling, atau Tor tambroides, memiliki struktur yang penting untuk gerakan dan navigasi ikan. Bagian ini termasuk dalam skeleton appendicularis. Sirip ekor, atau pinna caudalis, terletak di ujung belakang ekor. Sirip ini berperan penting dalam memberikan dorongan dan kecepatan saat ikan berenang. Selain itu, sirip ekor juga membantu ikan dalam menjaga keseimbangan dan arah saat berenang. Struktur ini menunjukkan adaptasi yang luar biasa dari Ikan Keureling terhadap lingkungan hidupnya"));
            },
          ),
        ]));
  }
}
