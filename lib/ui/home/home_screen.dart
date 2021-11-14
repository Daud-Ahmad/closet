import 'package:closet/ui/home/tab_closet/tab_closet_vu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tab_home/tab_home_vu.dart';
import 'tab_search/tab_search_vu.dart';
import 'tab_more/tab_more_vu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  String _title = 'Home';

  static const List<Widget> _widgetOptions = <Widget>[

    TabHomeScreen(),

    TabClosetScreen(),

    TabSearchScreen(),

    TabMoreScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      switch(index){
        case 0 :
          _title = 'Home';
          break;
        case 1 :
          _title = 'Closet';
          break;
        case 2 :
          _title = 'Search';
          break;
        case 3 :
          _title = '';
          break;
      }
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Image.asset('assets/menu.png',
          color: Colors.white,
          width: 30,
              height: 30,)
        ),
        actions: [
          if(_selectedIndex == 1)
          IconButton(
              onPressed: (){
              },
              icon: Image.asset('assets/cart1.png',
                color: Colors.white,
              width: 30.0,
                  height: 30.0,)
          ),

          if(_selectedIndex == 0 || _selectedIndex == 2 || _selectedIndex == 3)
          IconButton(
              onPressed: (){
              },
              icon: Image.asset('assets/tokery.png',
                color: Colors.white,
                width: 30.0,
                height: 30.0,)
          ),

          if(_selectedIndex == 0 || _selectedIndex == 2 || _selectedIndex == 3)
          IconButton(
              onPressed: (){
              },
              icon: Image.asset('assets/saved_item.png',
                color: Colors.white,
                width: 30.0,
                height: 30.0,)
          ),
        ],
        backgroundColor: Colors.black,
        title: Text(_title),
        centerTitle: true,
      ),
      body:_widgetOptions.elementAt(_selectedIndex),

      drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Image.asset('assets/app_icon.png',
                width: 50,
                height: 50,)
              ),
              ListTile(
                title:   Row(
                  children: [
                    Image.asset('assets/profile.png',
                    width: 20.0,
                    height: 20.0,),
                    const SizedBox(width: 5.0),
                    const Text('My Account')
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),

              ListTile(
                title:   Row(
                  children: [
                    Image.asset('assets/cart.png',
                      width: 20.0,
                      height: 20.0,),
                    const SizedBox(width: 5.0),
                    const Text('Shop Now')
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),

              ListTile(
                title:   Row(
                  children: [
                    Image.asset('assets/cloth.png',
                      width: 20.0,
                      height: 20.0,),
                    const SizedBox(width: 5.0),
                    const Text('My Closet')
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),

              ListTile(
                title:   Row(
                  children: [
                    Image.asset('assets/outfit.png',
                      width: 20.0,
                      height: 20.0,),
                    const SizedBox(width: 5.0),
                    const Text('Outfit Creator')
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),

              ListTile(
                title:   Row(
                  children: [
                    Image.asset('assets/help.png',
                      width: 20.0,
                      height: 20.0,),
                    const SizedBox(width: 5.0),
                    const Text('Need Help')
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bottom_menu_1.png")),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bottom_menu_2.png")),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bottom_menu_3.png")),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bottom_menu_4.png")),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
