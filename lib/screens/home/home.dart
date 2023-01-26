import 'package:acheev/screens/home/widgets/tasks.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'My Schedule',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )),
          Expanded(
            child: Tasks(),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 0,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.blueAccent,
              unselectedItemColor: Colors.grey.withOpacity(0.5),
              items: [
                BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home_rounded,
                      size: 30,
                    )),
                BottomNavigationBarItem(
                    label: 'Person',
                    icon: Icon(
                      Icons.person_rounded,
                      size: 30,
                    ))
              ]),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          SizedBox(width: 10),
          Text(
            'Jan 25, 2022',
            style: TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 220,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/avatar.png'),
            ),
          ),
        ],
      ),
    );
  }
}
