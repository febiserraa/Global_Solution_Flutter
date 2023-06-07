import 'package:flutter/material.dart';
import '../model/image_model.dart';

class AnalysisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageModel = ModalRoute.of(context)!.settings.arguments as ImageModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('Análise da Imagem'),
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
                  imageModel.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 24),
              Text(
                imageModel.name,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 12),
              Text(
                'ID: ${imageModel.id}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'Pragas: ${imageModel.pests.join(", ")}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'Doenças: ${imageModel.diseases.join(", ")}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'Cultura: ${imageModel.culture}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'Irrigação: ${imageModel.irrigation}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
