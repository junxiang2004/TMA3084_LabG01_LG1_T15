import'package:flutter/material.dart';

void main(){
    runApp(const MyApp());
}

class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title:'Scaffold Example',
            theme:ThemeData(primarySwatch:Colors.yellow),
            home:MyHomePage(),
        );
    }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar:AppBar(
                title:Text('Restaurant Menu',
                style:TextStyle(
                    color:Colors.white,
                    fontSize:24.0,
                    fontFamily:'MomoSignature',
                ),),
                backgroundColor:Colors.deepOrange,
            ),

            body:
            Column(
                children:[
                    Card(
                        elevation:5,
                        color:Colors.orange,
                        shape:RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15),
                        ),
                        child:Padding(
                            padding:EdgeInsets.all(16.0),
                            child:Row(
                                children:[
                                    Image.asset('assets/Vegetable_pizza.png',width:100,height:100,),
                                    SizedBox(width:20),
                                    Expanded(
                                    child:Text(
                                        'Vegetable Pizza',
                                        style:TextStyle(fontSize:30.0,color:Colors.white,fontWeight:FontWeight.bold),
                                    ),
                                    ),
                                ],
                            ),
                        ),
                    ),
                    Card(
                        elevation:5,
                        color:Colors.orange,
                        shape:RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15),
                        ),
                        child:Padding(
                            padding:EdgeInsets.all(16.0),
                            child:Row(
                                children:[
                                    Image.asset('assets/Cheese_pizza.png',width:100,height:100,),
                                    SizedBox(width:20),
                                    Text(
                                        'Cheese Pizza',
                                        style:TextStyle(fontSize:30.0,color:Colors.white,fontWeight:FontWeight.bold),
                                    ),
                                ],
                            ),
                        ),
                    ),
                    Card(
                        elevation:5,
                        color:Colors.orange,
                        shape:RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15),
                        ),
                        child:Padding(
                            padding:EdgeInsets.all(16.0),
                            child:Row(
                                children:[
                                    Image.asset('assets/Chicken_pizza.png',width:100,height:100,),
                                    SizedBox(width:20),
                                    Text(
                                        'Chicken Pizza',
                                        style:TextStyle(fontSize:30.0,color:Colors.white,fontWeight:FontWeight.bold),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ],

            )

        );
    }
}



