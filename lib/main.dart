import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';




void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home(),
  )
);

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

final formkey=new GlobalKey<FormState>();
  
  void onSubmit()
  {
    final form=formkey.currentState;
    if(form.validate())
      print("Valid");
    else
      print("Invalid");
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Container(
        child: Column(
          children: <Widget>[



            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assests/bg.png'),
                  fit: BoxFit.fill
                )
              ),
              child: Stack(
                children: <Widget>[


                  Positioned(
                    left: 20,
                    width: 50,
                    height: 150,
                    child: 
                     Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assests/light-1.png')
                        )
                      ),
                    )),
                  



                  Positioned(
                    left: 80,
                    width: 90,
                    height: 150,
                    child:  Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assests/light-2.png')
                        )
                      ),
                    )),


                  
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child:  Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assests/clock.png')
                        )
                      ),
                    )),
                  

                  
                  Positioned(
                    child:  Container(
                      margin: EdgeInsets.only(top: 80),
                      child: Center(
                        child: Text("ScanDigi", style: TextStyle(color: Colors.white, fontSize: 40,fontFamily: 'times new roman' ,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )





                ],
              ),
            ),
            
            
            
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  
                  
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, .2),
                          blurRadius: 20.0,
                          offset: Offset(0, 10)
                        )
                                ]
                         ),
                    
                    child: Column(
                      children: <Widget>[
                       
                       
                       
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
                          ),
                          child: new Form(
                            key: formkey,


                            child: new Column(
                              children:<Widget>[    
                          
                          TextFormField(
                            validator: (value) => value.isEmpty?'Email can\'t be empty':null,
                            decoration: InputDecoration(
                              
                              hintText: "Email or Phone number",
                              hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                          ),

                          
                          TextFormField(
                            obscureText: true,
                              validator: (value) => value.isEmpty?'Password can\'t be empty':null,
                            
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey[400])
                              
                            ),
                          ),
                          ]
                            ),
                          
                          ),
                          
                        ),
                       
                       
                       
                                                  
                          


                      ],
                    ),

                  ),




                  SizedBox(height: 15,),
                    
                    SizedBox(
                        height: 45,
                    child:   RaisedButton(
                       shape: RoundedRectangleBorder(
                         borderRadius: new BorderRadius.circular(10)
                       ),
                       
                        color: Color.fromRGBO(143, 148, 251, 1),
                      child: Center(
                      
                      child: Text("Login", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ), 
                    onPressed: onSubmit,
                    ),
                    
                    ),
                  
                  
                  
                  SizedBox(height: 15,),
                
                Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),
                
                ],
              ),
            )





          ],
        ),
      ),
        ),
      ),
      
      
    );
  }
}
