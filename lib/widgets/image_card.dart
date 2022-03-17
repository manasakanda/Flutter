import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;
  final String text;

  final String subTitle;

  const ImageCard({Key? key, required this.image,required this.text,required this.subTitle,}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             // boxShadow: [
             //   BoxShadow(
             //     color: Colors.black.withOpacity(0.5),
             //     spreadRadius: 4,
             //     blurRadius: 2,
             //     offset: Offset(5.0,3.0),
             //   )
             // ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),

            child: Image(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 5,

        ),
        Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
        Text(subTitle),
          ]
        ),
      ),
    );
  }
}
