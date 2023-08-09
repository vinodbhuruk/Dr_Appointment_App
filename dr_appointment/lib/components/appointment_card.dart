import 'package:dr_appointment/utils/config.dart';
import 'package:flutter/material.dart';
class AppointmentCard extends StatefulWidget {
  const AppointmentCard({super.key});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children:  <Widget> [
              //insert Row
              Row(
                children: [
                  CircleAvatar(
                backgroundImage: AssetImage('assets/doctor_1.jpg'),
              ),
                SizedBox(
                  width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Dr Richard Tan',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Dental',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),

                ],
              ),
              Config.spaceSmall,
              // Schedule Info Here
               ScheduleCard(),
              Config.spaceSmall,
              // Action Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        'Cancel',
                      style: TextStyle(color: Colors.white),
                      ),
                      onPressed:() {
                        
                      },
                    ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        'Completed',
                      style: TextStyle(color: Colors.white),
                      ),
                      onPressed:() {
                        
                      },
                    ),
                    ),
                ],
              )
             
            ],
          ),
           ),
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Icon(Icons.calendar_today,
          color: Colors.white,
          size: 15,
          ),
           SizedBox(
            width: 5,
          ),
          Text(
            'Monday,08/07/2023',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.access_alarm,
          color: Colors.white,
          size: 17,
          ),
           SizedBox(
            width: 5,
          ),
          Flexible(
            child: Text(
              '2:00 PM',
              style: TextStyle(color: Colors.white),
            ))
        ],
      ),
    );
  }
}

// Appointment Card is Done
// the information data will be replaced API data 