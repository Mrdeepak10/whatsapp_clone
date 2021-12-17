import 'package:flutter/material.dart';
import 'package:whatsaap_clone/models/call_model.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CallData.length,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(CallData[i].avatarUrl),
                  ),
                  title: Text(
                    CallData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Container(
                        child: CallData[i].callType,
                      ),
                      Text(CallData[i].time,
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ],
                  ),
                  trailing: Icon(
                    Icons.phone,
                    color: Color(0xff075E54),
                  ),
                  onTap: () {
                    print("call detail open");
                  },
                ),
              ],
            ));
  }
}
