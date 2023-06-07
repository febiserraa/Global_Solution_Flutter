import 'package:flutter/material.dart';
import 'package:global_solution/model/history_model.dart';

class HistoryInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final historyModel =
        ModalRoute.of(context)!.settings.arguments as HistoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico da fazenda'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  historyModel.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 24),
              Text(
                historyModel.farmName,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 12),
              Text(
                'ID: ${historyModel.farmId}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'Cultura: ${historyModel.culture}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'Pragas Iniciais: ${historyModel.initialPests.join(", ")}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'Doenças Iniciais: ${historyModel.initialDiseases.join(", ")}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'Status de Irrigação Inicial: ${historyModel.initialIrrigation ? "Ativa" : "Inativa"}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 24),
              Text(
                'Histórico de Progresso:',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: historyModel.progressHistory.length,
                    itemBuilder: (context, index) {
                      return Align(
                        alignment: Alignment.center,
                        child: ListTile(
                          title: Align(
                            alignment: Alignment.center,
                            child: Text(historyModel.progressHistory[index]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
