import 'package:flutter/material.dart';
import 'package:project_application/configs/constants.dart';
import 'package:project_application/views/customtext.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          backgroundColor: apppBlue,
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "account",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "explore",
        ),
      ]),
      appBar: AppBar(
        title: const customtext(label: "Dashboard"),
        backgroundColor: pink,
        foregroundColor: appBlack,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
                const PopupMenuItem(
                  value: "Log out",
                  child: Text("Log out"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [apppBlue, appGreen],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _buildCategoryTitle("VIEW DESTINATIONS"),
            _buildDestinationCards(),
            const SizedBox(height: 20),
            _buildCategoryTitle("ACCOMMODATION"),
            _buildAccommodationCards(),
            const SizedBox(height: 20),
            _buildCategoryTitle("TRANSPORT BOOKING"),
            _buildTransportationCards(),
            const SizedBox(height: 20),
            _buildCategoryTitle("PACKAGES"),
            _buildPackageCards(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: customtext(
        label: title,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        labelColor: appRed,
      ),
    );
  }

  Widget _buildDestinationCards() {
    return Card(
      child: ListTile(
        title: const Text("DESTINATIONS"),
        subtitle: const Text(
            "Explore a range of destinations that you may like to visit"),
        leading: const Icon(Icons.location_on),
        onTap: () {},
      ),
    );
  }

  Widget _buildAccommodationCards() {
    return Card(
      child: ListTile(
        title: const Text("ACCOMMODATION "),
        subtitle:
            const Text("Click to view  available hotels and accommodations "),
        leading: Icon(Icons.hotel),
        onTap: () {},
      ),
    );
  }

  Widget _buildTransportationCards() {
    return Card(
      child: ListTile(
        title: const Text("TRANSPORT BOOKING"),
        subtitle: const Text(
            "Click to be able to book for flights and other available means."),
        leading: Icon(Icons.directions_car),
        onTap: () {},
      ),
    );
  }

  Widget _buildPackageCards() {
    return Card(
      child: ListTile(
        title: const Text("TRAVEL PACKAGES"),
        subtitle: const Text(
            "Explore various packages by a number of tour companies"),
        leading: Icon(Icons.card_travel),
        onTap: () {},
      ),
    );
  }
}
