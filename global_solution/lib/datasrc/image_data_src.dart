import '../model/image_model.dart';

class ImageData {
  static final List<ImageModel> imageModelList = [
    ImageModel(
      name: 'Drone 01',
      id: 'ID2298734547089734',
      imageUrl: 'assets/images/plantacao_soja.jpg',
      pests: ['lagartas', 'fungos', 'bactérias'],
      diseases: ['vírus'],
      culture: 'soja',
      irrigation: 'true',
    ),
    ImageModel(
      name: 'Drone 02',
      id: 'ID2298734547089735',
      imageUrl: 'assets/images/plantacao_milho.jpg',
      pests: ['ácaros', 'fungos', 'bactérias'],
      diseases: ['vírus', 'bactérias'],
      culture: 'milho',
      irrigation: 'true',
    ),
    ImageModel(
      name: 'Drone 03',
      id: 'ID2298734547089736',
      imageUrl: 'assets/images/plantacao_trigo.jpg',
      pests: ['percevejos', 'fungos', 'bactérias'],
      diseases: ['vírus', 'fungos'],
      culture: 'trigo',
      irrigation: 'false',
    ),
    ImageModel(
      name: 'Drone 04',
      id: 'ID2298734547089737',
      imageUrl: 'assets/images/plantacao_algodao.jpg',
      pests: ['besouros', 'fungos'],
      diseases: ['vírus', 'bactérias', 'fungos'],
      culture: 'algodão',
      irrigation: 'true',
    ),
    ImageModel(
      name: 'Drone 05',
      id: 'ID2298734547089738',
      imageUrl: 'assets/images/plantacao_arroz.jpg',
      pests: ['lagartas', 'ácaros', 'fungos'],
      diseases: ['vírus', 'fungos'],
      culture: 'arroz',
      irrigation: 'false',
    ),
    ImageModel(
      name: 'Drone 06',
      id: 'ID2298734547089739',
      imageUrl: 'assets/images/plantacao_feijao.jpg',
      pests: ['lagartas', 'ácaros'],
      diseases: ['vírus', 'bactérias'],
      culture: 'feijão',
      irrigation: 'true',
    ),
    ImageModel(
      name: 'Drone 07',
      id: 'ID2298734547089740',
      imageUrl: 'assets/images/plantacao_tomate.jpg',
      pests: ['besouros', 'fungos', 'bactérias'],
      diseases: ['vírus', 'fungos'],
      culture: 'tomate',
      irrigation: 'true',
    ),
    ImageModel(
      name: 'Drone 08',
      id: 'ID2298734547089741',
      imageUrl: 'assets/images/plantacao_batata.jpg',
      pests: ['percevejos', 'fungos'],
      diseases: ['vírus', 'bactérias'],
      culture: 'batata',
      irrigation: 'false',
    ),
    ImageModel(
      name: 'Drone 09',
      id: 'ID2298734547089742',
      imageUrl: 'assets/images/plantacao_cebola.jpg',
      pests: ['lagartas', 'ácaros', 'fungos'],
      diseases: ['vírus', 'fungos'],
      culture: 'cebola',
      irrigation: 'true',
    ),
    ImageModel(
      name: 'Drone 10',
      id: 'ID2298734547089743',
      imageUrl: 'assets/images/plantacao_morango.jpg',
      pests: ['besouros', 'fungos'],
      diseases: ['vírus', 'bactérias', 'fungos'],
      culture: 'morango',
      irrigation: 'true',
    ),
  ];
}
