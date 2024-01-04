import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osteologi_fish/kepalaikan.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(GetMaterialApp(home: MyApp(), debugShowCheckedModeBanner: false,));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () {
                Get.to(const KepalaIkanScreen());
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(255, 13, 143, 242)),
                child: const Center(
                    child: Text(
                  "Kepala Ikan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                Get.closeAllSnackbars();
                Get.snackbar("Info", "Coming soon..",
                        backgroundColor: const Color.fromARGB(255, 164, 35, 25),
                        colorText: Colors.white)
                    .show();
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(255, 13, 143, 242)),
                child: const Center(
                    child: Text(
                  "Badan Ikan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                Get.closeAllSnackbars();
                Get.snackbar("Info", "Coming soon..",
                        backgroundColor: const Color.fromARGB(255, 164, 35, 25),
                        colorText: Colors.white)
                    .show();
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(255, 13, 143, 242)),
                child: const Center(
                    child: Text(
                  "Ekor Ikan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                Get.closeAllSnackbars();
                Get.snackbar("Info", "Coming soon..",
                        backgroundColor: const Color.fromARGB(255, 164, 35, 25),
                        colorText: Colors.white)
                    .show();
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 19, 20, 20)),
                child: const Center(
                    child: Text(
                  "Pengaturan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white),
                )),
              ),
            ),
          ],
        ));
  }
}
