import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 6 * height,),
                  Image.asset(
                    "assets/login.png",
                    width: double.infinity,
                    height: 20 * height,
                  ),
                  SizedBox(height: 4 * height,),
                  Container(
                    child: Text("User Login", style: TextStyle(color: Colors.black87, fontSize: 32, fontWeight: FontWeight.w700, fontFamily: "Fonarto"),),
                  ),
                  SizedBox(
                    height: 5 * height,
                  ),
                  Container(
                      height: 59.9 * height,
                      width: 85.3 * width1,
                      padding: EdgeInsets.all(5),

                      child: Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              //  Email Text Field
                              TextFormField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(50))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(50))
                                    ),
                                    prefixIcon: Icon(Icons.mail),
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16,
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[300]
                                ),
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value){
                                  if (value.isEmpty || !value.contains('@'))
                                  {
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
                                onSaved: (value){

                                },
                              ),
                              SizedBox(height: 3 * height,),

                              //  Password Field Code Starts Here

                              TextFormField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(50))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(50))
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16,
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[300]
                                ),
                                obscureText: true,
                                controller: _passwordController,
                                validator: (value){
                                  if(value.isEmpty || value.length <= 5){
                                    return 'Invalid Password';
                                  }
                                  return null;
                                },
                                onSaved: (value){

                                },
                              ),

                              //  Login Button Code Starts From Here
                              SizedBox(
                                height: 4.4 * height,
                              ),

                              Container(
                                height: 8.8 * height,
                                width: 85.3 * width1,
                                child: FlatButton(
                                  child: Text("LOGIN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: "Montserrat-Bold"),),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  onPressed: ()async{
                                    if(_formKey.currentState.validate()){

                                    }


                                  },
                                  color: Colors.black,
                                ),
                              ),
                              //  Login Button Code Ends Here


                              SizedBox(
                                height: 2.5 * height,
                              ),
                              InkWell(
                                child: Text("Forget Password", style: TextStyle(color: Colors.black87, fontSize: 20, fontFamily: "Montserrat-Regular"),),
                                onTap: (){


                                },
                              ),
                              SizedBox(
                                height: 2.5 * height,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Don't have an account? ",style: TextStyle(color: Colors.black87, fontSize: 18, fontFamily: "Montserrat-Regular"),),
                                    InkWell(
                                      child: Text("Signup", style: TextStyle(color: Colors.black87, fontSize: 20, fontFamily: "Montserrat-Regular", fontWeight: FontWeight.bold),),
                                      onTap: (){


                                      },
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5 * height,
                              ),

                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("I'm Admin, ",style: TextStyle(color: Colors.black87, fontSize: 18, fontFamily: "Montserrat-Regular"),),
                                    InkWell(
                                      child: Text(" Login", style: TextStyle(color: Colors.black87, fontSize: 20, fontFamily: "Montserrat-Regular", fontWeight: FontWeight.bold),),
                                      onTap: (){


                                      },
                                    ),

                                  ],
                                ),
                              ),


                              SizedBox(
                                height : 2 * height,
                              ),





                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
