import 'package:flutter/material.dart';

import '../addToCard/card_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CardScreen()));
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Delicious",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "food for you",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCategoryItem(context, 'Foods', true),
              _buildCategoryItem(context, 'Drinks', false),
              _buildCategoryItem(context, 'Snacks', false),
              _buildCategoryItem(context, 'Sauce', false),
            ],
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "More...",
                style: TextStyle(color: Color.fromARGB(255, 250, 74, 12)),
              ),
            ),
          ),
          const SizedBox(height: 50),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 10,),
                _buildCard('assets/images/food1.png', 'Veggie', 'tomato mix', 'N1,900'),
                const SizedBox(width: 10,),
                _buildCard('assets/images/food2.png', 'Veggie', 'tomato mix', 'N1,900'),
                const SizedBox(width: 10,),
                _buildCard('assets/images/food3.png', 'Veggie', 'tomato mix', 'N1,900'),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.orange),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.replay_outlined, color: Colors.grey),
            label: '',
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 250, 74, 12),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 150),
                children: [
                  ListTile(
                    leading: const Icon(Icons.person_3_rounded, color: Colors.white),
                    title: const Text('Profile ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.shopping_bag, color: Colors.white),
                    title: const Text('Order ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.workspace_premium, color: Colors.white),
                    title: const Text('Offer and promo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.document_scanner, color: Colors.white),
                    title: const Text('Privacy policy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.security, color: Colors.white),
                    title: const Text('Security ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sign Out", style: TextStyle(color: Colors.white,fontSize: 18)),
                  SizedBox(width: 10,),
                  Icon(Icons.logout_outlined, color: Colors.white,size: 32,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String title, bool isSelected) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        if (isSelected)
          Container(
            margin: const EdgeInsets.only(top: 4),
            height: 2,
            width: 30,
            color: const Color.fromARGB(255, 250, 74, 12),
          ),
      ],
    );
  }

  Widget _buildCard(String imagePath, String title1, String title2, String price) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Card(
          color: Colors.white,
          child: SizedBox(
            width: 160,
            height: 200,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Veggie",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "tomato mix",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    "N1,900",
                    style: TextStyle(color: Color.fromARGB(255, 250, 74, 12), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -30,
          left: 0,
          right: 0,
          child: SizedBox(
            width: 200,
            height: 200,
            child: OverflowBox(
              maxHeight: 230,
              alignment: Alignment.topCenter,
              child: Image.asset(
                imagePath,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
