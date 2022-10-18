import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static String id = 'register';
  static const routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              //evitar linea amarilla, ajustar a pantalla
              child: Image.asset(
                'images/MalwareM.png',
                height: 300.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            _userTextField(),
            SizedBox(
              height: 15,
            ),
            _mailTextField(),
            SizedBox(
              height: 15,
            ),
            _passworddTextField(),
            SizedBox(
              height: 20.0,
            ),
            _bottonLogin(),
            // _createTextField(),
            // SizedBox(
            //   height: 15,
            // ),
          ],
        ),
      ),
    ));
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              icon: Icon(Icons.person_outline),
              hintText: 'nombre',
              labelText: 'Nombre'),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _mailTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'ejemplo@dominio.com',
              labelText: 'Correo electronico'),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passworddTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
              icon: Icon(Icons.lock),
              hintText: 'contraseña',
              labelText: 'Contraseña'),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
          // elevation: 10.0,
          // colors: Color.fromARGB(255, 14, 35, 113),
          onPressed: () {});
    });
  }

  // Widget _createTextField() {
  //   return Container(
  //       padding: EdgeInsets.only(top: 24),
  //       child: Text(
  //         'Crear tu cuenta',
  //         textAlign: TextAlign.left,
  //         style: TextStyle(fontWeight: FontWeight.bold),
  //       ));
  // }
}
