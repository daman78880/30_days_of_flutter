import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
    child:Column(
       children: [
         Image.asset("assets/images/login_image.png",fit: BoxFit.cover),
       SizedBox(
         height: 20.0
       ),
       Text("Testing process",style: TextStyle(
         fontSize: 16,
         fontWeight: FontWeight.bold
       ),
       ),
         SizedBox(
             height: 20.0
         ),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
         child: Column(children: [
           TextFormField(
             decoration: InputDecoration(hintText: "Enter user name",labelText: "User name"),
           )
           ,
           TextFormField(
             obscureText: true,
             decoration: InputDecoration(hintText: "Enter user password",labelText: "Password"),
           ),
           SizedBox(
             height: 20.0,
           ),
           ElevatedButton(onPressed: (){
              print("Cliked on button");
           }, child: Text("Login"),style:TextButton.styleFrom())
         ],
         ),
       )
       ],
    )
    );
  }
}
