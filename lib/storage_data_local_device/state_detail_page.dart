import 'package:flutter/material.dart';
import 'package:flutter_app/storage_data_local_device/counter_logic.dart';
import 'package:provider/provider.dart';

class StateDetailPage extends StatefulWidget {
  @override
  State<StateDetailPage> createState() => _StateDetailPageState();
}

class _StateDetailPageState extends State<StateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: _dark ? Colors.grey[900] : Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.purpleAccent,
        title: Text("State Detail Page"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    int counter = context.watch<CounterLogic>().counter;

    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterLogic>().decrease();
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterLogic>().increase();
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "In conversations with aides, foreign counterparts and even by phone with his wife over the course of his visit, Biden has asserted his trip this week was essential in showing the world the US wouldn’t waver in its support.As Air Force One returns to Washington, however, it is difficult to ignore the looming questions Biden’s visit did little to answer: How and when will the war end?Underneath Biden’s pledges of continued support for Ukraine remains a lingering concern, shared with his European allies, that the war could descend into a stalemate as each side sees small gains and losses without a clear trajectory.",
                  style: TextStyle(
                    fontSize: 20 + counter.toDouble(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
