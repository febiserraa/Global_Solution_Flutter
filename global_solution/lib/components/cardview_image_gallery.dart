import 'package:flutter/material.dart';
import 'package:global_solution/model/image_model.dart';
import 'package:global_solution/screens/analysis_screen.dart';

// ignore: must_be_immutable
class CardviewImageGallery extends StatelessWidget {
  ImageModel imgModel;

  CardviewImageGallery({Key? key, required this.imgModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(imgModel.name),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  settings: RouteSettings(arguments: imgModel),
                  builder: (context) => AnalysisPage(),
                ),
              ),
              child: Text('Ver mais'),
            ),
          ],
        ),
      ),
    );
  }
}
