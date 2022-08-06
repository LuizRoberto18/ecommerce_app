import 'package:flutter/material.dart';

import '../components/llist_tile.dart';
import '../constants.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cModeDark,
      appBar: AppBar(
        backgroundColor: cModeDark,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 35,
            right: 10,
            left: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "My profile",
                style: TextStyle(
                  color: cModeDarkColorFontTitle,
                  fontSize: cSizeTextHeader,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ListTileEdited(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage("assets/images/Big-banner.png"),
                  radius: 30,
                ),
                title: "Matilda Brown",
                subTitle: "matildabrown@gmail.com",
              ),
              SizedBox(height: 30),
              ListTileEdited(
                title: "My orders",
                subTitle: "Already have 12 orders",
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: cModeDarkColorFontSubTitle,
                  ),
                ),
              ),
              Divider(
                color: cModeDarkColorTextBox,
                height: 2,
              ),
              ListTileEdited(
                title: "Shipping addresses",
                subTitle: "3 addresses",
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: cModeDarkColorFontSubTitle,
                  ),
                ),
              ),
              Divider(
                color: cModeDarkColorTextBox,
                height: 2,
              ),
              ListTileEdited(
                title: "Payment methods",
                subTitle: "Visa **34",
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: cModeDarkColorFontSubTitle,
                  ),
                ),
              ),
              Divider(
                color: cModeDarkColorTextBox,
                height: 2,
              ),
              ListTileEdited(
                title: "Promocodes",
                subTitle: "You have special promocodes",
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: cModeDarkColorFontSubTitle,
                  ),
                ),
              ),
              Divider(
                color: cModeDarkColorTextBox,
                height: 2,
              ),
              ListTileEdited(
                title: "My orders",
                subTitle: "Aiready have 12 orders",
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: cModeDarkColorFontSubTitle,
                  ),
                ),
              ),
              Divider(
                color: cModeDarkColorTextBox,
                height: 2,
              ),
              ListTileEdited(
                title: "Settings",
                subTitle: "Notifications, password",
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: cModeDarkColorFontSubTitle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
