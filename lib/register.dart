
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widget.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool see=true,see2=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: waveclipper(),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.5,
                color: Colors.purple,
                child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
                    )),
              ),
            ),

            //TextFormField
            customTextFormField(
                lable: "Full Name",
                type: TextInputType.text,
                icon: Icon(Icons.person,color: Colors.purple,)
            ),
            SizedBox(
              height: 10,
            ),
            customTextFormField(
                lable: "Phone",
                type: TextInputType.number,
                icon: Icon(Icons.phone,color: Colors.purple,)
            ),
            SizedBox(
              height: 10,
            ),
            customTextFormField(
                lable: "Email",
                type: TextInputType.text,
                icon: Icon(Icons.email,color: Colors.purple,)
            ),
            SizedBox(
              height: 10,
            ),
            customTextFormField(
              lable: "Password",
              type: TextInputType.text,
              icon: Icon(Icons.lock,color: Colors.purple,),
              see2: see,
              button: IconButton(onPressed: (){
                see=!see;
                setState(() {

                });
              },icon:Icon(!see?Icons.remove_red_eye:Icons.visibility_off_sharp,color: Colors.purple,)),
            ),
            SizedBox(
              height: 10,
            ),
            customTextFormField(
              lable: "Confirm Password",
              type: TextInputType.text,
              icon: Icon(Icons.lock,color: Colors.purple,),
              see2: see2,
              button: IconButton(onPressed: (){
                see2=!see2;
                setState(() {

                });
              },icon:Icon(!see2?Icons.remove_red_eye:Icons.visibility_off_sharp,color: Colors.purple,)),
            ),

            //Buttons
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:MaterialButton(
                    onPressed: (){},
                    child: Text("Register",style: TextStyle(color: Colors.white),),
                    minWidth: 20,
                  )
              ),

            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:MaterialButton(
                    onPressed: (){},
                    child: Text("Login",style: TextStyle(color: Colors.purple),),
                  )
              ),

            ),

          ],
        ),
      ),
    );
  }
}


class waveclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height -70);
    var firststart = Offset(size.width / 5, size.height - 70);
    var secondstart = Offset(size.width / 2.25, size.height - 45);
    path.quadraticBezierTo(
        firststart.dx, firststart.dy, secondstart.dx, secondstart.dy);
    var firstend = Offset(size.width - (size.width / 3.00), size.height-25);
    var secondend = Offset(size.width, size.height - 55);
    path.quadraticBezierTo(
        firstend.dx, firstend.dy, secondend.dx, secondend.dy);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
