import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool Droop = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Visibility(
            visible: Droop == false,
            child: Draggable(
              data: 'lion',
              childWhenDragging: Container(
                height: 200,
                width: 200,
              ),
              feedback: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("Asset/images/images1.jpeg"),
                  ),
                ),
              ),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("Asset/images/images1.jpeg"),
                  ),
                ),
              ),
            ),
          ),
          DragTarget(
            onWillAccept: (val) {
              return val == 'lion';
            },
            onAccept: (val) {
              setState(() {
                Droop = true;
              });
            },
            builder: (BuildContext ctx, List<Object?> accepted,
                List<dynamic> rejectedData) {
              return Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: (Droop == true)
                        ? AssetImage("Asset/images/imageslioncage.jpeg")
                        : AssetImage("Asset/images/imagescage.jpeg"),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
