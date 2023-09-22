import 'package:flutter/material.dart';
import 'package:practicalexam/utils/globle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: allAnimal.map((e) {
          return Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("${e['thumbnail']}"),
                )),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                height: height / 1.06,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "aplanet",
                              style: TextStyle(
                                fontSize: 36,
                                color: Colors.brown,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            const Text(
                              "we lovw the planet",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 38,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ready To",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 42,
                          ),
                        ),
                        Text(
                          "Watch ?",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 42,
                          ),
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        Text(
                          "Aplanet is a global leader in real life entertainment, serving a passionate audience o superfans around the world with content that inspires, informs and entertains",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          height: height / 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Start Enjoying",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).pushNamed(
                                    'price_page',
                                    arguments: e,
                                  );
                                });
                              },
                              child: Container(
                                height: height / 10,
                                width: width / 3.9,
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(200),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height / 15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
