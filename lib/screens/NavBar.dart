import 'package:flutter/material.dart';

class  NavBar extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"
            ),
          ),
        ],
      )
    );
  }
}
