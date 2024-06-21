import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Container(
              height: 120,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/images/food1.png",
                            // width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Veggie tomato mix",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                          Text("#1,900",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color:Color.fromARGB(255, 255, 74, 12), )),
                        ],
                      ),
                      Container(
                        // width: 20,
                        height: 26,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 74, 12),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.minimize,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Container(
              height: 120,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/images/food1.png",
                            // width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Veggie tomato mix",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                          Text("#1,900",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color:Color.fromARGB(255, 255, 74, 12), )),
                        ],
                      ),
                      Container(
                        // width: 20,
                        height: 26,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 74, 12),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.minimize,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Container(
              height: 120,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/images/food1.png",
                            // width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Veggie tomato mix",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                          Text("#1,900",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color:Color.fromARGB(255, 255, 74, 12), )),
                        ],
                      ),
                      Container(
                        // width: 20,
                        height: 26,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 74, 12),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.minimize,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 74, 12),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      
                      onPressed: (){
                        // _dialogBuilder(context);
                    }, child: const Text("Completed order",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)),
                  ),
          )
        ],
      ),
    );
  }
}
