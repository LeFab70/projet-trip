import 'package:flutter/material.dart';
import 'package:projet_city/data/models/activity.models.dart';

//
// class ActivityCard extends StatelessWidget {
//   final Activity activity;
//
//   const ActivityCard({super.key, required this.activity});
//
//   @override
//   Widget build(BuildContext context) {
//     // return Container(
//     //   margin: EdgeInsets.all(5),
//     //   width: double.infinity, // prend tout espace dispo
//     //   child: Image.asset(activity.image, fit: BoxFit.cover,),
//     // );
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       padding: EdgeInsets.all(5),
//       child:
//         Image.asset(activity.image, fit: BoxFit.cover,),
//
//     );
//     // return ListView(
//     //   scrollDirection: Axis.vertical,
//     //   padding: EdgeInsets.all(5),
//     //   children:[
//     //     Image.asset(activity.image, fit: BoxFit.cover,),
//     //   ]
//     //
//     //
//     // );
//
//   }
// }
class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // return Padding(
    //   padding: const EdgeInsets.all(5),
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(18),
    //     child: SizedBox(
    //       height: 200, // On force la hauteur
    //       width: double.infinity, // On prend toute la largeur
    //       child: Image.asset(
    //         activity.image,
    //         fit: BoxFit.cover, // IMPORTANT : remplit le cadre sans déformer
    //       ),
    //     ),
    //   ),
    // );
    return Card(
      //color: Colors.blue.shade100,
      margin: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: CircleAvatar(
          backgroundColor: theme.colorScheme.secondary,
          radius: 30,
          backgroundImage: AssetImage(activity.image),
        ),

        // ClipOval(
        //
        //   child: Image.asset(
        //     activity.image,
        //     width: 60,
        //     height: 60,
        //     fit: BoxFit.cover,
        //   ),
        // ),
        title: Text(
          activity.name,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text(
          activity.city,
          style: TextStyle(color: theme.colorScheme.onSurface.withAlpha(200)),
        ),
        //trailing: Icon(Icons.arrow_circle_right_rounded, color: Colors.lightBlue),
        trailing: Checkbox(
          value: false,
          onChanged: (value) {},
          tristate: false,
          activeColor: theme.colorScheme.primary,
          checkColor: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
