import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pico/components/AppButton/AppButton.dart';
import 'package:pico/util/colors.dart';

class MainLayout extends StatefulWidget {
  final Widget child;
  final List<Widget> actions;
  MainLayout({this.child, this.actions});

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/logo/pico.svg"),
          onPressed: () {},
        ),
        leadingWidth: 80,
        actions: widget.actions,
      ),
      body: Column(children: [
        Expanded(
          child: widget.child,
        )
      ]),
    );
  }
}
