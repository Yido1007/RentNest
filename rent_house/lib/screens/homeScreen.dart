// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import '../widgets/homeScreenItems.dart';
import '../widgets/sideBarItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(12, 15, 20, 1),
          centerTitle: true,
          title: Text(
            "RentNest",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(12, 15, 20, 1),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              SearchBox(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HeaderItem(
                      title: "Top Rates",
                    ),
                    HeaderItem(title: "Best Offer"),
                    HeaderItem(title: "Nearby"),
                    HeaderItem(title: "Community"),
                    HeaderItem(title: "On Sale"),
                    HeaderItem(title: "For Rent"),
                    HeaderItem(title: "Best Offer"),
                    HeaderItem(title: "Nearby"),
                    HeaderItem(title: "Community"),
                    HeaderItem(title: "On Sale"),
                    HeaderItem(title: "For Rent"),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, "/house1"),
                        child: AlbumItem(
                          houseImage: "assets/image/house1.jpg",
                          houseName: "Cascade Houses",
                          houseAdress:
                              "514 Willow St, South Hempstead, NY 11550\nUSA",
                          housePrice: "1300\$",
                          no1: "5",
                          no2: "3",
                          no3: "2",
                          no4: "1007",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, "/house2"),
                        child: AlbumItem(
                          houseImage: "assets/image/house2.webp",
                          houseName: "Diamond Houses",
                          houseAdress:
                              "53 Leonard Ave, Freeport, NY 11520\nUSA",
                          housePrice: "1370\$",
                          no1: "3",
                          no2: "3",
                          no3: "2",
                          no4: "1000",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, "/house3"),
                        child: AlbumItem(
                          houseImage: "assets/image/house3.webp",
                          houseName: "Mountain Houses",
                          houseAdress:
                              "113 Montauk Ave., Brooklyn, NY 11208\nUSA",
                          housePrice: "1750\$",
                          no1: "3",
                          no2: "2",
                          no3: "5",
                          no4: "1100",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, "/house4"),
                        child: AlbumItem(
                          houseImage: "assets/image/house4.jpg",
                          houseName: "Sr/Jr Houses",
                          houseAdress: "823 E 21st St, Brooklyn, NY 11210\nUSA",
                          housePrice: "1550\$",
                          no1: "4",
                          no2: "2",
                          no3: "3",
                          no4: "800",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DownMenu()
            ],
          ),
        ),
        drawer: SideBar(),
      ),
    );
  }
}
