import 'package:flutter/material.dart';
import 'package:global_solution/model/history_model.dart';
import '../components/cardview_image_history.dart';
import '../datasrc/history_data_src.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<HistoryModel> filteredHistoryList = HistoryData.historyModelList;
  TextEditingController searchController = TextEditingController();

  void filterHistory(String query) {
    setState(() {
      filteredHistoryList = HistoryData.historyModelList
          .where((history) => history.farmId.contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Históricos das fazendas'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: searchController,
              onChanged: (value) => filterHistory(value),
              decoration: InputDecoration(
                labelText: 'Buscar por ID da imagem',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredHistoryList.length,
              itemBuilder: (context, index) {
                return CardviewImageHistory(
                  historyModel: filteredHistoryList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
