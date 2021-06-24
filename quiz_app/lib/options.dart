

import 'package:flutter/material.dart';


class options extends StatelessWidget{
  var indx;
  final Function selecthandler;
  List opt;
  options(this.opt,this.indx,this.selecthandler);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(child: RaisedButton(onPressed: ()=>selecthandler(indx) ,
     child: Text(opt[indx],style: TextStyle(fontSize: 20),),
     padding: EdgeInsets.all(8),color: Colors.green,),width: double.infinity,
   height: 70,padding: EdgeInsets.all(8),);
   // return  RaisedButton(onPressed: null,child: Text(opt[indx],),);
  }
}