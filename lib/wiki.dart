import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wiki extends StatefulWidget {
  const Wiki({Key? key}) : super(key: key);

  @override
  _WikiState createState() => _WikiState();
}

class _WikiState extends State<Wiki> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed:(){},
            icon: Icon(Icons.search,color: Colors.blueAccent,)),
        actions: [
          IconButton(onPressed: (){},
              icon:Icon(Icons.menu,color: Colors.blueAccent,) )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Plant Wiki',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color:Colors.blueAccent,fontSize: 40 ),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:Text('Popular',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              color:Colors.white,fontSize: 15 ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child:Text('Herbs',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              color:Colors.blueAccent,fontSize: 15 ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child:Text('Trees',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              color:Colors.blueAccent,fontSize: 15 ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child:Text('Shrubs',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              color:Colors.blueAccent,fontSize: 15 ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child:Text('Climbers',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              color:Colors.blueAccent,fontSize: 15 ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Stack(
                  children: [
                    Container(
                      height: height*30,
                      width: width*100,
                      color: Colors.blueAccent,
                      child: Column(
                        children: [
                          Card(
                        elevation: 50,
                        shadowColor: Colors.black,
                        color: Colors.white,
                        child: SizedBox(
                          width: 350,
                          height: 80,
                          child:
                          ListTile(
                            trailing: Image.asset("images/herb.jpg"),
                            title: Text('Herbs',
                              style: TextStyle(color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('Dwarf Brazil',
                              style: TextStyle(color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),),
                          ),
                        )
                          ),
                          SizedBox(height: 15,),
                          Card(
                              elevation: 50,
                              shadowColor: Colors.black,
                              color: Colors.white,
                              child: SizedBox(
                                width: 350,
                                height: 80,
                                child:
                                ListTile(
                                  trailing: Image.asset("images/tree.jpg"),
                                  title: Text('Trees',
                                    style: TextStyle(color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('Dwarf Brazil',
                                    style: TextStyle(color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),),
                                ),
                              )
                          ),
                          SizedBox(height: 15,),
                          Card(
                              elevation: 50,
                              shadowColor: Colors.black,
                              color: Colors.white,
                              child: SizedBox(
                                width: 350,
                                height: 80,
                                child:
                                ListTile(
                                  trailing: Image.asset("images/yam.jpg"),
                                  title: Text('Climber',
                                    style: TextStyle(color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('Yam',
                                    style: TextStyle(color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),),
                                ),
                              )
                          ),
                          SizedBox(height: 20,),
                          Card(
                              elevation: 50,
                              shadowColor: Colors.black,
                              color: Colors.white,
                              child: SizedBox(
                                width: 350,
                                height: 80,
                                child:
                                ListTile(
                                  trailing: Image.asset("images/show.jpg"),
                                  title: Text('Shrubs',
                                    style: TextStyle(color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('Dwarf English Boxwood',
                                    style: TextStyle(color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),),
                                ),
                              )
                          ),
                          SizedBox(height: 20,),
                          Card(
                              elevation: 50,
                              shadowColor: Colors.black,
                              color: Colors.white,
                              child: SizedBox(
                                width: 350,
                                height: 80,
                                child:
                                ListTile(
                                  trailing: Image.asset("images/let.jpg"),
                                  title: Text('Creepers',
                                    style: TextStyle(color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('vine tiger green',
                                    style: TextStyle(color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),),
                                ),
                              )
                          ),
                        ],
                      ),
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
