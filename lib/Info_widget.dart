import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget{
  String label;
  String value;
  
  InfoWidget( { this.label, this.value});
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     height:60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
         border: Border.all(color: Colors.black54),
        color: Colors.brown[50]),
      //set background color for each row
       
      //set margin for each row
       margin: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
       //set padding for each row
     
            child:
            
             Row(
              // to align all children of the row to the cnter
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
                //set background color for each row
  // for inner text (lable)-> put it in container
     Container(
       width: 100,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(3),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.blue),
     color: Colors.white ), 

  child: Center(
    child:
 // to let text fitting its contentes
    FittedBox(
                fit: BoxFit.contain,
                child: Text(label,style: TextStyle(fontSize: 23),
              ),
     
  ),
),
     ),

   // for inner text (value)-> put it in container
          Container(
       width: 200,
      
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(3),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.blue),
     color: Colors.white ), 

  
    child:
 // to let text fitting its contentes
    FittedBox(
                fit: BoxFit.contain,
                child: Text(value,style: TextStyle(fontSize: 23),
              ),
  ),

     ),
  ], 
               ),
    );
                    
  
}
}