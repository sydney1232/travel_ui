import 'package:flutter/material.dart';
import 'package:sample_flutter/animations/FadeAnimation.dart';
import 'package:sample_flutter/widgets/TravelPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  late int _pageNum;

  @override
  void initState() {
    // TODO: implement initState

    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          TravelPage(
            page: 1,
            title: "Yosemite National Park",
            image: 'assets/images/one.jpg',
            description:
                "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.",
            rating: 4,
          ),
          TravelPage(
            page: 2,
            title: "Golden Gate Bridge",
            image: 'assets/images/two.jpg',
            description:
                " The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.",
            rating: 4,
          ),
          TravelPage(
            page: 3,
            title: "Sedona",
            image: 'assets/images/three.jpg',
            description:
                "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful.",
            rating: 5,
          ),
          TravelPage(
            page: 4,
            title: "Savannah",
            image: 'assets/images/four.jpg',
            description:
                "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.",
            rating: 4,
          ),
        ],
      ),
    );
  }
}
