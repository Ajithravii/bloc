import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_m/provider_bloc.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final Count =BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: Column(
        children: [
          BlocBuilder<CounterBloc,int>(
            builder: (context,value) {
              return Text("Count =${value}");
            }
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            Count.add(Decrement());
          },
              child: Text("Decrement")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },
              child: Text("BackScreen"))
        ],
      ),
    );
  }
}
