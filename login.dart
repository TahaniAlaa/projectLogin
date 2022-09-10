import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_Login();
  
}
class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(child: Image.network('https://theuniqueacademy.co.in/assets/images/test.png'),),
        SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.all(10),
         child: Form(
          child: TextFormField(decoration:
          InputDecoration(

           prefixIcon: Icon(Icons.person_add),prefixIconColor: Colors.cyan,
          hintText: 'User Name :',
          border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),))
          ),

          ),
       ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                child: TextFormField(
                  obscureText: true,
                    decoration:InputDecoration(
                    prefixIcon: Icon(Icons.password_sharp),prefixIconColor: Colors.cyan,
                    hintText: 'Password :',
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),))
                ),

              ),
            ),
        Row(children: [
          Text('if your haven\'t account '),
          InkWell(child: Text('Clike her',
              style: TextStyle(color: Colors.cyan)),
              onTap: (){
            Navigator.of(context).pushNamed('signpage');
          }),
        ],),

        ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed('HomePage');
        }, child: Text('Login'),)
      ]),
    );
  }
  
}