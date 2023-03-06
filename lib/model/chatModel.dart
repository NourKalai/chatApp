// ignore_for_file: file_names

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final bool seen, online;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    required this.seen,
    required this.online, 
  });
}

List<ChatModel> dummyData = [
  // ignore: unnecessary_new
  new ChatModel(
    name: "Stephen",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: 'assets/images/image1.jpg',
    seen: false,
    online: true,
  ),
  ChatModel(
    name: "Brian",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: 'assets/images/image2.jpg',
    seen: true,
    online: false,
  ),
  ChatModel(
    name: "Danial",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: 'assets/images/image3.jpg',
    seen: true,
    online: true,
  ),
  ChatModel(
    name: "Cloie",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "assets/images/image4.jpg",
    seen: true,
    online: false,
  ),
  ChatModel(
    name: "Randale",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: 'assets/images/image5.jpg',
    seen: false,
    online: false,
  ),
  ChatModel(
    name: "Monica",
    message: 'Hey Flutter, You are amazing !',
    time: "15:30",
    avatarUrl: 'assets/images/image6.jpg',
    seen: true,
    online: false,
  ),
  ChatModel(
    name: "Henley",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: 'assets/images/image7.jpg',
    seen: true,
    online: true,
  ),
  ChatModel(
    name: "Morgan",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: 'assets/images/image8.jpg',
    seen: true,
    online: false,
  ),
  ChatModel(
    name: "Donathan",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: 'assets/images/image9.jpg',
    seen: true,
    online: true,
  ),
  ChatModel(
    name: "Jamson",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: 'assets/images/image10.jpg',
    seen: true,
    online: false,
  ),
  ChatModel(
    name: "Harry",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "assets/images/image11.jpg",
    seen: true,
    online: false,
  ),
];
