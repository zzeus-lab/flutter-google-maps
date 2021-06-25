import 'package:flutter/material.dart';
import 'package:pico/components/SearchBar/CategoryButton/CategoryButton.dart';
import 'package:pico/components/SearchBar/SearchBar.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF343332),
      body: Container(
        margin: EdgeInsets.only(top: 30.0),
        child: ListView(
          children: <Widget>[
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
                children: [
                  CategoryButton(),
                  CategoryButton(),
                  CategoryButton(),
                  CategoryButton(),
                  CategoryButton(),
                  CategoryButton(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[],
        ),
        // notchedShape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),
    );
  }
}
