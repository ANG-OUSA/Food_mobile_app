import 'package:flutter/material.dart';
import 'package:flutter_project/src/views/home_screen.dart';

class searchScreen extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {
      "image": "assets/images/veggie_tomato_mix.png",
      "name": "Veggie tomato mix",
      "price": "៛១៩,០០០"
    },
    {
      "image": "assets/images/egg_cucumber.png",
      "name": "Egg and cucumber",
      "price": "៛១៥,០០០"
    },
    {
      "image": "assets/images/veggie_tomato_mix.png",
      "name": "Fried chicken m.",
      "price": "៛២៦,០០០"
    },
    {
      "image": "assets/images/veggie_tomato_mix.png",
      "name": "Moi-moi and ekpa.",
      "price": "៛១៧,៥០០"
    },
    {
      "image": "assets/images/veggie_tomato_mix.png",
      "name": "Fried chicken m.",
      "price": "៛២៦,០០០"
    },
    {
      "image": "assets/images/veggie_tomato_mix.png",
      "name": "Moi-moi and ekpa.",
      "price": "៛១៧,៥០០"
    },
    {
      "image": "assets/images/veggie_tomato_mix.png",
      "name": "Fried chicken m.",
      "price": "៛២៦,០០០"
    },
    {
      "image": "assets/images/veggie_tomato_mix.png",
      "name": "Moi-moi and ekpa.",
      "price": "៛១៧,៥០០"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spicy chieckns'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Found 6 results',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.75,
                ),
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  return FoodCard(
                    image: foodItems[index]["image"]!,
                    name: foodItems[index]["name"]!,
                    price: foodItems[index]["price"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  FoodCard({required this.image, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(100), bottom: Radius.circular(100)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              // Positioned(
              //   top: -30,
              //   left: 0,
              //   right: 0,
              //   child: SizedBox(
              //     width: 200,
              //     height: 200,
              //     child: OverflowBox(
              //       maxHeight: 230,
              //       alignment: Alignment.topCenter,
              //       child: Image.asset(
              //         imagePath,
              //         width: 200,
              //         height: 200,
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  //alignment: Alignment.topCenter,
                  //mainAxisAlignment: MainAxisAlignment.end,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
