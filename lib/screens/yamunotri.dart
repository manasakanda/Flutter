import 'package:first_app/widgets/image_card.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class yamunotri extends StatelessWidget {
    const yamunotri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffffefb4),
      appBar: AppBar(
        title: const Text("Yamunotri Dham",
          style:TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            letterSpacing: 1.5,
            fontFamily: 'Merriweather',
          )
          ,),
        centerTitle: true,
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ImageCard(image: "https://uttarakhandtourism.gov.in/sites/default/files/2020-09/Yamunotri%20Temple.jpg", text:"Yamunotri Dham" ,subTitle: "Temple of Goddess Yamuna",)
            ],
             
            ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cottage_rounded),
            label: 'My Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list_rounded ),
            label: 'For You',
          ),
        ],

      ),


    );
  }
}
