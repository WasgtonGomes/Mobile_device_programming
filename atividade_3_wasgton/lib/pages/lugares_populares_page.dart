import 'package:flutter/material.dart';
import 'database_turismo.dart'; // Importa o helper do banco de dados

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LugaresPopularesPage(),
    );
  }
}

class LugaresPopularesPage extends StatefulWidget {
  @override
  _LugaresPopularesPageState createState() => _LugaresPopularesPageState();
}

class _LugaresPopularesPageState extends State<LugaresPopularesPage> {
  List<Map<String, dynamic>> places = [];

  @override
  void initState() {
    super.initState();
    _loadPlaces(); // Carrega os lugares do banco de dados
  }

  void _loadPlaces() async {
    final dbHelper = DatabaseTurismo.instance;
    final data = await dbHelper.queryAllPlaces();
    setState(() {
      places = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Lugares populares',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Todos os lugares populares',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.7,
                children: places.map((place) {
                  return buildLocationItem(
                    place['id'],
                    place['name'],
                    place['location'],
                    _getImageUrl(place['name']),
                    4.5,
                    place['reviews'],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Função para pegar a URL da imagem baseado no nome do lugar
  String _getImageUrl(String placeName) {
    switch (placeName) {
      case 'Madrid, Espanha':
        return 'https://i.pinimg.com/236x/be/40/1a/be401aa30c3f458fdf848f62686b6f43.jpg';
      case 'Paris, França':
        return 'https://i.pinimg.com/564x/0c/78/9d/0c789da04b70243113a799140209388d.jpg';
      case 'Lima, Peru':
        return 'https://i.pinimg.com/564x/f4/04/d3/f404d3e6b96fe02851b14a0d5b2ef4c2.jpg';
      case 'Cairo, Egito':
        return 'https://i.pinimg.com/564x/88/60/6d/88606d001c4e5225ef86fadb4e493aaa.jpg';
      case 'Ji-Paraná, Brasil':
        return 'https://i.pinimg.com/564x/b6/92/ad/b692ade52c07c07138587d44ab1d01c8.jpg';
      case 'Nova York, EUA':
        return 'https://i.pinimg.com/564x/5d/15/63/5d1563126d8071fb1ac5843ea735a7eb.jpg';
      default:
        return 'https://via.placeholder.com/150'; // Imagem padrão
    }
  }

  Widget buildLocationItem(int id, String title, String location, String imagePath, double rating, int reviews) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Card(
          margin: EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 100,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: FavoriteIcon(
                      initialReviews: reviews,
                      onFavoriteChanged: (newReviews) async {
                        final dbHelper = DatabaseTurismo.instance;
                        await dbHelper.updatePlace(id, newReviews);
                        setState(() {
                          reviews = newReviews;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      location,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(rating.toString(), style: TextStyle(fontSize: 12)),
                        SizedBox(width: 4),
                        buildRatingStars(rating),
                        SizedBox(width: 4),
                        Text('($reviews)', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text('R\$6459/ Pessoa', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildRatingStars(double rating) {
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;

    List<Widget> stars = [];
    for (int i = 0; i < fullStars; i++) {
      stars.add(Icon(Icons.star, color: Colors.amber, size: 14));
    }

    if (hasHalfStar) {
      stars.add(Icon(Icons.star_half, color: Colors.amber, size: 14));
    }

    while (stars.length < 5) {
      stars.add(Icon(Icons.star_border, color: Colors.amber, size: 14));
    }

    return Row(children: stars);
  }
}

class FavoriteIcon extends StatefulWidget {
  final int initialReviews;
  final ValueChanged<int> onFavoriteChanged;

  const FavoriteIcon({required this.initialReviews, required this.onFavoriteChanged});

  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;
  late int reviews;

  @override
  void initState() {
    super.initState();
    reviews = widget.initialReviews;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
          reviews = isFavorite ? reviews + 1 : reviews - 1;
          widget.onFavoriteChanged(reviews);
        });
      },
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : Colors.white,
      ),
    );
  }
}
