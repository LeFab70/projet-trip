import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projet_city/data/models/trip.dart';

class TripOverview extends StatelessWidget {
  final Trip myTrip;
  final VoidCallback setDate;
  final double amount;

  const TripOverview({super.key, required this.myTrip, required this.setDate, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200.0,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myTrip.city,
            style: TextStyle(
              fontSize: 25,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  DateFormat(
                    'dd/MM/yyyy',
                  ).format(myTrip.dateActivity.toLocal()),
                ),
              ),
              //Expanded(child: Text(DateFormat().format(mytrip.dateActivity)),),
              //Expanded(child: Text(mytrip.dateActivity.toLocal().toString().split(' ')[0])),
              ElevatedButton(
                onPressed: setDate, //setDateCalendar, setDate,
                child: Text("Selectionner une date"),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  'Montant /personne: ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${amount.toStringAsFixed(2).toString()} \$',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
