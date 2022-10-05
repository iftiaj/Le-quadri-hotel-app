import 'package:flutter/material.dart';
import 'bottom.dart';
import 'hotel/deluxe.dart';
import 'hotel/twin.dart';
import 'hotel/fam.dart';
import 'hotel/single.dart';
import 'contact.dart';
import 'navbar.dart';
import 'hmenu.dart';
import 'package:getwidget/getwidget.dart';
import 'foodm.dart';
import 'main.dart';
import 'screens/home_screen.dart';
import 'settings.dart';
import 'fav.dart';

class hmenu extends StatefulWidget {
  @override
  _hmenuState createState() => _hmenuState();
}

class _hmenuState extends State<hmenu> {
  int selectedIndex = 0;

  List screens = [ScreenMovies(), ScreenReleases(), ScreenCuriosities()];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: screens.elementAt(selectedIndex),
        ),
        //drawer: SideMenu(),
        bottomNavigationBar: BottomMenu(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ));
  }
}

class ScreenMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(centerTitle: true, title: Text('Hotel')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                onTap: () {
                  // showSearch(context: context, delegate: DataSearch());
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      width: 0.8,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  hintText: 'Search for hotel room',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  // suffixIcon: IconButton(
                  //   icon: Icon(Icons.menu),
                  //   onPressed: () {},
                  // ),
                ),
              ),
            ),
            Container(
              child: SearchWidget(),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Limited Offer',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.orange[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.family_restroom_rounded, size: 50),
                      Text(
                        '      Family Package            \n      RM 35.99',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => fam()),
                          );
                        },
                        child:
                            const Text('View', style: TextStyle(fontSize: 20)),
                        color: Colors.orange,
                        textColor: Colors.white,
                        elevation: 5,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                'All Rooms',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.orange[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.hotel, size: 50),
                      Text(
                        '      Deluxe Room              \n      RM 129.99',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => deluxe()),
                          );
                        },
                        child:
                            const Text('View', style: TextStyle(fontSize: 20)),
                        color: Colors.orange,
                        textColor: Colors.white,
                        elevation: 5,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.orange[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.king_bed, size: 50),
                      Text(
                        '      Twin Bedroom            \n      RM 85.99',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => twin()),
                          );
                        },
                        child:
                            const Text('View', style: TextStyle(fontSize: 20)),
                        color: Colors.orange,
                        textColor: Colors.white,
                        elevation: 5,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.orange[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.bedroom_child_outlined, size: 50),
                      Text(
                        '      Single Bedroom          \n      RM 45.99',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => single()),
                          );
                        },
                        child:
                            const Text('View', style: TextStyle(fontSize: 20)),
                        color: Colors.orange,
                        textColor: Colors.white,
                        elevation: 5,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final hotels = [
    "Deluxe Room",
    "D Deluxe Room",
    "Twin Bedroom",
    "Single Bedroom"
  ];
  final recentHotels = [
    "Family Package - Limited Offer",
    "Deluxe Room - Limited Offer"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // app bar action
    return [IconButton(onPressed: () {}, icon: Icon(Icons.clear))];

    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // leading icon on left of app bar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => hmenu()),
          );
        });

    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults

    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when keyword entered
    final suggestionList = query.isEmpty ? recentHotels : hotels;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.hotel),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );

    throw UnimplementedError();
  }
}

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => RoomList();
}

class RoomList extends State<SearchWidget> {
  String dropdownValue = 'Filter room by Price';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      style: const TextStyle(
          color: Colors.black, fontSize: 15, fontFamily: "Nunito"),
      underline: Container(
        height: 2,
        color: Colors.orange,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Filter room by Price',
        'RM 1 to RM 50',
        'RM 51 to RM 100',
        'RM 111 to RM 200'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class ScreenReleases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Le Quadri Food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Nunito",
        scaffoldBackgroundColor: Colors.grey[50],
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange,
      ),
      home: HomeScreen(),
    );
  }
}

class ScreenCuriosities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orangeAccent,
      body: Container(
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
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LQ',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange,
      ),
      home: hmenu(),
    );
  }
}
