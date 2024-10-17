import 'package:basketball_app_count/cubit/counter_cubit.dart';
import 'package:basketball_app_count/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Points Counter'),
              backgroundColor: Colors.orange,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  //in Row the main axis is x axis
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // to give equalte space
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).TeamApoints}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(team: 'A', buttonNumber: 1);
                              },
                              child: Text(
                                'Add 1 point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              )),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 2);
                            },
                            child: Text(
                              'Add 2 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 3);
                            },
                            child: Text(
                              'Add 3 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 12,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 3,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).TeamBpoints}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(team: 'B', buttonNumber: 1);
                              },
                              child: Text(
                                'Add 1 point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              )),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 2);
                            },
                            child: Text(
                              'Add 2 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 3);
                            },
                            child: Text(
                              'Add 3 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(150, 50)),
                  onPressed: () {
                    // setState(() {
                    //   TeamApoint = 0;
                    //   TeamBpoint = 0;
                    // }); // print teampoint in the screen
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ));
      },
      listener: (context, state) {},
    );
  }
}
