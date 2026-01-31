import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final Map<String,dynamic> city;
  final VoidCallback checkedCity;
  const CityCard({super.key, required this.city, required this.checkedCity});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias, // évite le débordement
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blue, width: 2),
      ),
      child: SizedBox(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              fit: BoxFit.cover,
              image:  AssetImage(city['image']),
              child: Container(
                color: Colors.black.withAlpha(120),
                child: InkWell(
                  splashColor: Colors.white24,
                  highlightColor: Colors.white10,
                  onTap: () {
                    debugPrint(city['name']);
                    checkedCity();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      city['checked']?
                      Icons.star: Icons.star_border,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Text(
                    city['name'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
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
