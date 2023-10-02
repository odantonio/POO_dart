import 'package:myapp_object_orientation/classes/person.dart';

class NaturalPerson extends Person {
  String _surName = "";
  String _docType = "";
  String _docNumber = "";

  NaturalPerson(
      String nome,
      String sobrenome,
      String telefone,
      String nomeRua,
      String numero,
      String bairro,
      String cep,
      String tipoDoc,
      String numeroDoc)
      : super(nome, telefone, nomeRua, numero, bairro, cep) {
    _docType = tipoDoc;
    _docNumber = numeroDoc;
    _surName = sobrenome;
  }
  void setSurName(String surName) {
    _surName = surName;
  }

  String getSurName() {
    return _surName;
  }

  void setDocType(String docType) {
    _docType = docType;
  }

  void setDocNumber(String docNumber) {
    _docNumber = docNumber;
  }

  String getDocType() {
    return _docType;
  }

  String getDocNumber() {
    return _docNumber;
  }

  @override
  String toString() {
    return {
      "Nome": getFirstName(),
      "Sobrenome": _surName,
      "Tipo de Documento": _docType,
      "Número do Documento": _docNumber,
      "Telefone": getPhoneNumber(),
      "Endereço": getAddressName(),
      "Número": getAddressNumber(),
      "Bairro": getAddressNeighbourhood(),
      "CEP": getAddressZipCode()
    }.toString();
  }
}
