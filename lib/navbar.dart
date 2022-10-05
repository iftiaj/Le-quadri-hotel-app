import 'package:flutter/material.dart';
import 'package:ucsi/main.dart';
import 'package:ucsi/contact.dart';
import 'fav.dart';
import 'settings.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('admin'),
            accountEmail: Text('admin@lquadri.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/pic1.png",
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orange,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fav()),
            ),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 16,
                    child: Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          SizedBox(height: 20),
                          Center(child: Text('Share the love!')),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              SizedBox(height: 20),
                              Text('Choose social app: '),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.facebook, size: 50),
                                  Icon(Icons.link, size: 50),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(' Facebook'),
                                  Text(' Copy Link'),
                                ],
                              ),
                              SizedBox(height: 20),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => settings()),
            ),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Contact Us'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => contact()),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Log out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => menu()),
            ),
          ),
        ],
      ),
    );
  }
}
