import 'package:flutter/material.dart';

class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFC19E81),
        centerTitle: false,
        title: const Column(
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
        actions: [
          IconButton(
            splashRadius: 30,
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 38,
            ),
          ),
          SizedBox(
            width: width / 20,
          ),
        ],
      ),
      backgroundColor: Color(0xFFC19E81),
      body: Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('detial_page');
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
            Container(
              padding: EdgeInsets.only(
                left: 30,
                top: 10,
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Choose a plan",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 5,
                            right: 30,
                          ),
                          height: height / 7,
                          width: width / 1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              opacity: 0.60,
                              image: NetworkImage(
                                  "https://i.pinimg.com/736x/d9/61/4a/d9614ac7021aa6c1024073b6fbe4d12d.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 18,
                    ),
                    Text(
                      "Last step to enjoy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
