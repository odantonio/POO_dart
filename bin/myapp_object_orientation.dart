import 'package:myapp_object_orientation/classes/person.dart';

void main(List<String> arguments) {
  var p1 = new Person();
  var pa1 = new PersonAddress();

  p1.setFirstName("Olavo");
  p1.setSurName("D'Antonio");
  pa1.setAddressName("Rua Padre Anchieta");
  pa1.setAddressNumber("14-99");
  pa1.setAddressNeighbourhood("Vila Seabra");
  pa1.setAddressZipCode("17.060-400");

  print("${p1.getFirstName()} ${p1.getSurName()}");
  print(
      "${pa1.getAddressName()} ${pa1.getAddressNumber()} - ${pa1.getAddressNeighbourhood()}, CEP: ${pa1.getAddressZipCode()}.");
}
