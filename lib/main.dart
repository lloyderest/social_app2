import "package:flutter/material.dart";
import 'feed_item.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 207, 207),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 88, 94),
        title: Text("UI Clone"),
      ),
      body: Column(children: [
        //Section 1. Stories
        Container(
          color: Colors.teal,
          height: 250,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (int i = 0; i < 5; i++) ...[
                SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 12, 88, 94),
                  ),
                  height: 200,
                  width: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (i == 0)
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.yellow,
                                ),
                                height: 10,
                                width: 10,
                              ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            ]),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    "Posts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FeedItem(
                  name: "Cat Meowton",
                  content:
                      " Meow Meow, I am a cat. ",
                  icon:
                      "https://st2.depositphotos.com/45846082/48097/i/450/depositphotos_480977262-stock-photo-serious-funny-white-fold-cat.jpg",
                ),
                FeedItem(
                  name: "Bogart Nolastname",
                  content:
                      " Cat is meow. Cat is meow meow meow meow. Man is wake to Cat on face. Cat is want food. Man is get food for Cat.",
                  icon:
                      "https://i.pinimg.com/originals/59/54/b4/5954b408c66525ad932faa693a647e3f.jpg",
                ),
                FeedItem(
                  name: "Small Cat",
                  content:
                      " Cat is put food in water. Man is move water away from food. Cat is still put food in water.",
                  icon:
                      "https://i.ytimg.com/vi/Zr-qM5Vrd0g/maxresdefault.jpg",
                ),
                
              ],
            ),
          ),
        ),
      ]),
    );
  }
}