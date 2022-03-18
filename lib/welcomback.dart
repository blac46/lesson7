import 'package:flutter/material.dart';
import 'package:lesson7/wiki.dart';

class Welcomeback extends StatefulWidget {
  const Welcomeback({Key? key}) : super(key: key);

  @override
  _WelcomebackState createState() => _WelcomebackState();
}

class _WelcomebackState extends State<Welcomeback> {
  @override
  TextEditingController EmailControllar =TextEditingController();
  TextEditingController PasswordControllar =TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blue,
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
                    child: Text('Welcome Back!',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color:Colors.lightBlueAccent,fontSize: 50 ),),
                  ),
                ],
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


              SizedBox(height: 20,),
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
                        child: Text('Login',
                          style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                    onTap:  (){
                      print('good');
                      if(EmailControllar.text.isEmpty||
                          PasswordControllar.text.isEmpty
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
                                builder: (_)=> Wiki())
                        );
                      };
                    }
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 100,
                      color: Colors.blueAccent,
                    ),
                    Text('  Or login up using  ',
                      style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blueAccent ),),
                    Container(
                      height: 5,
                      width: 100,
                      color: Colors.blueAccent,
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
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

                        ),
                          border: Border.all(color: Colors.blueAccent)
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/facebook.jpg.png')
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
              SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgert Password?',
                    style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
                  ),
                  Text('Yes/No',
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

