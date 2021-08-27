import 'package:flutter/material.dart';
import 'package:pico/components/SearchBar/CategoryButton/CategoryButton.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final List<String> categories = [
    "Skateparks",
    "Escadarias",
    "Gaps",
    "Street",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Pesquise por um pico ou local",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(color: Colors.transparent)),
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.white,
                hoverColor: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          height: 40,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories
                  .map((e) => CategoryButton(
                        label: e,
                      ))
                  .toList()),
        )
      ],
    ));
  }
}
