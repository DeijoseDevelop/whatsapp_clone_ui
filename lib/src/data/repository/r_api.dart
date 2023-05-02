import "package:whatsapp_clone_ui/src/data/repository/repository.dart";

const List<Map<String, String>> data = [
  {
    "imageUrl": "assets/1.jpg",
    "user": "Shervin",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "12/3/22",
  },
  {
    "imageUrl": "assets/2.jpg",
    "user": "Ava",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "03/2/22",
  },
  {
    "imageUrl": "assets/3.jpg",
    "user": "Arman",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "23/8/22",
  },
  {
    "imageUrl": "assets/4.jpg",
    "user": "Alireza",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "18/6/22",
  },
  {
    "imageUrl": "assets/9.jpg",
    "user": "Amir Mahdi",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "09/11/22",
  },
  {
    "imageUrl": "assets/5.jpg",
    "user": "Sorena",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "08/6/22",
  },
  {
    "imageUrl": "assets/6.jpg",
    "user": "Aria",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "29/6/22",
  },
  {
    "imageUrl": "assets/7.jpg",
    "user": "Sobhan",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "25/6/22",
  },
  {
    "imageUrl": "assets/8.jpg",
    "user": "Danial",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "22/3/22",
  },
  {
    "imageUrl": "assets/1.jpg",
    "user": "Shervin",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "12/3/22",
  },
  {
    "imageUrl": "assets/2.jpg",
    "user": "Ava",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "03/2/22",
  },
  {
    "imageUrl": "assets/3.jpg",
    "user": "Arman",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "23/8/22",
  },
  {
    "imageUrl": "assets/4.jpg",
    "user": "Alireza",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "18/6/22",
  },
  {
    "imageUrl": "assets/9.jpg",
    "user": "Amir Mahdi",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "09/11/22",
  },
  {
    "imageUrl": "assets/5.jpg",
    "user": "Sorena",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "08/6/22",
  },
  {
    "imageUrl": "assets/6.jpg",
    "user": "Aria",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "29/6/22",
  },
  {
    "imageUrl": "assets/7.jpg",
    "user": "Sobhan",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "25/6/22",
  },
  {
    "imageUrl": "assets/8.jpg",
    "user": "Danial",
    "briefChat": "Lorem ipsum dolor sit amet",
    "date": "22/3/22",
  },
];

class ApiRepository extends BaseRepository {
  Future<Map<String, dynamic>> getContacts() async {
    return Future.delayed(const Duration(seconds: 3), () {
      return {
        "count": data.length,
        "data": data,
        "status": 200,
      };
    });
  }
}
