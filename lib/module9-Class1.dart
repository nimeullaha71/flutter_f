import 'package:flutter/material.dart';

class MoediaQuery extends StatelessWidget {
  const MoediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("THis is MQ"),
      ),
      body: Center(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Center(
              child: Text(
            "Respopnsive Design",
            style: TextStyle(
                fontSize: screenWidth * 0.1,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

class WrapExample extends StatelessWidget {
  //const WrapExample({super.key});

  final List<String> categories = [
    "fruits",
    "vegetable",
    "dairy",
    "Fish",
    "Bakery",
    "Snacks",
    "Apple"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WapExample"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: categories.map((Category) {
                  return Chip(
                    label: Text(Category),
                    backgroundColor: Colors.blueAccent.shade100,
                  );
                }).toList()),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                children: List.generate(
                    100,
                    (index) => Container(
                          child: Center(
                            child: Text(
                              "Item",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          color: Colors.blueAccent,
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class layoutBuilder extends StatelessWidget {
  const layoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("layoutBuilder"),
      ),
      body: LayoutBuilder(builder: (context,con)
      {
        if(con.maxWidth > 600) {
          return Center(
            child: Row(
              children: [
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          );
        }
        else{
          return Center(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),

          );
        }
      },),
    );
  }
}
