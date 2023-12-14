// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, file_names

import 'package:flutter/material.dart';

class HeaderItem extends StatelessWidget {
  const HeaderItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
      margin: const EdgeInsets.only(left: 10, right: 3, top: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color.fromRGBO(203, 203, 203, 1)),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: const Color.fromRGBO(203, 203, 203, 1),
        ),
      ),
    );
  }
}

class AlbumItem extends StatelessWidget {
  const AlbumItem({
    super.key,
    required this.houseImage,
    required this.houseName,
    required this.houseAdress,
    required this.housePrice,
    required this.no1,
    required this.no2,
    required this.no3,
    required this.no4,
  });

  final String houseImage;
  final String houseName;
  final String houseAdress;
  final String housePrice;
  final String no1;
  final String no2;
  final String no3;
  final String no4;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(103, 158, 158, 158),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(19),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(houseImage),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    houseName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Text(
                    houseAdress,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                housePrice,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              HomeIcon(
                icon: Icon(Icons.bed_outlined, color: Colors.white),
                number: no1,
              ),
              HomeIcon(
                  icon: Icon(Icons.bathtub_outlined, color: Colors.white),
                  number: no2),
              HomeIcon(
                icon: Icon(
                  Icons.living_outlined,
                  color: Colors.white,
                ),
                number: no3,
              ),
              HomeIcon(
                icon: Icon(
                  Icons.crop_square,
                  color: Colors.white,
                ),
                number: no4,
              )
            ],
          )
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(12, 15, 20, 1),
        border: Border.all(
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
              Text(
                "Searchin on,",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              Text(
                " Mayfair,London",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.close,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class HomeIcon extends StatelessWidget {
  final Icon icon;
  final String number;

  const HomeIcon({
    super.key,
    required this.icon,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 20),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(85, 158, 158, 158),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                icon,
                Text(
                  number,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DownMenu extends StatelessWidget {
  const DownMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.brown, width: 3),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/home"),
            child: DownMenuItem(
              title: "Home",
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
            ),
          ),
          DownMenuItem(
            title: "Search",
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          ),
          DownMenuItem(
            title: "Favorite",
            icon: Icon(Icons.favorite_border, color: Colors.white),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/profile"),
            child: DownMenuItem(
              title: "Account",
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DownMenuItem extends StatelessWidget {
  final String title;
  final Icon icon;
  const DownMenuItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
