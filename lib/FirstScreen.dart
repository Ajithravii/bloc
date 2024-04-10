import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_m/SecondScreen.dart';
import 'package:state_m/provider_bloc.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstScreen"),
      ),
      body: Column(
        children: [
          BlocBuilder<CounterBloc,int>(
            builder: (context,count) {
              return Text("count =$count");
            }
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            counter.add(Increment());
          },
              child: Text("Increment")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondScreen()));
          },
              child: Text("SecondScreen"))
        ],
      ),
    );
  }
}
