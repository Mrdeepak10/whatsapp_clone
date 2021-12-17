import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avatarUrl;
  final Icon  callType;

  CallModel(
      {required this.name,
        required this.time,
        required this.avatarUrl,
         required this.callType
      });
  
  static Icon callReceived = Icon(Icons.call_received,
  size: 18,color: Colors.green,
  );
  static Icon callMissed = Icon(Icons.call_missed,
    size: 18,color: Colors.red,
  );
  
}

List<CallModel> CallData = [

  CallModel(
      name: "karan Thakur",
      time: "12 October,   10:05am",
      callType: CallModel.callReceived,
      avatarUrl:
      "https://images.pexels.com/photos/941693/pexels-photo-941693.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  CallModel(
      name: " Sumit mandloyi",
      time: "18 October,   2:15pm",
      callType: CallModel.callMissed,

      avatarUrl:
      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),

  CallModel(
      name: "Monika Sharma ",
      time: "29 September,   01:15pm",
      callType: CallModel.callReceived,

      avatarUrl:
      "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  CallModel(
      name: " kartik aryan",
      time: "02 October,   11:15am",
      callType: CallModel.callMissed,

      avatarUrl:
      "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  CallModel(
      name: " aryan khan",
      time: "18 July,   11:15",
      callType: CallModel.callReceived,

      avatarUrl:
      "https://images.pexels.com/photos/3777952/pexels-photo-3777952.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
];
