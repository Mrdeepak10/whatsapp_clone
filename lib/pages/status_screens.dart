import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsaap_clone/models/status_model.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/deepak.jpg'),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(backgroundColor: Color(0xff25D366),
                    radius: 10,
                    child: Icon(Icons.add_circle_outline_outlined,color: Colors.white,),
                  )),
            ],
          ),
          title: Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Tap to add status update",
              style: TextStyle(color: Colors.grey, fontSize: 14)),
          onTap: () {
            print("my Own status detail open");
          },
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Recent update",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Flexible(
            child: ListView.builder(
              itemCount: statusData.length,
          itemBuilder: (context, index) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(statusData[index].avatarUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      statusData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: Text(
                  statusData[index].time,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                onTap: () {
                  print("status detail open");
                },
              ),
              Divider(
                height: 10,
              )
            ],
          ),
        ))
      ],
    );
  }
}
