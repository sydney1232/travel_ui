import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animations/FadeAnimation.dart';

class TravelPage extends StatefulWidget {
  final int page;
  final String description;
  final String title;
  final String image;

  const TravelPage(
      {super.key,
      required this.page,
      required this.description,
      required this.title,
      required this.image});

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(widget.image),
        fit: BoxFit.cover,
      )),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  FadeAnimation(
                    delay: 2,
                    child: Text(widget.page.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text("/4",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      delay: 1,
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      delay: 1.5,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "4.0",
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            "(2300)",
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    FadeAnimation(
                      delay: 2.5,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text(
                          widget.description,
                          style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            height: 1.9,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    FadeAnimation(
                      delay: 2.8,
                      child: Text(
                        "READ MORE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
