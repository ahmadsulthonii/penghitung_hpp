import 'package:flutter/material.dart';
import 'package:penghitung_hpp/presentation/home_page/home_page_controller.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  Widget build(BuildContext context, HomePageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(title: const Text(""), actions: const []),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.calculate),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Penghitung HPP',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Hitung modal & laba usaha'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          // Memberikan label di bagian atas
                          labelText: 'Nama produk/barang',
                          // Memberikan placeholder/hint
                          hintText: 'Mis : Kue Kering, Kaos dll',
                          // Membuat border kotak di sekeliling TextField
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // Border saat TextField ditekan/aktif (Fokus)
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                          ),
                          // Border saat TextField tidak aktif
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomePageView> createState() => HomePageController();
}
