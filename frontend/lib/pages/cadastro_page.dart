import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/utils/consts.dart';
import 'package:frontend/widgets/espaco_widget.dart';
import 'package:frontend/widgets/input_style_widget.dart';

// import 'package:gym_app/pages/sign_up/sign_up_service.dart';
// import 'package:gym_app/shared/constants/custom_colors.dart';
// import 'package:gym_app/shared/constants/preferences_keys.dart';
// import 'package:gym_app/shared/models/login_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController _nameInputController = TextEditingController();
  TextEditingController _mailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  TextEditingController _confirmInputController = TextEditingController();

  bool? _showPassword = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 50,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            portInvestColor_Blue1,
            portInvestColor_Blue,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _text(),

            // insere um espaco entre um elemento e outro de 10
            getWidgetEspacoParabaixo(10),
            _montaFormularioDadosCadastrais(context),

            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                //todo arrumar chamada
                // _doSignUp();
              },
              child: Text("Casdastrar"),
              color: portInvestColor_Blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _text() {
    return Text(
      "Cadastro",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _montaFormularioDadosCadastrais(context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _montaInputNomeCompleto(),
          _montaInputEmail(),
          getWidgetEspacoParabaixo(15),
          _montaInputSenha(),

          //---------------------------------------------------------------------------------------------------------
          //if ternario que avalia de deve montar o input de confirmacao de senha ou devolver um container vazio
          // a validacao eh feita com base se o usuario deseja ou nao ver a senha (regra de negocio aqui)
          //-----------------------------------------------------------------------------------------------------------
          (this._showPassword == false)
              ? _montaInputConfirmacaoSenha()
              : Container(),

          _montaCheckboxETextExibirSenha(),
        ],
      ),
    );
  }

  _montaInputNomeCompleto() {
    return TextFormField(
      //pega o que foi informado pelo usuario , que esta presente em validator "value" e chama o metodo
      // privado de validacao do widget passando esse valor ... usando arrow function
      validator: (value) => _validarInputNomeCompleto(value),

      controller: _nameInputController,
      autofocus: true,
      style: TextStyle(color: Colors.white),
      decoration: getWidgetInput(nomeExibicaoUser: "Nome completo"),
    );
  }

  _validarInputNomeCompleto(value) {
    if (value!.length < 10) {
      return "Digite um nome maior";
    }
    return null;
  }

  _estilizarInputNomeCompleto(){
    return InputDecoration(
      labelText: "Nome Completo",
      labelStyle: TextStyle(
        color: Colors.white,
      ),
      prefixIcon: Icon(
        Icons.person,
        color: Colors.white,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
    );
  }

  _montaInputEmail() {
    return TextFormField(
      validator: (value) {
        if (value!.length < 5) {
          return "Esse e-mail parece curto demais";
        } else if (!value.contains("@")) {
          return "Esse e-mail está meio estranho, não?";
        }
        return null;
      },
      controller: _mailInputController,
      autofocus: true,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: "E-mail",
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        prefixIcon: Icon(
          Icons.mail_outline,
          color: Colors.white,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _montaInputSenha() {
    return TextFormField(
      validator: (value) {
        if (value!.length < 6) {
          return "A senha deve ter pelo menos 6 caracteres";
        }
        return null;
      },
      controller: _passwordInputController,
      obscureText: (this._showPassword == true) ? false : true,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: "Senha",
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        prefixIcon: Icon(
          Icons.vpn_key_sharp,
          color: Colors.white,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _montaInputConfirmacaoSenha() {
    return TextFormField(
      validator: (value) {
        if (value != _passwordInputController.text) {
          return "As senhas devem ser iguais";
        }
        return null;
      },
      controller: _confirmInputController,
      obscureText: true,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: "Confirme a Senha",
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        prefixIcon: Icon(
          Icons.vpn_key_sharp,
          color: Colors.white,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _montaCheckboxETextExibirSenha() {
    return Row(
      children: [
        Checkbox(
          value: this._showPassword,
          onChanged: (newValue) {
            setState(() {
              this._showPassword = newValue;
            });
          },
          activeColor: Colors.blue,
        ),
        Text(
          "Mostrar senha",
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }

// void _doSignUp() {
//   if (_formKey.currentState.validate()) {
//     SignUpService().signUp(
//       _mailInputController.text,
//       _passwordInputController.text,
//     );
//   } else {
//     print("invalido");
//   }

// LoginModel newUser = LoginModel(
//   name: _nameInputController.text,
//   mail: _mailInputController.text,
//   password: _passwordInputController.text,
//   keepOn: true,
// );

// _saveUser(newUser);
// }

// // ignore: unused_element
// void _saveUser(LoginModel user) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString(
//     PreferencesKeys.activeUser,
//     json.encode(user.toJson()),
//   );
// }
}
