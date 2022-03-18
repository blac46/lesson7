import 'package:flutter/material.dart';
import 'package:lesson7/welcome.dart';

class Plant extends StatefulWidget {
  const Plant({Key? key}) : super(key: key);

  @override
  _PlantState createState() => _PlantState();
}

class _PlantState extends State<Plant> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/flower.jpg'),
              fit: BoxFit.cover)
            ),
          ),
          Stack(
            children: [
              Container(
                height: height*100,
                width: width*100,
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(100),
                      child: Text('Plant Wiki',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
                      ),
                    ),
                    Text('What do you know about your plant you use',
                      style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.white),
                    ),
                    SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)
                          ),
                          child: Center(child: Text('Get Started...',style: TextStyle(color: Colors.white,
                          fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
                        onTap: (){
                          print('good');
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (_)=> Welcome ())
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
