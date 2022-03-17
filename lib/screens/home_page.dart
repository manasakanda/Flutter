import 'package:first_app/screens/yamunotri.dart';
import 'package:first_app/widgets/image_card.dart';
import 'package:flutter/material.dart';
import 'package:first_app/screens/NavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScaffoldState scaffoldState = ScaffoldState();



    return Scaffold(
      drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: const Text("akhuos"),
                accountName: const Text("ahfosu"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle_sharp),
                title: Text('My Account'),
              )

            ],
          )
      ),
      backgroundColor: Color(0xFFffefb4),
      appBar: AppBar(
          title: const Text("Safar",
          style:TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            letterSpacing: 1.5,
            fontFamily: 'Merriweather',
          )
          ,),
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //     color: Colors.white,
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),
              color: Colors.white,),
        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,MaterialPageRoute(builder: (context)=>const yamunotri()),
              );
            },
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Image(
                    image: NetworkImage(
                        "https://www.travelsiteindia.com/blog/wp-content/uploads/2018/02/chota-char-dham.jpg"

                    ),
                    fit: BoxFit.cover,
                  )
                ),
                const  ImageCard(image: "https://uttarakhandtourism.gov.in/sites/default/files/2020-09/Yamunotri%20Temple.jpg", text:"Yamunotri Dham" ,subTitle: "Temple of Goddess Yamuna",),

                const ImageCard(image: "https://www.templepurohit.com/wp-content/uploads/2016/10/Gangotri-Temple-Gangotri-Dham-Travel-Info-Photos-History-e1476332078425.jpg",text:"Gangotri Dham",subTitle: "Temple of Goddess Ganga",
                ),
              ],
            ),
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
            icon: Icon(Icons.view_list_rounded, ),
            label: 'For You',
          ),
        ],

      ),


    );
  }


}
