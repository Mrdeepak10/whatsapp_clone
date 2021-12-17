
class StatusModel {
  final String name;
  final String time;
  final String avatarUrl;

  StatusModel({
    required this.name,
    required this.time,
    required this.avatarUrl,
  });
}

List<StatusModel> statusData = [
  StatusModel(
      name: "karan Thakur",
      time: "10:05am",
      avatarUrl:
          "https://images.pexels.com/photos/941693/pexels-photo-941693.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  StatusModel(
      name: " Sumit mandloyi",
      time: "12:15pm",
      avatarUrl:
          "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
  StatusModel(
      name: "Monika Sharma ",
      time: "01:15pm",
      avatarUrl:
          "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  StatusModel(
      name: " kartik aryan",
      time: "11:15am",
      avatarUrl:
          "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  StatusModel(
      name: " aryan khan",
      time: "11:15",
      avatarUrl:
          "https://images.pexels.com/photos/3777952/pexels-photo-3777952.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
];
