class Contact {
  final String imageUrl, user, briefChat, date;

  Contact({
    required this.imageUrl,
    required this.user,
    required this.briefChat,
    required this.date,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      imageUrl: json['imageUrl'],
      user: json['user'],
      briefChat: json['briefChat'],
      date: json['date'],
    );
  }

  static List<Contact> contactsFromJson(List<Map<String, dynamic>> json) {
    return List<Contact>.from(
      json.map(
        (x) => Contact.fromJson(x),
      ),
    );
  }
}
