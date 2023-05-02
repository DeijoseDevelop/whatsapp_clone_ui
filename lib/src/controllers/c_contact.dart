import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/src/data/models/models.dart';
import 'package:whatsapp_clone_ui/src/data/use_cases/use_cases.dart';

class ContactController extends ChangeNotifier {
  List<Contact> contacts = [];

  GetContactsUseCase getContactsUseCase;
  ContactController({
    required this.getContactsUseCase,
  });

  void getContacts() async {
    try {
      List<Contact> response = await getContactsUseCase.call();
      contacts = response;
    } catch (e) {
      debugPrint(e.toString());
    }
    notifyListeners();
  }
}
