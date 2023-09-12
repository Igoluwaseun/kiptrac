import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const maintenanceIcon = Padding(
  padding: EdgeInsets.all(5.0),
  child: Column(
    children: [
      Image(
        width: 40,
        height: 40,
        image: AssetImage(
          "assets/schedule.png",
        ),
      ),
      Text(
        '   Schedule\nmaintenance',
      ),
    ],
  ),
);

const turbochargerIcon = Padding(
  padding: EdgeInsets.all(5.0),
  child: Column(
    children: [
      Image(
        height: 40,
        width: 40,
        image: AssetImage(
          'assets/turbocharger.png',
        ),
      ),
      Text(
        'Turbocharger\n      repair',
      ),
    ],
  ),
);
const oilPump = Padding(
  padding: EdgeInsets.all(8.0),
  child: Column(
    children: [
      Image(
        width: 40,
        height: 40,
        image: AssetImage(
          "assets/oil-pump.png",
        ),
      ),
      Text(
        'Oil pump\n  repair',
      ),
    ],
  ),
);

const waterPump = Padding(
  padding: EdgeInsets.all(8.0),
  child: Column(
    children: [
      Image(
        height: 40,
        width: 40,
        image: AssetImage(
          'assets/water-pump.png',
        ),
      ),
      Text(
        'Water pump\n    repair',
      ),
    ],
  ),
);

const messageIcon = Image(
  height: 40,
  width: 40,
  image: AssetImage('assets/speech-bubble.png'),
);
const settingsIcon = Image(
  height: 40,
  width: 40,
  image: AssetImage('assets/speech-bubble.png'),
);

const notificationIcon = Image(
  image: AssetImage('assets/notification.png'),
);
const shareIcon = Image(
  image: AssetImage('assets/share.png'),
);
const homeIcon = Image(
  image: AssetImage('assets/home.png'),
);
const double appBarIconSize = 15.0;
