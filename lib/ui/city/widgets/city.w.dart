import 'package:flutter/material.dart';
import 'package:projet_city/ui/city/widgets/trip.activity.dart';

import '../../../data/models/activity.models.dart';
import '../../../data/models/trip.dart';

import 'activity.list.dart';
import 'trip.overview.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../data/activities.dart' as activities_data;

class CityW extends StatefulWidget {
  CityW({super.key});

  @override
  State<CityW> createState() => _CityWState();
}

class _CityWState extends State<CityW> {
  late int _index;

  late final List<Activity> activities;

  @override
  void initState() {
    super.initState();
    activities = activities_data.activities;
    _index = 0;
    debugPrint('init state');
  }

  //List<Map<String, dynamic>> cities = Cities.cities;
  Trip myTrip = Trip(
    activities: [],
    city: 'Campbellton',
    dateActivity: DateTime.now(),
  );

  void setDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), //.subtract(Duration(days: 1)),
      firstDate: DateTime.now(), //DateTime(2025),
      lastDate: DateTime.now().add(Duration(days: 365)), //DateTime(2027),
    );
    if (pickedDate != null) {
      debugPrint(pickedDate.toString());
      setState(() {
        myTrip.dateActivity = pickedDate;
      });
    }
  }

  void setDateCalendar() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: TableCalendar(
            focusedDay: myTrip.dateActivity,
            firstDay: DateTime.now(),
            lastDay: DateTime(2027),
            selectedDayPredicate: (day) => isSameDay(day, myTrip.dateActivity),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                myTrip.dateActivity = selectedDay;
              });
              Navigator.pop(context); // ferme le bottom sheet
            },
          ),
        );
      },
    );
  }

  double get _amount => 0.0;

  void switchIndex(int index) {
    setState(() {
      _index = index;
      debugPrint(index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text('Organisation voyage'),
        actions: [Icon(Icons.more_vert)],
      ),
      //avec indexedStack
      // body: IndexedStack(
      //   index: _index,
      //   children: [
      //     Padding(
      //       padding: EdgeInsetsGeometry.symmetric(
      //         horizontal: 8.0,
      //         vertical: 5.0,
      //       ),
      //       //  tests de ListView et Column
      //       // child: Column(
      //       //   children: widget.activities
      //       //       .map((activity) => ActivityCard(activity: activity))
      //       //       .toList(),
      //       // ),
      //       child: Column(
      //         children: [
      //           TripOverview(amount: _amount, myTrip: myTrip, setDate: setDate),
      //           Expanded(child: ActivityList(activities: widget.activities)),
      //         ], // Fermeture de la Column
      //       ), // Fermeture du child
      //     ), // Fermeture du Padding (Fin de la première page)
      //
      //     Center(child: const Text("Mes activités")),
      //   ], // Fermeture des children de l'IndexedStack
      // ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 8.0, vertical: 5.0),
        //  tests de ListView et Column
        // child: Column(
        //   children: widget.activities
        //       .map((activity) => ActivityCard(activity: activity))
        //       .toList(),
        // ),
        child: Column(
          children: [
            TripOverview(amount: _amount, myTrip: myTrip, setDate: setDate),
            Expanded(
              child: _index == 0
                  ? ActivityList(activities: activities)
                  : TripActivity(),
            ),
          ], // Fermeture de la Column
        ), // Fermeture du child
      ),

      // child: Column(
      bottomNavigationBar: BottomNavigationBar(
        onTap: switchIndex,
        currentIndex: _index,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'trip',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Mes activités',
          ),
        ],
      ),
    );
  }
}
