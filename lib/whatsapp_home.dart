import 'package:flutter/material.dart';
import 'package:whatsaap_clone/pages/calls_screens.dart';
import 'package:whatsaap_clone/pages/camera_screens.dart';
import 'package:whatsaap_clone/pages/chats_screens.dart';
import 'package:whatsaap_clone/pages/status_screens.dart';

class WhatsAppHome extends StatefulWidget {
  var cameras;
  WhatsAppHome(this.cameras);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    print('========================>>>>>>>.' + _tabController.index.toString());
    _animateFab() {
      if (_tabController.index == 1) {
        return FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                print("open Chats");
              });
            });
      } else if (_tabController.index == 2) {
        return FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                print("open camera");
              });
            });
      } else if (_tabController.index == 3) {
        return FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.call,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                print("open call");
              });
            });
      } else {
        return null;
      }
    }

    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF25D366),
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
        actions: [
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text('New group'),
                value: 'New group',
              ),
              PopupMenuItem(
                child: Text('New broadcast'),
                value: 'New broadcast',
              ),
              PopupMenuItem(
                child: Text('Linked devices'),
                value: 'Linked devices',
              ),
              PopupMenuItem(
                child: Text('Starred massages'),
                value: 'Starred massages',
              ),
              PopupMenuItem(
                child: Text('Payments'),
                value: 'Payments',
              ),
              PopupMenuItem(
                child: Text('Settings'),
                value: 'Settings',
              ),
            ];
          })
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(widget.cameras),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: _animateFab(),
    );
  }
}
