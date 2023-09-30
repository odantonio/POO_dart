/* 
* classe Person
* Propriedades: as variáveis estabelecidas int classe 
* Null Safety CHECK -> podemos iniciar a variável como String? permitindo que seja nula ou com valor "" (vazio, somente strings aceitam). Depende do caso.*/
class Person {
  String _firstName =
      ""; // <- em dart, variáveis iniciadas com _ são "privadas".
  String _surName = "";
  String _docType = "";
  String _docNumber = "";
  String _phoneNumber = "";
  List<PersonAddress>? address; // <- pode ser nulo

  //Setter
  void setFirstName(String name) {
    _firstName = name;
  }

  void setSurName(String surName) {
    _surName = surName;
  }

  void setDocType(String docType) {
    _docType = docType;
  }

  void setDocNumber(String docNumber) {
    _docNumber = docNumber;
  }

  void setPhoneNumber(String phone) {
    _phoneNumber = phone;
  }

  //Getter
  String getFirstName() {
    return _firstName;
  }

  String getSurName() {
    return _surName;
  }

  String getDocType() {
    return _docType;
  }

  String getDocNumber() {
    return _docNumber;
  }

  String getPhoneNumber() {
    return _phoneNumber;
  }
}

class PersonAddress {
  String _addressName = "";
  String _addressNumber = "";
  String _addressNeighbourhood = "";
  String _addressZipCode = "";

  void setAddressName(String addressName) {
    _addressName = addressName;
  }

  void setAddressNumber(String addressNumber) {
    _addressNumber = addressNumber;
  }

  void setAddressNeighbourhood(String neighbourhood) {
    _addressNeighbourhood = neighbourhood;
  }

  void setAddressZipCode(String zipCode) {
    _addressZipCode = zipCode;
  }

  String getAddressName() {
    return _addressName;
  }

  String getAddressNumber() {
    return _addressNumber;
  }

  String getAddressNeighbourhood() {
    return _addressNeighbourhood;
  }

  String getAddressZipCode() {
    return _addressZipCode;
  }
}
