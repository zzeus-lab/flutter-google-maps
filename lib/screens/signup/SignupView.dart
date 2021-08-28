import 'package:flutter/material.dart';
import 'package:pico/components/AppButton/AppButton.dart';
import 'package:pico/components/AppField/AppField.dart';
import 'package:pico/components/MainLayout/MainLayout.dart';
import 'package:pico/util/colors.dart';

class SignupView extends StatefulWidget {
  SignupView({Key key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool acceptedTerms = false;

  Widget label(String label) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        label,
        style: TextStyle(
          color: kLabelColor,
          fontWeight: FontWeight.w700,
          fontSize: 14.0,
        ),
      ),
    );
  }

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
            SizedBox(width: 20),
          ],
        )
      ],
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: SingleChildScrollView(
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
              SizedBox(height: 20.0),
              AppButton(label: "Criar sua conta com Google"),
              SizedBox(height: 16.0),
              AppButton(label: "Criar sua conta com Facebook"),
              SizedBox(height: 20.0),
              Text(
                "Ou crie sua conta usando um email.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 4.0),
              label("Nome de usuário:"),
              AppField(hint: "Insira o nome que deseja utilizar"),
              label("Seu email:"),
              AppField(hint: "Insira seu email"),
              label("Sua senha:"),
              AppField(hint: "Insira a senha que deseja criar"),
              Row(
                children: [
                  Checkbox(
                    value: acceptedTerms,
                    onChanged: (val) {
                      setState(() {
                        acceptedTerms = val;
                      });
                    },
                  ),
                  Text(
                      "Estou ciente dos Termos de Uso e\nPolíticas de privacidade do Onde é o pico")
                ],
              ),
              AppButton(label: "Continuar")
            ],
          ),
        ),
      ),
    );
  }
}
