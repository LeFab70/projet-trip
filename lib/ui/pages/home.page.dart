import 'package:flutter/material.dart';
import 'package:projet_city/ui/widgets/city.card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[CityCard()],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
