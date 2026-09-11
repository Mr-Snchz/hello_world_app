import 'package:flutter/material.dart';


class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Counter Function'),
          actions: [
            IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            }, 
            icon: Icon(Icons.refresh_rounded)
          ),
          ],
        ),
        body: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ 
            Text('$clickCounter', style: TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
             Text('click${ clickCounter == 1? '':'s'}' , style: TextStyle( fontSize: 25 ))
            ]
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(icon: Icons.refresh_rounded),

           const SizedBox( height: 15),

          CustomButton(icon: Icons.exposure_minus_1),

           const SizedBox( height: 15),

           CustomButton( icon: Icons.plus_one,),
          ],
        )
      );
  }
}

class CustomButton extends StatelessWidget {
  
  final IconData icon;

  const new({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
     shape: StadiumBorder(),
              onPressed: () {
     
              },
    child: Icon( icon),);
  }
}
