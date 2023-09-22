import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            alignment: Alignment.topLeft,
            height: height / 2.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://i.pinimg.com/564x/1c/b3/28/1cb3284b4a5412f5cb260376a416ab9a.jpg"),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        SizedBox(
                          width: width / 50,
                        ),
                        Column(
                          children: [
                            Text(
                              "aplanet",
                              style: TextStyle(
                                fontSize: 36,
                                color: Colors.white,
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
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 38,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 12,
                ),
                Column(
                  children: [
                    Text(
                      "Wellcome To",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 38,
                      ),
                    ),
                    Text(
                      "New Aplanet",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 38,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(
              top: 30,
              left: 25,
              bottom: 15,
            ),
            alignment: Alignment.topLeft,
            height: height / 1.6,
            decoration: const BoxDecoration(
              color: Color(0xFFC19E81),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Related For you",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              height: height / 4,
                              width: width / 2.5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://i.pinimg.com/236x/96/59/32/965932c6992d4bc7ec05349439348b75.jpg"),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              padding: EdgeInsets.only(
                                top: 10,
                              ),
                              height: height / 10,
                              width: width / 2.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Life with a tiger",
                                    style: TextStyle(
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Psychology Explains Why Baby Animal Photos are So Popular.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "Quick categories",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 22,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: height / 8,
                      width: width / 5.6,
                      margin: EdgeInsets.only(right: 20, top: 8),
                      child: Column(
                        children: [
                          Container(
                            height: height / 11.5,
                            width: width / 5.2,
                            decoration: BoxDecoration(
                                color: Color(0xFFEDD1B3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://i.pinimg.com/564x/45/08/6d/45086dcf67d1d15dea1c4aa031517493.jpg"))),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height / 40,
                            width: width / 5.2,
                            child: Text(
                              "BEAR",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height / 8,
                      width: width / 5.6,
                      margin: EdgeInsets.only(right: 20, top: 8),
                      child: Column(
                        children: [
                          Container(
                            height: height / 11.5,
                            width: width / 5.2,
                            decoration: BoxDecoration(
                                color: Color(0xFFEDD1B3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://i.pinimg.com/564x/5a/3c/49/5a3c499e52389d82013bcd81c8c50494.jpg"))),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height / 40,
                            width: width / 5.2,
                            child: Text(
                              "LION",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height / 8,
                      width: width / 5.6,
                      margin: EdgeInsets.only(right: 20, top: 8),
                      child: Column(
                        children: [
                          Container(
                            height: height / 11.5,
                            width: width / 5.2,
                            decoration: BoxDecoration(
                                color: Color(0xFFEDD1B3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://i.pinimg.com/564x/d0/91/c9/d091c94a3bdfcf209e258bafebeb8438.jpg"))),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height / 40,
                            width: width / 5.2,
                            child: Text(
                              "SNAKE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height / 8,
                      width: width / 5.6,
                      margin: EdgeInsets.only(right: 20, top: 8),
                      child: Column(
                        children: [
                          Container(
                            height: height / 11.5,
                            width: width / 5.2,
                            decoration: BoxDecoration(
                                color: Color(0xFFEDD1B3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://i.pinimg.com/564x/b6/b5/d7/b6b5d7eede819d73a00f9f6bcf14dc06.jpg"))),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height / 40,
                            width: width / 5.2,
                            child: Text(
                              "PETS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
