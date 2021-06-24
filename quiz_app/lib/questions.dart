import 'package:flutter/material.dart';


class Questions extends StatelessWidget{
  var qus;
  Questions(this.qus);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
    return Container(
      child: Text(qus,style: TextStyle(fontSize: 30,)),
      padding: EdgeInsets.all(8), alignment: Alignment.center,color: Colors.teal,) ;
  }

}