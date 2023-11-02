import 'package:counter_app/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.title),
      ),
      body: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            state.wasIncremented == true
                ? const SnackBar(
                    content: Text('Incremented!'),
                    duration: Duration(seconds: 1),
                  )
                : const SnackBar(
                    content: Text('Decremented!'),
                    duration: Duration(seconds: 1),
                  ),
          );
        },
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  state.counterValue.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed:
                          BlocProvider.of<CounterCubit>(context).decrement,
                      tooltip: 'Decrement',
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(
                      onPressed:
                          BlocProvider.of<CounterCubit>(context).increment,
                      tooltip: 'Increment',
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/secondPage');
                      },
                      tooltip: 'Second page',
                      child: const Text('2'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/thirdPage');
                      },
                      tooltip: 'Third page',
                      child: const Text('3'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
