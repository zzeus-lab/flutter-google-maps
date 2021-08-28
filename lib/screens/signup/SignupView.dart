import 'package:flutter/material.dart';
import 'package:pico/components/AppButton/AppButton.dart';
import 'package:pico/components/MainLayout/MainLayout.dart';
import 'package:pico/util/colors.dart';

class SignupView extends StatefulWidget {
  SignupView({Key key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Já possui uma \nconta",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(width: 20),
            AppButton(label: "Entrar"),
            SizedBox(width: 20)
          ],
        )
      ],
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Crie sua conta.",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
              ),
            ),
            AppButton(label: "Criar sua conta com Google"),
            AppButton(label: "Criar sua conta com Facebook"),
            Text(
              "Ou crie sua conta usando um email.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
