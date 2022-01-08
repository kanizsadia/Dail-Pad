import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orange,
         title: Center(child: Text("Dail Pad",
         style: TextStyle(
           color: Colors.white,
         ),
         ),),
       ),
        
        body: Center(
          child: Container(
            color: Colors.black,
            width: 400,

            child: SafeArea(
              
                child:
                DialPad(
                    enableDtmf: true,
                    outputMask: "000 000-0000",
                    backspaceButtonIconColor: Colors.red,
                    makeCall: (number){
                      print(number);
                    }
                )
            ),
          ),
        ),
    ),
    );
  }
}