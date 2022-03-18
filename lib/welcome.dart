import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson7/welcomback.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  TextEditingController NameControllar =TextEditingController();
  TextEditingController EmailControllar =TextEditingController();
  TextEditingController PasswordControllar =TextEditingController();
  TextEditingController ConfirmPasswordControllar =TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Positioned(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/flower.jpg'),
                ),
              ),
              SizedBox(height: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Welcome',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color:Colors.lightBlueAccent,fontSize: 50 ),),
                  ),
                ],
              ),
              ListTile(
                title: Text('Name',style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent),
                ),
                subtitle: TextField(
                  controller: NameControllar,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)
                    )
                  ),
                ),
              ),
              SizedBox(height: 8,),
              ListTile(
                title: Text('Email',style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent),
                ),
                subtitle: TextField(
                  controller: EmailControllar ,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)
                      )
                  ),
                ),
              ),
              SizedBox(height: 8,),
              ListTile(
                title: Text('Password',style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent),
                ),
                subtitle: TextField(
                  controller: PasswordControllar,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)
                      )
                  ),
                ),
              ),
              SizedBox(height: 8,),
              ListTile(
                title: Text('Comfirm Password',style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent),
                ),
                subtitle: TextField(
                  controller: ConfirmPasswordControllar,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)
                      )
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Center(
                child: GestureDetector(
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Center(
                        child: Text('Sign up',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                      ),
                    ),
                    onTap:  (){
                      print('good');
                      if(EmailControllar.text.isEmpty||
                          NameControllar.text.isEmpty||PasswordControllar.text.isEmpty||
                      ConfirmPasswordControllar.text.isEmpty
                      ){
                        print("is empty");
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content:
                          Text("Invalid"),
                            backgroundColor: Colors.blue,
                            duration: Duration(seconds: 1),
                          ),
                        );
                      }else{

                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (_)=> Welcomeback())
                        );
                      };
                    }
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 100,
                      color: Colors.blueAccent,
                    ),
                    Text('  Or sign up using  ',
                      style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blueAccent ),),
                    Container(
                      height: 5,
                      width: 100,
                      color: Colors.blueAccent,
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/google.jpg.png'),
                          fit: BoxFit.cover
                        ),
                        border: Border.all(color: Colors.blueAccent)
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/facebook.jpg.png'),

                        ),

                          border: Border.all(color: Colors.blueAccent)
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/twitter.jpg.png')
                        ),
                          border: Border.all(color: Colors.blueAccent)
                      ),
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                    style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
                  ),
                  Text('Login',
                    style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                  ),



                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
