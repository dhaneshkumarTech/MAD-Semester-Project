import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/plan_screen.dart';

class MyAlert extends StatelessWidget {
  const MyAlert({Key? key}) : super(key: key);
  
  @override  
  Widget build(BuildContext context) {  
    return Padding(  
      padding: const EdgeInsets.all(20.0),  
      child: ElevatedButton(  
        child: const Text('Show alert'),  
        onPressed: () {  
          showAlertDialog(context);  
        },  
      ),  
    );  
  }  
}  
  
showAlertDialog(BuildContext context) {  
  // Create button  
  Widget okButton = TextButton(  
    child: const Text("OK"),  
    onPressed: () {  
    Navigator.push(
     context,
     MaterialPageRoute(
         builder: (context) =>
             const TripsPlan())); 
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: const Text("Name of Trip"),  
    content: const TextField(),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}  

class PlanePlanContainer extends StatefulWidget {
  const PlanePlanContainer({Key? key}) : super(key: key);

  @override
  State<PlanePlanContainer> createState() => _PlanePlanContainerState();
}

class _PlanePlanContainerState extends State<PlanePlanContainer> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const ImageIcon(
                AssetImage("assets/BottomAppBarIcons/back.png"),
              ),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: themeColor,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xffFFC107), //background color of button

              shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(30)),
            ),
            onPressed: () {
              showAlertDialog(context);
              
            },
            child: const Text(
              "Create Trip",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
