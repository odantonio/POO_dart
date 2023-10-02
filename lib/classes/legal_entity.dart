import 'package:myapp_object_orientation/classes/person.dart';

class LegalEntity extends Person {
  String _razaoSocial = "";
  String _docNumber = "";

  LegalEntity(String nome, String razaoSocial, String telefone, String nomeRua,
      String numero, String bairro, String cep, String numeroDoc)
      : super(nome, telefone, nomeRua, numero, bairro, cep) {
    _razaoSocial = razaoSocial;
    _docNumber = numeroDoc;
  }

  void setRazaoSocial(String razaoSocial) {
    _razaoSocial = razaoSocial;
  }

  void setDocNumber(String docNumber) {
    _docNumber = docNumber;
  }

  String getRazaoSocial() {
    return _razaoSocial;
  }

  String getDocNumber() {
    return _docNumber;
  }

  @override
  String toString() {
    return {
      "Nome": getFirstName(),
      "Razão Social": _razaoSocial,
      "Tipo de Documento": "CNPJ",
      "Número do Documento": _docNumber,
      "Telefone": getPhoneNumber(),
      "Endereço": getAddressName(),
      "Número": getAddressNumber(),
      "Bairro": getAddressNeighbourhood(),
      "CEP": getAddressZipCode()
    }.toString();
  }
}
