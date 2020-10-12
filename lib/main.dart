import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Ball(),
      ),
    );
   
    class Ball extends StatefulWidget {
      @override
      _BallState createState() => _BallState();
    }
    
    class _BallState extends State<Ball> {
      int ballchange = 5;
      void shuvo()
      {
        setState(() {
          ballchange=Random().nextInt(5)+1;
        });
      }
      
       @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.blue,
          
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Ask Me Anything'),
            
          ),
          body: Center(
            child: Container(
              child:FlatButton(
                onPressed: (){
                  setState(() {

                    shuvo();
                  });
                },
                
                
                child: Image.asset('images/ball$ballchange.png')),
             
                  
            ),
          ),
        );
          
        
      }
    }
