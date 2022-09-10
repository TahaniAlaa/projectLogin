import 'package:flutter/material.dart';

class Sign extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_sign();

}
class _sign extends State<Sign>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SingleChildScrollView(
    child:Column(mainAxisAlignment: MainAxisAlignment.center,
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
                child: TextFormField(decoration:
                InputDecoration(

                    prefixIcon: Icon(Icons.email),prefixIconColor: Colors.cyan,
                    hintText: 'Email :',
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
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),),)
                ),

              ),
            ),
            Row(children: [
              Text('if your have account '),
              InkWell(child: Text('Clike her',
                  style: TextStyle(color: Colors.cyan)),onTap: (){
                Navigator.of(context).pushNamed('loginpage');
              }),
            ],),

            ElevatedButton(onPressed: (){}, child: Text('Sign Account'),)
          ]),
    ));
  }

}