import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget {
  final List<IconData> navBarIcons;

  NewNavBar(this.navBarIcons);

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: botaoFoiTocado,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.black,
      items: List.generate(navBarIcons.length, (index) {
        return BottomNavigationBarItem(
          icon: Icon(navBarIcons[index]),
          label: "Início",
        );
      }),
    );
  }
}

class MyBodyContent extends StatelessWidget {
  const MyBodyContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Text(
            "LOGITECH -> MOUSE G203 LIGHTSYNC R\$137.50",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Expanded(
          child: Text(
            "MACHENIKE  - TECLADO K500 R\$194,83",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Expanded(
          child: Text(
            "LOGITECH - HEADSET G435 LIGHTSPEED R\$375.53",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp();

  final navBarIcons = [
    Icons.house,
    Icons.keyboard,
    Icons.mouse,
    Icons.headset,
    Icons.drag_handle,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "Periféricos",
              style: TextStyle(color: Colors.yellowAccent),
            ),
            alignment: Alignment.center,
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: MyBodyContent(),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Lista dos meus periféricos acima (recomendo).",
                    style: TextStyle(color: Colors.yellowAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: NewNavBar(navBarIcons),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
