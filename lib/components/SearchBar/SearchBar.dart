import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              labelText: "Pesquise por um pouco ou local",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(color: Colors.transparent)),
              filled: true,
              fillColor: Colors.white,
              focusColor: Colors.white,
              hoverColor: Colors.white),
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
            ),
            height: 50.0,
            child: Row(
              children: [Icon(Icons.ac_unit), Text("skateparks")],
            )),
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     GestureDetector(
        //       child: Container(
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(50.0),
        //             color: Colors.white,
        //           ),
        //           height: 50.0,
        //           child: Row(
        //             children: [Icon(Icons.ac_unit), Text("skateparks")],
        //           )),
        //     )
        //   ],
        // )
      ],
    );
  }
}
