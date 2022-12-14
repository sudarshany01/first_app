import 'package:flutter/material.dart';
import 'package:six_app/utils/routes.dart';


class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name= "";
  bool changeButton = false;
  final _formkey =GlobalKey<FormState>();

  movetoHome(BuildContext context)async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(
          context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
                height: 300,

              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 20.0,

              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,horizontal: 32.0,
                  ),
              ),
              TextFormField(
                obscureText: true,

                decoration: InputDecoration(

                  hintText: "EnterUserName",
                  labelText: "UserName",
                ),
                validator: (value){
                  if (value != null && value.isEmpty){
                    return "Username  cannot be empty";

                  }
                  return null;
                },
                onChanged: (value){
                  name =value;
                  setState(() {
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "EnterPassward",
                    labelText: "Passward",
                ),
                validator: (value){
                  if(value != null && value.isEmpty){
                    return "Passward cannot be empty";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
             Material(
               color: Colors.deepPurple,

               borderRadius:
               BorderRadius.circular(changeButton? 50:8),

               child: InkWell(

                 onTap: ()=>movetoHome(context),
                 child: AnimatedContainer(
                   duration: const Duration(seconds: 1),
                   width: changeButton? 50:150,
                   height: 50,

                   alignment: Alignment.center,
                   child:changeButton
                   ? Icon(
                     Icons.done,
                     color: Colors.white,
                   )
                   : Text(
                     "Login",
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 18,
                     ),
                   ),
                 ),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
