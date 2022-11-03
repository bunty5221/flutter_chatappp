class Chatmodel {
  final String name;
  final String message;
  final String time;
  final String avatar;

  Chatmodel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatar});
}

List<Chatmodel> chatData = [
  Chatmodel(
    name: "Amit",
    message: "Hello kaise ho",
    time: "15:30",
    avatar: "images/amit.jpg",
  ),
   Chatmodel(
    name: "sonu",
    message: "kaam karo",
    time: '11:30',
    avatar: "images/sonu.jpg",
  ),

    Chatmodel(
    name: "rakesh",
    message: "good morning",
    time: '11:30',
    avatar: "images/images.jpg",
  ),
];
