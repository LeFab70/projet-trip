import 'package:flutter/material.dart';
import '../../../data/models/activity.models.dart';
import 'activity.card.dart';
class ActivityList extends StatelessWidget {
  final List<Activity> activities ;
  const ActivityList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: activities.length,
      itemBuilder: (context, position) {
        final Activity act = activities[position];
        return ActivityCard(activity: act);
      },
      separatorBuilder: (context, index) {
        // return Divider(
        //   color: Colors.greenAccent,
        //   height: 10.0,
        //   thickness: 2.0,
        // );
        return SizedBox(height: 8.0);
      },
    );


    // child: GridView.builder(
    //   itemCount: widget.activities.length,
    //   itemBuilder: (context, position) {
    //     final Activity act = widget.activities[position];
    //     return ActivityCard(activity: act);
    //   }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4 ),
    //
    // ),;
  }
}
