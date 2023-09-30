/* 
* classe Person
* Propriedades: as variáveis estabelecidas int classe 
* Null Safety CHECK -> podemos iniciar a variável como String? permitindo que seja nula ou com valor "" (vazio, somente strings aceitam). Depende do caso.*/
class Person {
  String firstName = "";
  String surName = "";
  String docType = "";
  String docNumber = "";
  String phoneNumber = "";
  List<PersonAddress>? address; // <- pode ser nulo
}

class PersonAddress {
  String addressName = "";
  String addressNumber = "";
  String addressNeighbourhood = "";
  String addressZipCode = "";
}
