import 'package:firebase_teste_1/database/databasse_controller.dart';

void main(List<String> arguments) {
  var usr = {
    'name': 'Vitor',
    'age': 27,
    'height': 1.85,
    'weight': 65.3,
  };
  var teste = Register();
  print(teste.post(path: '/user.json', usrPayload: usr));
}
