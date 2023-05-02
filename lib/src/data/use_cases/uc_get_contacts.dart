import 'package:whatsapp_clone_ui/src/data/models/models.dart';
import 'package:whatsapp_clone_ui/src/data/repository/repository.dart';
import 'package:whatsapp_clone_ui/src/data/use_cases/use_cases.dart';

class GetContactsUseCase extends UseCaseNoParams<List<Contact>> {
  ApiRepository repository;
  GetContactsUseCase({required this.repository});

  @override
  Future<List<Contact>> call() async {
    Map<String, dynamic> response = await repository.getContacts();

    switch (response['status']) {
      case 200:
        List<Contact> contacts = Contact.contactsFromJson(response['data']);
        return contacts;
      default:
        throw UseCaseException("Error");
    }
  }
}
