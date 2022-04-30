import 'client.dart';

class ClientDb{

  late Client _client;
  void storeClient(Client client){
  _client = client;
  }

  Client get getClient => _client;
}