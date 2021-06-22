//import 'package:frontend/controllers/pages_controller.dart'; // import im portante depois avaliar
import 'package:flutter/gestures.dart';
import 'package:frontend/pages/cadastro_page.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/utils/app_colors_gradients.dart';
import 'package:frontend/utils/app_images.dart';
import 'package:frontend/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:frontend/widgets/linha_divisoria_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: portInvestColor_Blue,
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _imageTelaLogin(context),
              _montaCampoEmail(context),
              _montaCampoSenha(context),
              _montaAreasExibirSenhaEEsqueceuSenha(context),

              Container(
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: _montaBotaoLogin(context),
              ),
              getLinhaDivisoria(),
              Text(
                "Ainda não tem uma conta?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11),
              ),
              //---------Inicio
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CadastroPage(),
                      ),
                    );
                  },
                  child: Text("Cadastre-se"),
                  color: portInvestColor_write,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              //---------fim
            ],
          ),
        ),
      ),
    );
  }

  _imageTelaLogin(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Image.asset(
        AppImages.logo, // <- Add logo PortInvest a tela de login
        //width: MediaQuery.of(context).size.width / 2,
        width: 10,
        height: 40,
      ),
    );
  }

  _montaCampoEmail(context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.mail_outline,
            color: Colors.white,
          ),
          labelText: "E-mail",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white38, width: 2),
          ),
        ),
      ),
    );
  }

  _montaCampoSenha(context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        obscureText: !_showPassword!,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.white,
          ),
          labelText: "Senha",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white38, width: 2),
          ),
        ),
      ),
    );
  }

  _montaAreasExibirSenhaEEsqueceuSenha(context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          _montaCheckBox(context),
          _montaBotaoExibirsenha(context),
          Spacer(),
          _montaBotaoEsqueceuSenha(context),
        ],
      ),
    );
  }

  _montaCheckBox(context) {
    return Checkbox(
      value: _showPassword,
      onChanged: (newValue) {
        setState(() {
          _showPassword = !_showPassword!;
        });
      },
      activeColor: Colors.blue,
    );
  }

  _montaBotaoExibirsenha(context) {
    return TextButton(
      onPressed: () {
        setState(() {
          _showPassword = !_showPassword!;
        });
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      ),
      child: Text(
        'Exibir senha',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  _montaBotaoEsqueceuSenha(context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Esqueceu sua senha?',
        style: TextStyle(
          color: portInvestColor_write1,
        ),
      ),
    );
  }

  _montaBotaoLogin(context) {
    return ElevatedButton(
      onPressed: () => _trataEventoButtonLoginOnPressed(context),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed))
              return portInvestColor_Blue1;
            return portInvestColor_Blue1;
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Text(
          'Entrar',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _trataEventoButtonLoginOnPressed(context) {
    //------------------------------------------------------
    // #Inicio -> acao que faz ir para outra tela (comentada)
    //-------------------------------------------------------

    // testes
    print('clicou pra logar: ${context.toString()}');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );

    //------------------------------------------------------
    // #fim -> acao que faz ir para outra tela (comentada)
    //-------------------------------------------------------
  }
}
