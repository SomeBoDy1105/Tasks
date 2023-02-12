import 'package:flutter/material.dart';
import 'package:flutter_task1/login_screen.dart';

class ContentView extends StatefulWidget {
  const ContentView({super.key});

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  List<String> images = [
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/icon.png",
  ];
  List<String> names = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4",
    "Product 5",
    "Product 6",
    "Product 7",
    "Product 8",
    "Product 9",
    "Product 10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>  const LoginScreen()),
            );
          },
        ),
        title: Row(
          children: const [
            Center(
              child: Text("Find Products",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              label: Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image.network(images[index]),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(names[index]),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
