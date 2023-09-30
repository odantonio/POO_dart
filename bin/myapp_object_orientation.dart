import 'package:myapp_object_orientation/classes/person.dart';

void main(List<String> arguments) {
  var p1 = new Person();
  var pa1 = new PersonAddress();

  p1.firstName = "Olavo";
  p1.surName = "D'Antonio";
  pa1.addressName = "Rua Padre Anchieta";
  pa1.addressNumber = "14-99";
  pa1.addressNeighbourhood = "Vila Seabra";
  pa1.addressZipCode = "17.060-400";

  print("${p1.firstName} " + "${p1.surName}");
  print(
      "${pa1.addressName} ${pa1.addressNumber}, ${pa1.addressNeighbourhood}, CEP ${pa1.addressZipCode}.");
}
