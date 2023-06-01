import 'package:flutter/material.dart';
import 'package:mywayf/components/in.dart';
import 'package:mywayf/screens/aresdataset.dart';

class Nav extends StatefulWidget {
    final GlobalKey<NavigatorState> navigatorKey;

  const Nav({Key? key, required this.navigatorKey}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 138, 8, 8),
            ),
            child: Text('Header'),
          ),
          ListTile(
            title: const Text('In'),
            onTap: () {
              // Update the state of the app
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const In()),
              );              // Then close the drawer
              Navigator.pop(context);
            },
          ),
                    ListTile(
            title: const Text('Ares Datasets'),
            onTap: () {
              // Navigate to the AresDatasetScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AresDatasetScreen()),
              );
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
