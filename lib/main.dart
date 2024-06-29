import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:osteologi_fish/details.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title, style: GoogleFonts.fjallaOne(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2
          ),),
          centerTitle: true,
        ),
        body: Column(children: [
          Text("Menu",
              style: GoogleFonts.fjallaOne(fontWeight: FontWeight.bold, fontSize: 20.0)),
          GFListTile(
            titleText: 'Ekologi Ikan Keureuling',
            icon: const Icon(Icons.read_more, color: Colors.blue,),
            onTap: () {
              Get.to(const SubMenuEkologi());
            },
          ),
          GFListTile(
            titleText: 'Osteologi Ikan Keureuling',
            icon: const Icon(Icons.read_more, color: Colors.blue,),
            onTap: () {
              Get.to(const SubMenuOsteologi());
            },
          ),
          const SizedBox(height: 50.0,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/uin.png"),
              ),
              SizedBox(width: 10.0),
              CircleAvatar(
                backgroundImage: AssetImage("assets/unsyiah.png"),
              ),
            ],
          ),
          const SizedBox(height: 15.0,),
          Center(
            child: Column(
              children: [
                Text(
                  "Kerja sama antara",
                  style: GoogleFonts.lato(
                      fontSize: 11.0
                  ),
                ),
                Text(
                  "UIN Ar Raniry dan Universitas Syiah Kuala",
                  style: GoogleFonts.lato(
                      fontSize: 11.0
                  ),
                ),
              ],
            )
          )
        ]));
  }
}


class SubMenuEkologi extends StatelessWidget {
  const SubMenuEkologi({super.key});
  static String ikanKeurelingDescription = '''
Secara ekologi, ikan keureling hidup di perairan berpasir dan berkerikil dengan tingkat kecerahan tinggi, kekeruhan rendah, dan arus lambat hingga deras (Haryono dan Subagja 2008). Habitat dan karakteristik lingkungannya berbeda-beda tergantung fase hidup. Ikan keureling juvenil biasanya hidup di kedalaman  meter dengan arus 75 m/s dan substrat pasir, sedangkan keureling dewasa hidup lebih dari satu meter dengan arus lebih tinggi dan substrat kerikil (Azhar et al. 2013).

Ikan keureling omnivora, dengan makanan utama cacing dan alga air tawar (Muchlisin et al. 2015). Eksploitasi berlebihan menyebabkan populasinya menurun drastis. Nelayan di Nagan Raya dan Aceh Barat mengaku sulit menemukan keureling besar dalam dekade terakhir (Muchlisin et al. 2015).

Menurut Singh (2007), populasi ikan genus Tor terancam akibat eksploitasi berlebihan, pencemaran air, dan gangguan ekologi. Ogale (2002) juga melaporkan penurunan populasi semah (genus Tor) di India akibat penangkapan berlebihan dan pencemaran lingkungan perairan. Ikan Keureling terdaftar sebagai biota terancam punah dalam Daftar Merah IUCN.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ekologi"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Flexible(
                    child: Text(ikanKeurelingDescription, style: GoogleFonts.lato(fontSize: 16.0),))
              ],
            )),
      ),
    );
  }
}


class SubMenuOsteologi extends StatelessWidget {
  const SubMenuOsteologi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Osteologi"),
      ),
      body: Column(
        children: [
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
        ],
      ),
    );
  }
}
