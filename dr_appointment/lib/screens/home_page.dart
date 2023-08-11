import 'package:dr_appointment/components/appointment_card.dart';
import 'package:dr_appointment/components/doctor_card.dart';
import 'package:dr_appointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> medcat= [
    {
    "icon": FontAwesomeIcons.userDoctor,
    "Category":'General',
    },
    {
    "icon": FontAwesomeIcons.heartPulse,
    "Category":'Cardiology',
    },
    {
    "icon": FontAwesomeIcons.lungs,
    "Category":'Respirations',
    },
    {
    "icon": FontAwesomeIcons.hand,
    "Category":'Dermatology',
    },
    {
    "icon": FontAwesomeIcons.personPregnant,
    "Category":'Gynecology',
    },
    {
    "icon": FontAwesomeIcons.teeth,
    "Category":'Dental',
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Vinod Bhuruk',
                  style: TextStyle(
                    fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/profile1.jpg'),
                      ),
                  ),
        
                ],
              ),
              Config.spaceMedium,
              // Category Listing
              const  Text('Category',
                  style: TextStyle(
                    fontSize: 16,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                   Config.spaceSmall,
                   // Category List
                   SizedBox(
                    height: Config.heightSize * 0.06,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List<Widget>.generate(medcat.length, (index) {
                        return Card(
                          margin: const EdgeInsets.only(right: 20),
                          color: Config.primaryColor,
                          child: Padding(padding:const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FaIcon(
                                medcat[index]['icon'],
                                color:Colors.white,
                              ),
                              const SizedBox(width: 20,),
                              Text(
                                medcat[index]['Category'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  color:Colors.white,
                               ),
                             ),
                            ],
                          ),
                          ),
                        );
                      }),
                    ),
                   ),
                   Config.spaceSmall,
                   const Text(
                    'Appointment Today',
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Config.spaceSmall,
                    // Appointment Card here
                   const AppointmentCard(),
                   Config.spaceSmall,
                   const Text(
                    'Top Doctors',
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  // List of Top Doctors
                  Config.spaceSmall,
                 Column(
                  children: List.generate(10, (index)  {
                    return const DoctorCard();
                  }
                  ),
                 ),
                  
                  
            ],
        
          ),
        ),
        ),
      ),
      
      
    );
  }
}