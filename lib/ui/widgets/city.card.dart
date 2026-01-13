import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  const CityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              fit: BoxFit.cover,
              // height: double.infinity,
              // width: double.infinity,
              image: AssetImage('assets/images/campbellton.jpeg'),
              child:
              Container(color: Colors.black.withAlpha(120),
              child: InkWell(
                onTap: () {
                  print("Campbellton");
                },
              ),),

            ),
            //Image.asset('assets/images/campbellton.jpeg', fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
            //Container(color: Colors.black.withAlpha(120)),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star_border, color: Colors.white, size: 60),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Campbellton",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                    ],
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
