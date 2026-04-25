import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int Team1point =0;
  int Team2point=0;
  
  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        backgroundColor: Colors.black,
        appBar: AppBar(
          
          title: Text('Basket Ball App',style: TextStyle(color: Colors.black,),),
           backgroundColor:  Colors.amber
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
            
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      SizedBox(height: 65,),
                      Text(
                        'Team1',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold,color: Colors.amber),
                      ),
                       SizedBox(height: 20,),
                      Text(
                        '$Team1point',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold,color: Colors.amber),
                      ),
                       SizedBox(height: 26,),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                           Team1point ++; 
                          });
                          
                          print('add 1 point');
                        },
                        child: Text('Add 1 Point',style: TextStyle(color: Colors.amber),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                       
                        ),

                      ),
                       SizedBox(height: 25,),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                           Team1point +=2; 
                          });
                          print('add 2 point');
                        },
                        child: Text('Add 2 Point',style: TextStyle(color: Colors.amber),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                       
                        ),

                      ),
                       SizedBox(height: 25,),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                           Team1point +=3; 
                          });
                          print('add 3 point');
                        },
                        child: Text('Add 3 Point',style: TextStyle(color: Colors.amber),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                       
                        ),

                      ),
                    ],
                  ),
                 VerticalDivider(thickness: 1,width: 20,indent: 200,endIndent: 100,color: Colors.amber,),
                  Column(
                    children: [
                       SizedBox(height: 65,),
                      Text(
                        'Team2',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold,color: Colors.amber),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        '$Team2point',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold,color: Colors.amber),
                      ),
                      SizedBox(height: 26,),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                           Team2point +=1; 
                        },);},
                        child: Text('Add 1 Point',style: TextStyle(color: Colors.amber),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                       
                        ),

                      ),
                      SizedBox(height: 25,),
                      ElevatedButton(
                       onPressed: () {
                          setState(() {
                           Team2point +=2; 
                        },);},
                        child: Text('Add 2 Point',style: TextStyle(color: Colors.amber),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                       
                        ),

                      ),
                      SizedBox(height: 25,),
                      ElevatedButton(
                       onPressed: () {
                          setState(() {
                           Team2point +=3; 
                        },);},
                        child: Text('Add 3 Point',style: TextStyle(color: Colors.amber),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                       
                        ),

                      ),
                    ],
                  ),
                ],

              ),
          //  ElevatedButton(
          //               onPressed: () {},
          //               child: Text('Reset'),
          //               style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                       
          //               ),

          //             ),
            ],


          ),
        ),
      ),
    );
  }
}
