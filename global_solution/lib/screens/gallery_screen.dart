import 'package:flutter/material.dart';
import 'package:global_solution/components/cardview_image_gallery.dart';
import 'package:global_solution/datasrc/image_data_src.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagens das fazendas'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: ImageData.imageModelList.length,
          itemBuilder: (context, index) {
            return CardviewImageGallery(
              imgModel: ImageData.imageModelList[index],
            );
          },
        ),
      ),
    );
  }
}
