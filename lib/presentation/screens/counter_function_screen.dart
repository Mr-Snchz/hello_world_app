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
            FloatingActionButton(
              shape: StadiumBorder(),
          onPressed: () {
            setState(() {
              clickCounter = 0;
            });
          },
           child: Icon( Icons.refresh_rounded),),

           const SizedBox( height: 15),

            FloatingActionButton(
              shape: StadiumBorder(),
          onPressed: () {
            setState(() {
              clickCounter -= 1;
            });
          },
           child: Icon( Icons.exposure_minus_1),),

           const SizedBox( height: 15),

           FloatingActionButton(
            shape: StadiumBorder(),
          onPressed: () {
            setState(() {
              clickCounter += 1;
            });
          },
           child: Icon( Icons.plus_one),),
          ],
        )
      );
  }
}
