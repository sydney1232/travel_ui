import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

@override
  void initState() {
    // TODO: implement initState
  _pageController = PageController(
      initialPage: 0,
  )..addListener(_onScroll);
    super.initState();
  }

  void _onScroll(){
  print("sss");
  }

  Widget makePage({image}){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage(image),
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text("1", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                  Text("/4", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                ],

              ),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("USA", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
                ],
              ))
            ],

          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(image: 'assets/images/one.jpg'),
          makePage(image: 'assets/images/two.jpg'),
          makePage(image: 'assets/images/three.jpg'),
          makePage(image: 'assets/images/four.jpg'),
        ],
      ),
    );
  }
}
