import 'package:flutter/material.dart';

import 'NavBar.dart';

void main() {
  runApp(MyShop());
}

class MyShop extends StatelessWidget {
  const MyShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: buildMyShop(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class buildMyShop extends StatefulWidget {
  const buildMyShop({Key? key}) : super(key: key);

  @override
  State<buildMyShop> createState() => _buildMyShopState();
}

class _buildMyShopState extends State<buildMyShop> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('MyShop'),
          actions: [
            IconCart(),
          ],
        ),
        body: SafeArea(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisExtent: 120,
              mainAxisSpacing: 10,
            ),
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            children: <Widget>[
              Container(
                color: Colors.black,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/ao2.jpg',
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                // decoration: BoxDecoration(
                //   // borderRadius: BorderRadius.all(Radius.circular(8)),
                // ),
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
