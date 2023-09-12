import 'package:flutter/material.dart';
import 'package:kiptrac/utilities/iconsfield_view.dart';

class KiptracView extends StatefulWidget {
  const KiptracView({super.key});

  @override
  State<KiptracView> createState() => _KiptracViewState();
}

class _KiptracViewState extends State<KiptracView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/businessProfile/',
                    (route) => false,
                  );
                },
                child: const Text(
                  'Business Profile',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: messageIcon,
              title: Text(
                'Message',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const ListTile(
              leading: settingsIcon,
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text(
          'company name',
        ),
        // title: const Text('Company Name'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: notificationIcon,
            iconSize: appBarIconSize,
          ),
          IconButton(
            onPressed: () {},
            icon: shareIcon,
            iconSize: appBarIconSize,
          ),
        ],
      ),
      body: Column(
        children: [
          // IconButton(onPressed: () {}, icon: turbochargerIcon),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Column(
                    children: [
                      maintenanceIcon,
                      Container(),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/scheduleMaintenance/', (route) => false);
                  },
                ),
                GestureDetector(
                  child: Column(
                    children: [
                      turbochargerIcon,
                      Container(),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Column(
                    children: [
                      oilPump,
                      Container(),
                    ],
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Column(
                    children: [
                      waterPump,
                      Container(),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context)
          //     .pushNamedAndRemoveUntil('/task/', (route) => false);
        },
        backgroundColor: Colors.black,
        elevation: 10,
        child: const Image(
          image: AssetImage(
            'assets/plus.png',
          ),
        ),

        // Icon(
        //   Icons.add,
        //   size: 25,
        // ),
      ),
      bottomNavigationBar: const BottomAppBar(
          height: 50.0,
          color: Colors.black,
          notchMargin: 3.0,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('assets/home.png'),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5.0,
                  top: 5.0,
                  right: 30.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('assets/myTask.png'),
                    ),
                    Text(
                      'Task',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5.0,
                  top: 5.0,
                  left: 30.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('assets/stopwatch.png'),
                    ),
                    Text(
                      'Time',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5.0,
                  top: 5.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('assets/wallet.png'),
                    ),
                    Text(
                      'wallet',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
