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
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Draggable(
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
                  Draggable(
                    data: 'Elephant',
                    childWhenDragging: Container(
                      height: 200,
                      width: 200,
                    ),
                    feedback: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("Asset/images/images2.jpeg"),
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
                  Draggable(
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
                  Draggable(
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
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
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
                DragTarget(
                  onWillAccept: (val) {
                    return val == 'Elephant';
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
          ),
        ],
      ),
    );
  }
}
