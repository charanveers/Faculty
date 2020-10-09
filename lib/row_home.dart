
import 'package:faculty/widgets/fileWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowHome extends StatefulWidget{
  @override
  _RowHomeState createState() => _RowHomeState();
}
class _RowHomeState extends State<RowHome> {
  WidgetsFile widgetsFile=new WidgetsFile();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.grey[200])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
           Row(
             children: [
               Container(
                   width: 60.0,
                   height: 60.0,
                   decoration: new BoxDecoration(
                       color: Colors.white,
                       boxShadow: [BoxShadow(
                         color: Colors.grey[100],
                         blurRadius: 15.0,
                       ),],
                       border: Border.all(color: Colors.white,width: 2),
                       shape: BoxShape.circle,
                       image: new DecorationImage(
                           fit: BoxFit.fill,
                           image: new NetworkImage(
                               "https://i.imgur.com/BoN9kdC.png")
                       )
                   )),
               Expanded(child: Container(
                 alignment: Alignment.topLeft,
                 margin: EdgeInsets.symmetric(horizontal: 18),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Align(
                       alignment: Alignment.topLeft,
                       child: Text(
                         "Charanveer singh",
                         style: new TextStyle(
                             fontSize: 22.0,
                             color: Colors.black,
                             fontWeight: FontWeight.normal),
                       ),
                     ),
                     Align(
                       alignment: Alignment.topLeft,
                       child: Text(
                         "charanveer singh",
                         style: new TextStyle(
                           fontSize: 15.0,
                           color: Colors.grey,
                         ),
                       ),
                     )
                   ],),
               ))
             ],
           ),

           Container(
             margin: EdgeInsets.only(top: 15),
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.center,
               mainAxisSize: MainAxisSize.min,
               children: [
                 Expanded(child:  widgetsFile.iconText("Good Awards", Icons.thumb_up, 10, Colors.black, Colors.yellow[50], Colors.yellow[50], FontWeight.normal)),
                 Expanded(child: widgetsFile.iconText("Bad Behavior", Icons.thumb_down, 10, Colors.black, Colors.red[50], Colors.red[50], FontWeight.normal)),
                 Expanded(child:  widgetsFile.iconText("Send Awards", Icons.lightbulb, 10, Colors.black, Colors.blue[50], Colors.blue[50], FontWeight.normal)),
               ],
             ),
           )


          ],
        ),
      )
    );
  }

  Widget name()

  {

    return Container(child: Expanded(),);
  }


}