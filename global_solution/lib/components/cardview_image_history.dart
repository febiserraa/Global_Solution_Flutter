import 'package:flutter/material.dart';
import 'package:global_solution/model/history_model.dart';
import '../screens/history_info_screen.dart';

class CardviewImageHistory extends StatelessWidget {
  final HistoryModel historyModel;

  CardviewImageHistory({Key? key, required this.historyModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Image.network(
                historyModel.imageUrl,
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ID: ${historyModel.farmId}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          settings: RouteSettings(arguments: historyModel),
                          builder: (context) => HistoryInfoPage(),
                        ),
                      );
                    },
                    child: Text('Ver mais'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
