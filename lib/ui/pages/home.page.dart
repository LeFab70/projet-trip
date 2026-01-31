import 'package:flutter/material.dart';
import 'package:projet_city/data/cities.dart';
import 'package:projet_city/ui/widgets/city.card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> cities = Cities.cities;

  void cityChecked(Map<String, dynamic> city) {
    int position = cities.indexOf(city);
    setState(() {
      cities[position]['checked'] = !cities[position]['checked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: Scaffold.of(context).openDrawer,
            icon: const Icon(Icons.home),
          ),
        ),
        title: const Text("Projet trip"),

        actions: const <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),

        // child: GridView.count(
        //   crossAxisCount: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //   // children: <Widget>[
          //   // for(int card=0;card<4;card++)
          //   //   const CityCard()
          //
          //
          // ],
          //children: List.generate(4, (index) => const CityCard()),
          children: cities
              .map(
                (city) =>
                    CityCard(city: city, checkedCity: () => cityChecked(city)),
              )
              .toList(),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
